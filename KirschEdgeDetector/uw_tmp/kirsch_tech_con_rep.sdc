###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name use_dffenable -value "0" -net -type default state(2) -design gatelevel 
set_attribute -name use_dffenable -value "0" -net -type default state(1) -design gatelevel 
set_attribute -name use_dffenable -value "0" -net -type default state(0) -design gatelevel 
set_attribute -name MAX_FANOUT -value "1000" -net validBit(7)_repl -design gatelevel 
set_attribute -name MAX_FANOUT -value "1000" -net validBit(3)_repl -design gatelevel 
set_attribute -name MAX_FANOUT -value "1000" -net validBit(2)_repl -design gatelevel 
set_attribute -name MAX_FANOUT -value "1000" -net validBit(1)_repl -design gatelevel 
set_attribute -name MAX_FANOUT -value "1000" -net validBit(0)_repl -design gatelevel 
set_attribute -name MAX_FANOUT -value "1000" -net state(1)_repl -design gatelevel 
set_attribute -name MAX_FANOUT -value "1000" -net state(0)_repl -design gatelevel 
set_attribute -name INFF -value "FALSE" -port -type STRING i_clock -design gatelevel 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default Generate_mem_0_u_mem0_mem -design gatelevel 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default Generate_mem_1_u_mem0_mem -design gatelevel 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default Generate_mem_2_u_mem0_mem -design gatelevel 
set_attribute -name extended_lut -value "on" -instance -type STRING ix20419z37204 -design gatelevel 
set_attribute -name extended_lut -value "on" -instance -type STRING ix20419z37202 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance r17_sub13_10i1/ix97_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance r17_sub13_10i1/ix86_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance r17_sub13_10i1/ix75_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance r17_sub13_10i1/ix64_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance r17_sub13_10i1/ix53_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance r17_sub13_10i1/ix174_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance r17_sub13_10i1/ix163_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance r17_sub13_10i1/ix152_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance r17_sub13_10i1/ix141_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance r17_sub13_10i1/ix130_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance r17_sub13_10i1/ix119_dup_0 -design gatelevel 
set_attribute -name shared_arith -value "on" -instance r17_sub13_10i1/ix108_dup_0 -design gatelevel 

set_attribute -name lpm_hint -value "UNUSED" -instance -type STRING Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name intended_device_family -value "Stratix" -instance -type STRING Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name maximum_depth -value "0" -instance -type INTEGER Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name init_file_layout -value "UNUSED" -instance -type STRING Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name init_file -value "UNUSED" -instance -type STRING Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name ram_block_type -value "AUTO" -instance -type STRING Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name read_during_write_mode_mixed_ports -value "DONT_CARE" -instance -type STRING Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name byte_size -value "8" -instance -type INTEGER Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name address_aclr_b -value "NONE" -instance -type STRING Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name width_byteena_b -value "1" -instance -type INTEGER Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name byteena_aclr_b -value "NONE" -instance -type STRING Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name wrcontrol_aclr_b -value "NONE" -instance -type STRING Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name indata_aclr_b -value "NONE" -instance -type STRING Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name byteena_reg_b -value "CLOCK1" -instance -type STRING Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name wrcontrol_wraddress_reg_b -value "CLOCK1" -instance -type STRING Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name indata_reg_b -value "CLOCK1" -instance -type STRING Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name rdcontrol_aclr_b -value "NONE" -instance -type STRING Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name outdata_aclr_b -value "NONE" -instance -type STRING Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name outdata_reg_b -value "UNREGISTERED" -instance -type STRING Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name address_reg_b -value "CLOCK1" -instance -type STRING Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name rdcontrol_reg_b -value "CLOCK1" -instance -type STRING Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name numwords_b -value "256" -instance -type INTEGER Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name widthad_b -value "8" -instance -type INTEGER Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name width_b -value "8" -instance -type INTEGER Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name width_byteena_a -value "1" -instance -type INTEGER Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name byteena_aclr_a -value "NONE" -instance -type STRING Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name wrcontrol_aclr_a -value "NONE" -instance -type STRING Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name indata_aclr_a -value "NONE" -instance -type STRING Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name outdata_aclr_a -value "NONE" -instance -type STRING Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name address_aclr_a -value "NONE" -instance -type STRING Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name outdata_reg_a -value "UNREGISTERED" -instance -type STRING Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name numwords_a -value "256" -instance -type INTEGER Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name widthad_a -value "8" -instance -type INTEGER Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 
set_attribute -name width_a -value "8" -instance -type INTEGER Generate_mem_0_u_mem0_mem/ix64056z29481 -design gatelevel 

