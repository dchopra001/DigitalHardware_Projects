###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name use_dffenable -value "0" -net -type default state(2) -design rtl 
set_attribute -name use_dffenable -value "0" -net -type default state(1) -design rtl 
set_attribute -name use_dffenable -value "0" -net -type default state(0) -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default Generate_mem_0_u_mem0/mem -design rtl 
set_attribute -name ram_processed -value "true" -instance Generate_mem_0_u_mem0/mem/mem -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default Generate_mem_0_u_mem0/mem/mem -design rtl 


set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default Generate_mem_1_u_mem0/mem -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default Generate_mem_1_u_mem0/mem/mem -design rtl 
set_attribute -name ram_processed -value "true" -instance Generate_mem_1_u_mem0/mem/mem -design rtl 


set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default Generate_mem_2_u_mem0/mem -design rtl 
set_attribute -name ram_processed -value "true" -instance Generate_mem_2_u_mem0/mem/mem -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default Generate_mem_2_u_mem0/mem/mem -design rtl 



##################
# Clocks
##################
create_clock { i_clock } -domain ClockDomain0 -name i_clock -period 2.000000 -waveform { 0.000000 1.000000 } -design rtl 

