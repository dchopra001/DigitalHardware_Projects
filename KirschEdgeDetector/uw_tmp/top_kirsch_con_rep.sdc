###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/Generate_mem_0_u_mem0/mem -design rtl 
set_attribute -name ram_processed -value "true" -instance u_kirsch/Generate_mem_0_u_mem0/mem/mem -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/Generate_mem_0_u_mem0/mem/mem -design rtl 


set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/Generate_mem_1_u_mem0/mem -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/Generate_mem_1_u_mem0/mem/mem -design rtl 
set_attribute -name ram_processed -value "true" -instance u_kirsch/Generate_mem_1_u_mem0/mem/mem -design rtl 


set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/Generate_mem_2_u_mem0/mem -design rtl 
set_attribute -name ram_processed -value "true" -instance u_kirsch/Generate_mem_2_u_mem0/mem/mem -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/Generate_mem_2_u_mem0/mem/mem -design rtl 



##################
# Clocks
##################
create_clock { clk } -domain ClockDomain0 -name clk -period 4.000000 -waveform { 0.000000 2.000000 } -design rtl 