set_attribute -name lpm_hint -value "UNUSED" -instance -type STRING Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name intended_device_family -value "Stratix" -instance -type STRING Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name maximum_depth -value "0" -instance -type INTEGER Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name init_file_layout -value "UNUSED" -instance -type STRING Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name init_file -value "UNUSED" -instance -type STRING Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name ram_block_type -value "AUTO" -instance -type STRING Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name read_during_write_mode_mixed_ports -value "DONT_CARE" -instance -type STRING Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name byte_size -value "8" -instance -type INTEGER Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name address_aclr_b -value "NONE" -instance -type STRING Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name width_byteena_b -value "1" -instance -type INTEGER Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name byteena_aclr_b -value "NONE" -instance -type STRING Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name wrcontrol_aclr_b -value "NONE" -instance -type STRING Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name indata_aclr_b -value "NONE" -instance -type STRING Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name byteena_reg_b -value "CLOCK1" -instance -type STRING Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name wrcontrol_wraddress_reg_b -value "CLOCK1" -instance -type STRING Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name indata_reg_b -value "CLOCK1" -instance -type STRING Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name rdcontrol_aclr_b -value "NONE" -instance -type STRING Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name outdata_aclr_b -value "NONE" -instance -type STRING Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name outdata_reg_b -value "UNREGISTERED" -instance -type STRING Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name address_reg_b -value "CLOCK1" -instance -type STRING Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name rdcontrol_reg_b -value "CLOCK1" -instance -type STRING Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name numwords_b -value "256" -instance -type INTEGER Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name widthad_b -value "8" -instance -type INTEGER Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name width_b -value "8" -instance -type INTEGER Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name width_byteena_a -value "1" -instance -type INTEGER Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name byteena_aclr_a -value "NONE" -instance -type STRING Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name wrcontrol_aclr_a -value "NONE" -instance -type STRING Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name indata_aclr_a -value "NONE" -instance -type STRING Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name outdata_aclr_a -value "NONE" -instance -type STRING Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name address_aclr_a -value "NONE" -instance -type STRING Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name outdata_reg_a -value "UNREGISTERED" -instance -type STRING Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name numwords_a -value "256" -instance -type INTEGER Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name widthad_a -value "8" -instance -type INTEGER Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 
set_attribute -name width_a -value "8" -instance -type INTEGER Generate_mem_1_u_mem0_mem/ix64056z29482 -design gatelevel 

set_attribute -name lpm_hint -value "UNUSED" -instance -type STRING Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name intended_device_family -value "Stratix" -instance -type STRING Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name maximum_depth -value "0" -instance -type INTEGER Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name init_file_layout -value "UNUSED" -instance -type STRING Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name init_file -value "UNUSED" -instance -type STRING Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name ram_block_type -value "AUTO" -instance -type STRING Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name read_during_write_mode_mixed_ports -value "DONT_CARE" -instance -type STRING Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name byte_size -value "8" -instance -type INTEGER Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name address_aclr_b -value "NONE" -instance -type STRING Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name width_byteena_b -value "1" -instance -type INTEGER Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name byteena_aclr_b -value "NONE" -instance -type STRING Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name wrcontrol_aclr_b -value "NONE" -instance -type STRING Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name indata_aclr_b -value "NONE" -instance -type STRING Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name byteena_reg_b -value "CLOCK1" -instance -type STRING Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name wrcontrol_wraddress_reg_b -value "CLOCK1" -instance -type STRING Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name indata_reg_b -value "CLOCK1" -instance -type STRING Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name rdcontrol_aclr_b -value "NONE" -instance -type STRING Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name outdata_aclr_b -value "NONE" -instance -type STRING Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name outdata_reg_b -value "UNREGISTERED" -instance -type STRING Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name address_reg_b -value "CLOCK1" -instance -type STRING Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name rdcontrol_reg_b -value "CLOCK1" -instance -type STRING Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name numwords_b -value "256" -instance -type INTEGER Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name widthad_b -value "8" -instance -type INTEGER Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name width_b -value "8" -instance -type INTEGER Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name width_byteena_a -value "1" -instance -type INTEGER Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name byteena_aclr_a -value "NONE" -instance -type STRING Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name wrcontrol_aclr_a -value "NONE" -instance -type STRING Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name indata_aclr_a -value "NONE" -instance -type STRING Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name outdata_aclr_a -value "NONE" -instance -type STRING Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name address_aclr_a -value "NONE" -instance -type STRING Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name outdata_reg_a -value "UNREGISTERED" -instance -type STRING Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name numwords_a -value "256" -instance -type INTEGER Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name widthad_a -value "8" -instance -type INTEGER Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 
set_attribute -name width_a -value "8" -instance -type INTEGER Generate_mem_2_u_mem0_mem/ix64056z29483 -design gatelevel 



##################
# Clocks
##################
create_clock { i_clock } -domain ClockDomain0 -name i_clock -period 2.000000 -waveform { 0.000000 1.000000 } -design gatelevel 

