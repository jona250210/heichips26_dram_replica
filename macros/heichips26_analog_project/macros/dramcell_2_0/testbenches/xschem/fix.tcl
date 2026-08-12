# Load the schematic
xschem load inverter_tb_tran.sch

# Force netlist generation to trigger errors
# The 'catch' command prevents the script from crashing on error, allowing us to see the message
if {[catch {xschem netlist} result]} {
    puts "ERROR DETECTED: $result"
} else {
    puts "Netlist generation successful (no critical overlaps found)."
}

# Explicitly print dangling nets (this command usually returns a list we can print)
set dangling [xschem find dangling_nets]
if {$dangling != ""} {
    puts "WARNING: Dangling nets found: $dangling"
}

exit
