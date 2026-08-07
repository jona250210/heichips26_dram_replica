// SPDX-FileCopyrightText: © 2026 XXX Authors
// SPDX-License-Identifier: Apache-2.0

// Adapted from the Tiny Tapeout template

`default_nettype none

module heichips26_digital_project (
`ifdef USE_POWER_PINS
    inout  wire VPWR,
    inout  wire VGND,
`endif
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    localparam logic CMD_WRITE = 1'b1;
    localparam logic CMD_READ = 1'b0;

    localparam int unsigned CLK_FREQ = 1_000_000; // [Hz]
    localparam int unsigned FACTOR = 1_000_000;

    // todo: values
    localparam int unsigned REF_DELAY = 2000; // [us]
    localparam int unsigned READ_DELAY = 200; // [us]
    localparam int unsigned WRITE_DELAY = 200; // [us]

    localparam int unsigned REF_CYCLES = REF_DELAY * CLK_FREQ / FACTOR;
    localparam int unsigned READ_CYCLES = READ_DELAY * CLK_FREQ / FACTOR;
    localparam int unsigned TOTAL_WRITE_CYCLES = WRITE_DELAY * CLK_FREQ / FACTOR;
    localparam int unsigned WRITE_CYCLES = TOTAL_WRITE_CYCLES - READ_CYCLES; // write cycles without read

    localparam int unsigned COUNTER_WIDTH = $clog2(READ_CYCLES); // todo: assign largerst value here
    localparam int unsigned REF_COUNTER_WIDTH = $clog2(REF_CYCLES);

    localparam int unsigned ROWS = 32; // 32 rows and columns
    localparam int unsigned COLUMNS = 32; // 32 rows and columns
    localparam int unsigned ROWS_WIDTH = $clog2(ROWS); // width of RC ($clog2() not supported)
    localparam int unsigned COLUMNS_WIDTH = $clog2(COLUMNS); // width of RC ($clog2() not supported)

    wire _unused = &{ena, ui_in[7:0], uio_in[7:0]}; // template

    // output signals
    logic d_out;
    logic busy;

    assign uo_out[0] = d_out;
    assign uo_out[1] = busy;
    assign uo_out[7:2] = 6'b0;

    // input signals
    logic d_in;
    logic rw;
    logic c_en;
    logic [ROWS_WIDTH-1:0] row;
    logic [COLUMNS_WIDTH-1:0] col;
    // use all uio_in
    assign uio_oe = 8'b0;
    // does not use uio_out
    assign uio_out = 8'b0;

    assign d_in = ui_in[5];
    assign rw = ui_in[6];
    assign c_en = ui_in[7];
    //assign row = ui_in[ROWS_WIDTH-1:0]; // row also driven by ref_row_counter
    assign col = uio_in[COLUMNS_WIDTH-1:0];


    // states
    typedef enum logic [2:0] {IDLE, READ, W_READ, WRITE, REFA} state;
    state state_d;
    state state_q;

    logic [ROWS-1:0] w_row_select; // sw lines
    logic [ROWS-1:0] r_row_select; // sr lines
    logic [COLUMNS-1:0] pre_row;  // data out from DRAM-cells
    assign pre_row = 'b0; // todo: assigned due to warning / toolchain fail
    logic [COLUMNS-1:0] read_cols; 



    logic [COUNTER_WIDTH-1:0] counter; // read/write operation delay
    logic done;
    logic [REF_COUNTER_WIDTH-1:0] ref_counter; // count to next refresh
    logic [ROWS_WIDTH-1:0] ref_row_counter; // iterate over rows during refresh
    logic [COUNTER_WIDTH-1:0] to;

    logic need_refresh;

    //logic rw;
    //logic en;
    localparam int unsigned REF_AT = REF_CYCLES - TOTAL_WRITE_CYCLES;
    always_comb begin
        need_refresh = 1'b0;
        if ((ref_counter > REF_AT[REF_COUNTER_WIDTH-1:0]) && state_q == IDLE) begin
            need_refresh = 1'b1;
        end
    end

    assign done = counter == to;

    always_comb begin
        r_row_select = {(ROWS){1'b1}};
        w_row_select = {(ROWS){1'b1}};
        read_cols = {(COLUMNS){1'b1}};

        if (state_q == READ) begin
            for (int unsigned i = 0; i < ROWS; i++) begin
                if (i[ROWS_WIDTH-1:0] == row) begin
                    r_row_select[i] = 1'b0;
                end
            end
        end

        if (state_q == W_READ || state_q == WRITE) begin
            for (int unsigned i = 0; i < ROWS; i++) begin
                if (i[ROWS_WIDTH-1:0] == row) begin
                    w_row_select[i] = 1'b0;
                end
            end
        end

        if (state_q == W_READ || state_q == WRITE) begin
            for (int unsigned i = 0; i < COLUMNS; i++) begin
                if (i[COLUMNS_WIDTH-1:0] == uio_in[COLUMNS_WIDTH-1:0]) begin
                    
                end
            end
        end

        d_out = 1'b0;
        for (int unsigned i = 0; i < COLUMNS; i++) begin
            if (i[COLUMNS_WIDTH-1:0] == uio_in[COLUMNS_WIDTH-1:0]) begin
                d_out = pre_row[i];
            end
        end
    end

    always_ff @( posedge clk ) begin
        if (!rst_n) begin
            state_q <= IDLE;
        end else begin
            state_q <= state_d;
        end
    end

    always_comb begin
        if (need_refresh) begin
            state_d = REFA;
        end else begin
            case (state_q)
                IDLE: begin
                    if (c_en && rw == CMD_WRITE) begin
                        state_d = W_READ;
                    end else if (c_en && rw == CMD_READ) begin
                        state_d = READ;
                    end else begin
                        state_d = IDLE;
                    end
                end
                READ: begin
                    if (done) begin
                        state_d = IDLE;
                    end else begin
                        state_d = READ;
                    end
                end
                W_READ: begin
                    if (done) begin
                        state_d = WRITE;
                    end else begin
                        state_d = W_READ;
                    end
                end
                WRITE: begin
                    if (done) begin
                        state_d = IDLE;
                    end else begin
                        state_d = WRITE;
                    end
                end
                REFA: begin
                    if ((ref_row_counter == (ROWS-1)) && done) begin
                        state_d = IDLE;
                    end else begin
                        state_d = REFA;
                    end
                end
                default: begin
                    state_d = IDLE;
                end
            endcase
        end
    end

    always_comb begin
        case (state_q)
            IDLE: begin
                to = 'b0;
            end
            READ, W_READ: begin
                to = READ_CYCLES - 1;
            end
            WRITE: begin
                to = WRITE_CYCLES - 1;
            end
            REFA: begin
                to = REF_CYCLES - 1;
            end
            default: begin
                to = 0;
            end
        endcase
    end
    
    always_ff @( posedge clk ) begin
        if (!rst_n) begin
            counter <= 'b0;
        end else begin
            if (counter == to || state_q == IDLE || state_q == REFA) begin
                counter <= 'b0;
            end else begin
                counter <= counter + 1;
            end
        end
    end

    always_ff @( posedge clk ) begin
        if (!rst_n) begin
            ref_row_counter <= 'b0;
        end else begin
            if (ref_row_counter == {(ROWS_WIDTH){1'b1}} || state_q != REFA) begin
                ref_row_counter <= 'b0;
            end else if (counter == to) begin
                ref_row_counter <= ref_row_counter + 1;
            end
        end
    end

    always_ff @( posedge clk ) begin
        if (!rst_n || state_q == REFA) begin
            ref_counter <= 'b0;
        end else begin
            ref_counter <= ref_counter + 1;
        end
    end

    // assign refresh row
    always_comb begin
        if (state_q == REFA) begin
            row = ui_in[ROWS_WIDTH-1:0];
        end else begin
            row = ref_row_counter;
        end
    end

    assign busy = !(state_q == IDLE || state_q == REFA);

endmodule
