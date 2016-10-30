//
// Verilog description for cell top_kirsch, 
// 07/23/14 13:18:17
//
// Precision RTL Synthesis, 2008a.47//


module top_kirsch ( nrst, clk, rxflex, txflex, o_sevenseg, o_mode, o_nrst, 
                    debug_key, debug_switch, debug_led_red, debug_led_grn, 
                    debug_sevenseg_0, debug_sevenseg_1, debug_sevenseg_2, 
                    debug_sevenseg_3, debug_sevenseg_4, debug_sevenseg_5 ) ;

    input nrst ;
    input clk ;
    input rxflex ;
    output txflex ;
    output [15:0]o_sevenseg ;
    output [1:0]o_mode ;
    output o_nrst ;
    input [3:1]debug_key ;
    input [17:0]debug_switch ;
    output [16:0]debug_led_red ;
    output [5:0]debug_led_grn ;
    output [7:0]debug_sevenseg_0 ;
    output [7:0]debug_sevenseg_1 ;
    output [7:0]debug_sevenseg_2 ;
    output [7:0]debug_sevenseg_3 ;
    output [7:0]debug_sevenseg_4 ;
    output [7:0]debug_sevenseg_5 ;

    wire [1:0]o_mode_dup0;
    wire pixavail;
    wire [7:0]pixel;
    wire o_valid, kirschout;
    wire [2:0]dir;
    wire [7:0]rowcount;
    wire nrst_int, clk_int, rxflex_int, o_nrst_dup0, debug_num_0_0_, 
         o_sevenseg_dup0_7_, nx59584z1, nx60581z1, nx61578z1, nx63572z1, 
         nx25683z1, nx26680z1, nx27677z1, nx29671z1, nx57590z1, nx58587z1, 
         nx62575z1, nx30z1, nx1027z1, nx28674z1, Tx_Reg_14n6ss1_0__dup_4, 
         NOT_rtlcn2_dup_5, nx41851z1, nx42848z1, nx43845z1, nx44842z1, nx45839z1, 
         nx46836z1, nx47833z1, nx49827z1, nx50824z1, nx62540z1, nx63537z1, 
         nx64534z1, nx65531z1, nx992z1, nx21351z1, nx21351z2, nx35935z1;
    wire [1582:0] xmplr_dummy ;




    uw_uart u_uw_uart (.clk (clk_int), .rst (o_nrst_dup0), .kirschout (kirschout
            ), .kirschdir ({dir[2],dir[1],dir[0]}), .o_valid (o_valid), .i_mode (
            {o_mode_dup0[1],o_mode_dup0[0]}), .datain ({pixel[7],pixel[6],
            pixel[5],pixel[4],pixel[3],pixel[2],pixel[1],pixel[0]}), .o_pixavail (
            pixavail), .rxflex (rxflex_int), .p_Tx_Reg_14n6ss1_0_ (
            Tx_Reg_14n6ss1_0__dup_4), .p_NOT_rtlcn2 (NOT_rtlcn2_dup_5), .p_nrst_int (
            nrst_int), .px538 (nx35935z1)) ;
    kirsch_notri u_kirsch (.p_o_mode ({o_mode_dup0[1],o_mode_dup0[0]}), .p_o_dir (
                 {dir[2],dir[1],dir[0]}), .p_i_reset (o_nrst_dup0), .p_o_edge (
                 kirschout), .p_o_valid (o_valid), .p_o_row ({rowcount[7],
                 rowcount[6],rowcount[5],rowcount[4],rowcount[3],rowcount[2],
                 rowcount[1],rowcount[0]}), .p_i_valid (pixavail), .p_i_pixel ({
                 pixel[7],pixel[6],pixel[5],pixel[4],pixel[3],pixel[2],pixel[1],
                 pixel[0]}), .p_i_clock (clk_int), .p_nrst_int (nrst_int), .px538 (
                 nx35935z1)) ;
    assign o_nrst_dup0 = ~nrst_int ;
    assign debug_num_0_0_ = 0 ;
    assign o_sevenseg_dup0_7_ = 1 ;
    assign nx21351z1 = ~nx21351z2 ;
    cycloneii_io u_kirsch_debug_led_red_triBus3_9_ (.padio (debug_led_red[9]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_9_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_9_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_9_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_9_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_9_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_8_ (.padio (debug_led_red[8]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_8_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_8_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_8_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_8_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_8_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_7_ (.padio (debug_led_red[7]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_7_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_7_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_7_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_7_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_7_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_6_ (.padio (debug_led_red[6]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_6_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_6_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_6_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_6_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_6_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_5_ (.padio (debug_led_red[5]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_5_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_5_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_5_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_5_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_5_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_4_ (.padio (debug_led_red[4]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_4_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_4_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_4_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_4_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_4_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_3_ (.padio (debug_led_red[3]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_3_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_3_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_3_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_3_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_3_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_2_ (.padio (debug_led_red[2]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_2_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_2_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_2_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_2_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_2_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_16_ (.padio (debug_led_red[16])
                 , .datain (debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_16_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_16_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_16_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_16_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_16_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_16_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_15_ (.padio (debug_led_red[15])
                 , .datain (debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_15_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_15_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_15_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_15_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_15_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_15_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_14_ (.padio (debug_led_red[14])
                 , .datain (debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_14_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_14_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_14_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_14_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_14_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_14_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_13_ (.padio (debug_led_red[13])
                 , .datain (debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_13_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_13_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_13_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_13_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_13_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_13_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_12_ (.padio (debug_led_red[12])
                 , .datain (debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_12_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_12_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_12_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_12_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_12_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_11_ (.padio (debug_led_red[11])
                 , .datain (debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_11_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_11_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_11_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_11_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_11_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_10_ (.padio (debug_led_red[10])
                 , .datain (debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_10_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_10_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_10_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_10_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_10_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_1_ (.padio (debug_led_red[1]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_1_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_1_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_1_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_1_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_1_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_red_triBus3_0_ (.padio (debug_led_red[0]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_red_triBus3_0_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_red_triBus3_0_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_0_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_0_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_red_triBus3_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_red_triBus3_0_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_grn_triBus4_5_ (.padio (debug_led_grn[5]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_grn_triBus4_5_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_5_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_5_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_5_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_5_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_grn_triBus4_4_ (.padio (debug_led_grn[4]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_grn_triBus4_4_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_4_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_4_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_4_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_4_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_grn_triBus4_3_ (.padio (debug_led_grn[3]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_grn_triBus4_3_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_3_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_3_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_3_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_3_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_grn_triBus4_2_ (.padio (debug_led_grn[2]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_grn_triBus4_2_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_2_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_2_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_2_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_2_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_grn_triBus4_1_ (.padio (debug_led_grn[1]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_grn_triBus4_1_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_1_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_1_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_1_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_1_.input_register_mode = "none";
    cycloneii_io u_kirsch_debug_led_grn_triBus4_0_ (.padio (debug_led_grn[0]), .datain (
                 debug_num_0_0_), .oe (debug_num_0_0_), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_kirsch_debug_led_grn_triBus4_0_.operation_mode = "output";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_0_.output_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_0_.tie_off_output_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_0_.oe_register_mode = "none";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam u_kirsch_debug_led_grn_triBus4_0_.input_register_mode = "none";
    cycloneii_io rxflex_ibuf (.combout (rxflex_int), .padio (rxflex), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam rxflex_ibuf.operation_mode = "input";
                 
                 defparam rxflex_ibuf.output_register_mode = "none";
                 
                 defparam rxflex_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam rxflex_ibuf.oe_register_mode = "none";
                 
                 defparam rxflex_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam rxflex_ibuf.input_register_mode = "none";
    cycloneii_lcell_ff reg_out_txflex_obuf (.regout (nx21351z2), .datain (
                       Tx_Reg_14n6ss1_0__dup_4), .sdata (1'b0), .clk (clk_int), 
                       .ena (NOT_rtlcn2_dup_5), .aclr (o_nrst_dup0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_9_ (.regout (nx50824z1), .datain (
                       nx1027z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_8_ (.regout (nx49827z1), .datain (
                       nx30z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_6_ (.regout (nx47833z1), .datain (
                       nx63572z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_5_ (.regout (nx46836z1), .datain (
                       nx62575z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_4_ (.regout (nx45839z1), .datain (
                       nx61578z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_3_ (.regout (nx44842z1), .datain (
                       nx60581z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_2_ (.regout (nx43845z1), .datain (
                       nx59584z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_14_ (.regout (nx992z1), .datain (
                       nx29671z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_13_ (.regout (nx65531z1), .datain (
                       nx28674z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_12_ (.regout (nx64534z1), .datain (
                       nx27677z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_11_ (.regout (nx63537z1), .datain (
                       nx26680z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_10_ (.regout (nx62540z1), .datain (
                       nx25683z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_1_ (.regout (nx42848z1), .datain (
                       nx58587z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_0_ (.regout (nx41851z1), .datain (
                       nx57590z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_io o_sevenseg_obuf_7_ (.padio (o_sevenseg[7]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam o_sevenseg_obuf_7_.operation_mode = "output";
                 
                 defparam o_sevenseg_obuf_7_.output_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_7_.tie_off_output_clock_enable = "false";
                 defparam o_sevenseg_obuf_7_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_7_.input_register_mode = "none";
    cycloneii_io o_sevenseg_obuf_15_ (.padio (o_sevenseg[15]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam o_sevenseg_obuf_15_.operation_mode = "output";
                 
                 defparam o_sevenseg_obuf_15_.output_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_15_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_15_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_15_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_15_.input_register_mode = "none";
    cycloneii_io o_nrst_obuf (.padio (o_nrst), .datain (o_nrst_dup0), .oe (1'b1)
                 , .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_nrst_obuf.operation_mode = "output";
                 
                 defparam o_nrst_obuf.output_register_mode = "none";
                 
                 defparam o_nrst_obuf.tie_off_output_clock_enable = "false";
                 
                 defparam o_nrst_obuf.oe_register_mode = "none";
                 
                 defparam o_nrst_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam o_nrst_obuf.input_register_mode = "none";
    cycloneii_io o_mode_obuf_1_ (.padio (o_mode[1]), .datain (o_mode_dup0[1]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_mode_obuf_1_.operation_mode = "output";
                 
                 defparam o_mode_obuf_1_.output_register_mode = "none";
                 
                 defparam o_mode_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_mode_obuf_1_.oe_register_mode = "none";
                 
                 defparam o_mode_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_mode_obuf_1_.input_register_mode = "none";
    cycloneii_io o_mode_obuf_0_ (.padio (o_mode[0]), .datain (o_mode_dup0[0]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_mode_obuf_0_.operation_mode = "output";
                 
                 defparam o_mode_obuf_0_.output_register_mode = "none";
                 
                 defparam o_mode_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_mode_obuf_0_.oe_register_mode = "none";
                 
                 defparam o_mode_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_mode_obuf_0_.input_register_mode = "none";
    cycloneii_io nrst_ibuf (.combout (nrst_int), .padio (nrst), .datain (1'b0), 
                 .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam nrst_ibuf.operation_mode = "input";
                 
                 defparam nrst_ibuf.output_register_mode = "none";
                 
                 defparam nrst_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam nrst_ibuf.oe_register_mode = "none";
                 
                 defparam nrst_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam nrst_ibuf.input_register_mode = "none";
    cycloneii_io ix21351z43919 (.padio (txflex), .datain (nx21351z1), .oe (1'b1)
                 , .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix21351z43919.operation_mode = "output";
                 
                 defparam ix21351z43919.output_register_mode = "none";
                 
                 defparam ix21351z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix21351z43919.oe_register_mode = "none";
                 
                 defparam ix21351z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix21351z43919.input_register_mode = "none";
    cycloneii_io ix992z43919 (.padio (o_sevenseg[14]), .datain (nx992z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix992z43919.operation_mode = "output";
                 
                 defparam ix992z43919.output_register_mode = "none";
                 
                 defparam ix992z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix992z43919.oe_register_mode = "none";
                 
                 defparam ix992z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix992z43919.input_register_mode = "none";
    cycloneii_io ix65531z43919 (.padio (o_sevenseg[13]), .datain (nx65531z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix65531z43919.operation_mode = "output";
                 
                 defparam ix65531z43919.output_register_mode = "none";
                 
                 defparam ix65531z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix65531z43919.oe_register_mode = "none";
                 
                 defparam ix65531z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix65531z43919.input_register_mode = "none";
    cycloneii_io ix64534z43919 (.padio (o_sevenseg[12]), .datain (nx64534z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix64534z43919.operation_mode = "output";
                 
                 defparam ix64534z43919.output_register_mode = "none";
                 
                 defparam ix64534z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix64534z43919.oe_register_mode = "none";
                 
                 defparam ix64534z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix64534z43919.input_register_mode = "none";
    cycloneii_io ix63537z43919 (.padio (o_sevenseg[11]), .datain (nx63537z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix63537z43919.operation_mode = "output";
                 
                 defparam ix63537z43919.output_register_mode = "none";
                 
                 defparam ix63537z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix63537z43919.oe_register_mode = "none";
                 
                 defparam ix63537z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix63537z43919.input_register_mode = "none";
    cycloneii_io ix62540z43919 (.padio (o_sevenseg[10]), .datain (nx62540z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix62540z43919.operation_mode = "output";
                 
                 defparam ix62540z43919.output_register_mode = "none";
                 
                 defparam ix62540z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix62540z43919.oe_register_mode = "none";
                 
                 defparam ix62540z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix62540z43919.input_register_mode = "none";
    cycloneii_io ix50824z43919 (.padio (o_sevenseg[9]), .datain (nx50824z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix50824z43919.operation_mode = "output";
                 
                 defparam ix50824z43919.output_register_mode = "none";
                 
                 defparam ix50824z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix50824z43919.oe_register_mode = "none";
                 
                 defparam ix50824z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix50824z43919.input_register_mode = "none";
    cycloneii_io ix49827z43919 (.padio (o_sevenseg[8]), .datain (nx49827z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix49827z43919.operation_mode = "output";
                 
                 defparam ix49827z43919.output_register_mode = "none";
                 
                 defparam ix49827z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix49827z43919.oe_register_mode = "none";
                 
                 defparam ix49827z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix49827z43919.input_register_mode = "none";
    cycloneii_io ix47833z43919 (.padio (o_sevenseg[6]), .datain (nx47833z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix47833z43919.operation_mode = "output";
                 
                 defparam ix47833z43919.output_register_mode = "none";
                 
                 defparam ix47833z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix47833z43919.oe_register_mode = "none";
                 
                 defparam ix47833z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix47833z43919.input_register_mode = "none";
    cycloneii_io ix46836z43919 (.padio (o_sevenseg[5]), .datain (nx46836z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix46836z43919.operation_mode = "output";
                 
                 defparam ix46836z43919.output_register_mode = "none";
                 
                 defparam ix46836z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix46836z43919.oe_register_mode = "none";
                 
                 defparam ix46836z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix46836z43919.input_register_mode = "none";
    cycloneii_io ix45839z43919 (.padio (o_sevenseg[4]), .datain (nx45839z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix45839z43919.operation_mode = "output";
                 
                 defparam ix45839z43919.output_register_mode = "none";
                 
                 defparam ix45839z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix45839z43919.oe_register_mode = "none";
                 
                 defparam ix45839z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix45839z43919.input_register_mode = "none";
    cycloneii_io ix44842z43919 (.padio (o_sevenseg[3]), .datain (nx44842z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix44842z43919.operation_mode = "output";
                 
                 defparam ix44842z43919.output_register_mode = "none";
                 
                 defparam ix44842z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix44842z43919.oe_register_mode = "none";
                 
                 defparam ix44842z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix44842z43919.input_register_mode = "none";
    cycloneii_io ix43845z43919 (.padio (o_sevenseg[2]), .datain (nx43845z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix43845z43919.operation_mode = "output";
                 
                 defparam ix43845z43919.output_register_mode = "none";
                 
                 defparam ix43845z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix43845z43919.oe_register_mode = "none";
                 
                 defparam ix43845z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix43845z43919.input_register_mode = "none";
    cycloneii_io ix42848z43919 (.padio (o_sevenseg[1]), .datain (nx42848z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix42848z43919.operation_mode = "output";
                 
                 defparam ix42848z43919.output_register_mode = "none";
                 
                 defparam ix42848z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix42848z43919.oe_register_mode = "none";
                 
                 defparam ix42848z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix42848z43919.input_register_mode = "none";
    cycloneii_io ix41851z43919 (.padio (o_sevenseg[0]), .datain (nx41851z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix41851z43919.operation_mode = "output";
                 
                 defparam ix41851z43919.output_register_mode = "none";
                 
                 defparam ix41851z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix41851z43919.oe_register_mode = "none";
                 
                 defparam ix41851z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix41851z43919.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_obuf_7_ (.padio (debug_sevenseg_5[7]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_5_obuf_7_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_obuf_6_ (.padio (debug_sevenseg_5[6]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_5_obuf_6_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_obuf_5_ (.padio (debug_sevenseg_5[5]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_5_obuf_5_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_obuf_4_ (.padio (debug_sevenseg_5[4]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_5_obuf_4_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_obuf_3_ (.padio (debug_sevenseg_5[3]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_5_obuf_3_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_obuf_2_ (.padio (debug_sevenseg_5[2]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_5_obuf_2_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_obuf_1_ (.padio (debug_sevenseg_5[1]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_5_obuf_1_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_5_obuf_0_ (.padio (debug_sevenseg_5[0]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_5_obuf_0_.operation_mode = "output";
                 
                 defparam debug_sevenseg_5_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_5_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_5_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_obuf_7_ (.padio (debug_sevenseg_4[7]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_4_obuf_7_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_obuf_6_ (.padio (debug_sevenseg_4[6]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_4_obuf_6_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_obuf_5_ (.padio (debug_sevenseg_4[5]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_4_obuf_5_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_obuf_4_ (.padio (debug_sevenseg_4[4]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_4_obuf_4_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_obuf_3_ (.padio (debug_sevenseg_4[3]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_4_obuf_3_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_obuf_2_ (.padio (debug_sevenseg_4[2]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_4_obuf_2_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_obuf_1_ (.padio (debug_sevenseg_4[1]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_4_obuf_1_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_4_obuf_0_ (.padio (debug_sevenseg_4[0]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_4_obuf_0_.operation_mode = "output";
                 
                 defparam debug_sevenseg_4_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_4_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_4_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_obuf_7_ (.padio (debug_sevenseg_3[7]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_3_obuf_7_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_obuf_6_ (.padio (debug_sevenseg_3[6]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_3_obuf_6_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_obuf_5_ (.padio (debug_sevenseg_3[5]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_3_obuf_5_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_obuf_4_ (.padio (debug_sevenseg_3[4]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_3_obuf_4_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_obuf_3_ (.padio (debug_sevenseg_3[3]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_3_obuf_3_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_obuf_2_ (.padio (debug_sevenseg_3[2]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_3_obuf_2_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_obuf_1_ (.padio (debug_sevenseg_3[1]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_3_obuf_1_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_3_obuf_0_ (.padio (debug_sevenseg_3[0]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_3_obuf_0_.operation_mode = "output";
                 
                 defparam debug_sevenseg_3_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_3_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_3_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_obuf_7_ (.padio (debug_sevenseg_2[7]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_2_obuf_7_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_obuf_6_ (.padio (debug_sevenseg_2[6]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_2_obuf_6_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_obuf_5_ (.padio (debug_sevenseg_2[5]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_2_obuf_5_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_obuf_4_ (.padio (debug_sevenseg_2[4]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_2_obuf_4_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_obuf_3_ (.padio (debug_sevenseg_2[3]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_2_obuf_3_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_obuf_2_ (.padio (debug_sevenseg_2[2]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_2_obuf_2_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_obuf_1_ (.padio (debug_sevenseg_2[1]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_2_obuf_1_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_2_obuf_0_ (.padio (debug_sevenseg_2[0]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_2_obuf_0_.operation_mode = "output";
                 
                 defparam debug_sevenseg_2_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_2_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_2_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_obuf_7_ (.padio (debug_sevenseg_1[7]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_1_obuf_7_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_obuf_6_ (.padio (debug_sevenseg_1[6]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_1_obuf_6_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_obuf_5_ (.padio (debug_sevenseg_1[5]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_1_obuf_5_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_obuf_4_ (.padio (debug_sevenseg_1[4]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_1_obuf_4_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_obuf_3_ (.padio (debug_sevenseg_1[3]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_1_obuf_3_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_obuf_2_ (.padio (debug_sevenseg_1[2]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_1_obuf_2_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_obuf_1_ (.padio (debug_sevenseg_1[1]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_1_obuf_1_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_1_obuf_0_ (.padio (debug_sevenseg_1[0]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_1_obuf_0_.operation_mode = "output";
                 
                 defparam debug_sevenseg_1_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_1_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_1_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_obuf_7_ (.padio (debug_sevenseg_0[7]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_0_obuf_7_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_obuf_6_ (.padio (debug_sevenseg_0[6]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_0_obuf_6_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_obuf_5_ (.padio (debug_sevenseg_0[5]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_0_obuf_5_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_obuf_4_ (.padio (debug_sevenseg_0[4]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_0_obuf_4_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_obuf_3_ (.padio (debug_sevenseg_0[3]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_0_obuf_3_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_obuf_2_ (.padio (debug_sevenseg_0[2]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_0_obuf_2_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_obuf_1_ (.padio (debug_sevenseg_0[1]), .datain (
                 debug_num_0_0_), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_0_obuf_1_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_sevenseg_0_obuf_0_ (.padio (debug_sevenseg_0[0]), .datain (
                 o_sevenseg_dup0_7_), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_sevenseg_0_obuf_0_.operation_mode = "output";
                 
                 defparam debug_sevenseg_0_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_sevenseg_0_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_sevenseg_0_obuf_0_.input_register_mode = "none";
    cycloneii_io clk_ibuf (.combout (clk_int), .padio (clk), .datain (1'b0), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam clk_ibuf.operation_mode = "input";
                 
                 defparam clk_ibuf.output_register_mode = "none";
                 
                 defparam clk_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam clk_ibuf.oe_register_mode = "none";
                 
                 defparam clk_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam clk_ibuf.input_register_mode = "none";
    cycloneii_lcell_comb ix28674z52923 (.combout (nx28674z1), .dataa (
                         rowcount[7]), .datab (rowcount[6]), .datac (rowcount[5]
                         ), .datad (rowcount[4]), .cin (1'b0)) ;
                         
                         defparam ix28674z52923.lut_mask = 16'ha4c8;
    cycloneii_lcell_comb ix1027z52923 (.combout (nx1027z1), .dataa (rowcount[7])
                         , .datab (rowcount[6]), .datac (rowcount[5]), .datad (
                         rowcount[4]), .cin (1'b0)) ;
                         
                         defparam ix1027z52923.lut_mask = 16'h5910;
    cycloneii_lcell_comb ix30z52923 (.combout (nx30z1), .dataa (rowcount[7]), .datab (
                         rowcount[6]), .datac (rowcount[5]), .datad (rowcount[4]
                         ), .cin (1'b0)) ;
                         
                         defparam ix30z52923.lut_mask = 16'h4109;
    cycloneii_lcell_comb ix62575z52923 (.combout (nx62575z1), .dataa (
                         rowcount[3]), .datab (rowcount[2]), .datac (rowcount[1]
                         ), .datad (rowcount[0]), .cin (1'b0)) ;
                         
                         defparam ix62575z52923.lut_mask = 16'ha4c8;
    cycloneii_lcell_comb ix58587z52923 (.combout (nx58587z1), .dataa (
                         rowcount[3]), .datab (rowcount[2]), .datac (rowcount[1]
                         ), .datad (rowcount[0]), .cin (1'b0)) ;
                         
                         defparam ix58587z52923.lut_mask = 16'h5910;
    cycloneii_lcell_comb ix57590z52923 (.combout (nx57590z1), .dataa (
                         rowcount[3]), .datab (rowcount[2]), .datac (rowcount[1]
                         ), .datad (rowcount[0]), .cin (1'b0)) ;
                         
                         defparam ix57590z52923.lut_mask = 16'h4109;
    cycloneii_lcell_comb ix29671z52923 (.combout (nx29671z1), .dataa (
                         rowcount[7]), .datab (rowcount[6]), .datac (rowcount[5]
                         ), .datad (rowcount[4]), .cin (1'b0)) ;
                         
                         defparam ix29671z52923.lut_mask = 16'h2904;
    cycloneii_lcell_comb ix27677z52923 (.combout (nx27677z1), .dataa (
                         rowcount[7]), .datab (rowcount[6]), .datac (rowcount[5]
                         ), .datad (rowcount[4]), .cin (1'b0)) ;
                         
                         defparam ix27677z52923.lut_mask = 16'h8098;
    cycloneii_lcell_comb ix26680z52923 (.combout (nx26680z1), .dataa (
                         rowcount[7]), .datab (rowcount[6]), .datac (rowcount[5]
                         ), .datad (rowcount[4]), .cin (1'b0)) ;
                         
                         defparam ix26680z52923.lut_mask = 16'hc324;
    cycloneii_lcell_comb ix25683z52923 (.combout (nx25683z1), .dataa (
                         rowcount[7]), .datab (rowcount[6]), .datac (rowcount[5]
                         ), .datad (rowcount[4]), .cin (1'b0)) ;
                         
                         defparam ix25683z52923.lut_mask = 16'h5704;
    cycloneii_lcell_comb ix63572z52923 (.combout (nx63572z1), .dataa (
                         rowcount[3]), .datab (rowcount[2]), .datac (rowcount[1]
                         ), .datad (rowcount[0]), .cin (1'b0)) ;
                         
                         defparam ix63572z52923.lut_mask = 16'h2904;
    cycloneii_lcell_comb ix61578z52923 (.combout (nx61578z1), .dataa (
                         rowcount[3]), .datab (rowcount[2]), .datac (rowcount[1]
                         ), .datad (rowcount[0]), .cin (1'b0)) ;
                         
                         defparam ix61578z52923.lut_mask = 16'h8098;
    cycloneii_lcell_comb ix60581z52923 (.combout (nx60581z1), .dataa (
                         rowcount[3]), .datab (rowcount[2]), .datac (rowcount[1]
                         ), .datad (rowcount[0]), .cin (1'b0)) ;
                         
                         defparam ix60581z52923.lut_mask = 16'hc324;
    cycloneii_lcell_comb ix59584z52923 (.combout (nx59584z1), .dataa (
                         rowcount[3]), .datab (rowcount[2]), .datac (rowcount[1]
                         ), .datad (rowcount[0]), .cin (1'b0)) ;
                         
                         defparam ix59584z52923.lut_mask = 16'h5704;
endmodule


module kirsch_notri ( p_o_mode, p_o_dir, p_i_reset, p_o_edge, p_o_valid, p_o_row, 
                      p_i_valid, p_i_pixel, p_i_clock, p_nrst_int, px538 ) ;

    output [1:0]p_o_mode ;
    output [2:0]p_o_dir ;
    input p_i_reset ;
    output p_o_edge ;
    output p_o_valid ;
    output [7:0]p_o_row ;
    input p_i_valid ;
    input [7:0]p_i_pixel ;
    input p_i_clock ;
    input p_nrst_int ;
    output px538 ;

    wire r17_10n1s1_7_, r17_10n1s1_8_, r17_9_, r17_10n1s1_9_, r17_10_, 
         r17_10n1s1_10_, r17_11_, r17_10n1s1_11_, r17_12_, r17_10n1s1_12_;
    wire [2:0]first_cw;
    wire [2:0]second_cw;
    wire [9:0]r18;
    wire [12:0]x_r22;
    wire stage1_nNe_2_, stage1_wNw_2_, stage1_sSw_2_, validBit_7_;
    wire [7:0]i;
    wire [2:1]vBit;
    wire [11:0]x_r12_8n2s1;
    wire [10:0]r14;
    wire [10:0]r14_8n3s1;
    wire [9:0]x_r6;
    wire [9:0]x_r6_8n4s1;
    wire [9:0]r16_7n1s1;
    wire [8:0]r13;
    wire [7:0]r12;
    wire [9:0]b_d1_7n4s1;
    wire [7:0]r10;
    wire [8:0]r9;
    wire [9:0]x_r3_7n3s1;
    wire [8:0]r2;
    wire [8:0]r2_6n3s1;
    wire [2:0]final_dir;
    wire stage1_eSe_2_, stage1_wNw_0_;
    wire [12:1]x_r22_8n1s1;
    wire [11:0]x_r12;
    wire validBit_6_, validBit_5_, validBit_4_, validBit_3_;
    wire [7:0]r5;
    wire [7:0]x_r5;
    wire r17_7_, r17_8_, nx47369z1;
    wire [9:0]x_r3;
    wire [9:0]b_d1;
    wire nx64999z2;
    wire [9:0]r11;
    wire [9:0]r16;
    wire nx35772z2;
    wire [9:0]r15;
    wire [9:0]x_r11;
    wire [7:0]r2_6n3s1f2;
    wire [7:0]r2_6n3s1f1;
    wire validBit_1_, validBit_2_, nx11593z1;
    wire [7:0]a;
    wire [7:0]d;
    wire validBit_0_, nx13424z1;
    wire [7:0]g;
    wire [7:0]b;
    wire nx27953z2;
    wire [7:0]c;
    wire [7:0]f;
    wire nx7951z1;
    wire [7:0]e;
    wire [7:0]h;
    wire [2:0]state;
    wire tempStorage_2__0_, tempStorage_2__1_, tempStorage_2__2_, 
         tempStorage_2__3_, tempStorage_2__4_, tempStorage_2__5_, 
         tempStorage_2__6_, tempStorage_2__7_, tempStorage_1__0_, 
         tempStorage_1__1_, tempStorage_1__2_, tempStorage_1__3_, 
         tempStorage_1__4_, tempStorage_1__5_, tempStorage_1__6_, 
         tempStorage_1__7_, tempStorage_0__0_, tempStorage_0__1_, 
         tempStorage_0__2_, tempStorage_0__3_, tempStorage_0__4_, 
         tempStorage_0__5_, tempStorage_0__6_, tempStorage_0__7_;
    wire [7:0]col;
    wire nx51677z2, nx51677z4, nx51677z5, nx51677z6, nx51677z7, nx51677z8, 
         nx51677z9, nx51677z10, nx51677z12, nx51677z14, nx51677z15, nx51677z16, 
         nx51677z17, nx51677z18, nx51677z19, nx51677z20, nx17322z1, 
         second_cw_9n2ss1_0_, first_cw_9n1ss1_0_, nx64999z1, nx35772z1, 
         nx16422z1, nx58464z1, nx65254z1, nx56415z1, nx54873z1, nx34104z1, 
         nx7951z2, nx20492z3;
    wire [7:0]x_r3_7n3s1f1;
    wire nx40914z1, nx13424z2, nx27953z1, nx15418z1, nx20419z1;
    wire [2:0]we;
    wire PWR, nx51677z13, nx51677z11, nx27471z1, nx26474z1, nx25477z1, nx24480z1, 
         nx23483z1, nx22486z1, nx21489z1, nx20492z1, nx29646z1, nx30643z1, 
         nx31640z1, nx32637z1, nx33634z1, nx34631z1, nx35628z1, nx36625z1, 
         nx17322z4, nx51677z1, nx51677z3, nx11673z2, nx6165z1, nx11673z4, 
         nx20419z2, nx6165z2, nx11673z3, nx17322z2, nx17322z3, nx11673z5, 
         nx11673z1, nx20492z2, NOT_state_2_;
    wire [1297:0] xmplr_dummy ;




    gt_8_0 ix7951z18830 (.a ({h[7],h[6],h[5],h[4],h[3],h[2],h[1],h[0]}), .b ({
           e[7],e[6],e[5],e[4],e[3],e[2],e[1],e[0]}), .d (nx7951z1)) ;
    gt_8_1 ix27953z18832 (.a ({f[7],f[6],f[5],f[4],f[3],f[2],f[1],f[0]}), .b ({
           c[7],c[6],c[5],c[4],c[3],c[2],c[1],c[0]}), .d (nx27953z2)) ;
    gt_8_2 ix13424z18832 (.a ({b[7],b[6],b[5],b[4],b[3],b[2],b[1],b[0]}), .b ({
           g[7],g[6],g[5],g[4],g[3],g[2],g[1],g[0]}), .d (nx13424z1)) ;
    gt_8_3 ix11593z18833 (.a ({d[7],d[6],d[5],d[4],d[3],d[2],d[1],d[0]}), .b ({
           a[7],a[6],a[5],a[4],a[3],a[2],a[1],a[0]}), .d (nx11593z1)) ;
    gt_10_0 ix35772z52808 (.a ({x_r11[9],x_r11[8],x_r11[7],x_r11[6],x_r11[5],
            x_r11[4],x_r11[3],x_r11[2],x_r11[1],x_r11[0]}), .b ({r15[9],r15[8],
            r15[7],r15[6],r15[5],r15[4],r15[3],r15[2],r15[1],r15[0]}), .d (
            nx35772z2)) ;
    gt_10_1 ix64999z52807 (.a ({r16[9],r16[8],r16[7],r16[6],r16[5],r16[4],r16[3]
            ,r16[2],r16[1],r16[0]}), .b ({r11[9],r11[8],r11[7],r11[6],r11[5],
            r11[4],r11[3],r11[2],r11[1],r11[0]}), .d (nx64999z2)) ;
    gt_10_2 ix47369z52805 (.a ({b_d1[9],b_d1[8],b_d1[7],b_d1[6],b_d1[5],b_d1[4],
            b_d1[3],b_d1[2],b_d1[1],b_d1[0]}), .b ({x_r3[9],x_r3[8],x_r3[7],
            x_r3[6],x_r3[5],x_r3[4],x_r3[3],x_r3[2],x_r3[1],x_r3[0]}), .d (
            nx47369z1)) ;
    add_12_0 x_r22_add12_8i1 (.a ({xmplr_dummy [0],x_r12[11],x_r12[10],x_r12[9],
             x_r12[8],x_r12[7],x_r12[6],x_r12[5],x_r12[4],x_r12[3],x_r12[2],
             x_r12[1]}), .b ({xmplr_dummy [1],xmplr_dummy [2],xmplr_dummy [3],
             xmplr_dummy [4],xmplr_dummy [5],xmplr_dummy [6],xmplr_dummy [7],
             xmplr_dummy [8],xmplr_dummy [9],xmplr_dummy [10],xmplr_dummy [11],
             x_r12[0]}), .d ({x_r22_8n1s1[12],x_r22_8n1s1[11],x_r22_8n1s1[10],
             x_r22_8n1s1[9],x_r22_8n1s1[8],x_r22_8n1s1[7],x_r22_8n1s1[6],
             x_r22_8n1s1[5],x_r22_8n1s1[4],x_r22_8n1s1[3],x_r22_8n1s1[2],
             x_r22_8n1s1[1]})) ;
    modgen_counter_8_0 modgen_counter_col (.clock (p_i_clock), .q ({col[7],
                       col[6],col[5],col[4],col[3],col[2],col[1],col[0]}), .clk_en (
                       nx40914z1), .sclear (p_i_reset)) ;
    modgen_counter_8_1 modgen_counter_o_row (.clock (p_i_clock), .q ({p_o_row[7]
                       ,p_o_row[6],p_o_row[5],p_o_row[4],p_o_row[3],p_o_row[2],
                       p_o_row[1],p_o_row[0]}), .sclear (p_i_reset), .cnt_en (
                       nx17322z1), .p_nrst_int_dup_455 (p_nrst_int), .px272 (
                       nx17322z4)) ;
    add_8_0 r2_add8_6i49 (.a ({r2_6n3s1f1[7],r2_6n3s1f1[6],r2_6n3s1f1[5],
            r2_6n3s1f1[4],r2_6n3s1f1[3],r2_6n3s1f1[2],r2_6n3s1f1[1],
            r2_6n3s1f1[0]}), .b ({r2_6n3s1f2[7],r2_6n3s1f2[6],r2_6n3s1f2[5],
            r2_6n3s1f2[4],r2_6n3s1f2[3],r2_6n3s1f2[2],r2_6n3s1f2[1],
            r2_6n3s1f2[0]}), .d ({r2_6n3s1[0],r2_6n3s1[1],r2_6n3s1[2],
            r2_6n3s1[3],r2_6n3s1[4],r2_6n3s1[5],r2_6n3s1[6],r2_6n3s1[7]}), .cout (
            r2_6n3s1[8])) ;
    add_9_0 x_r3_add9_7i9 (.a ({r2[8],r2[7],r2[6],r2[5],r2[4],r2[3],r2[2],r2[1],
            r2[0]}), .b ({xmplr_dummy [12],x_r3_7n3s1f1[7],x_r3_7n3s1f1[6],
            x_r3_7n3s1f1[5],x_r3_7n3s1f1[4],x_r3_7n3s1f1[3],x_r3_7n3s1f1[2],
            x_r3_7n3s1f1[1],x_r3_7n3s1f1[0]}), .d ({x_r3_7n3s1[0],x_r3_7n3s1[1],
            x_r3_7n3s1[2],x_r3_7n3s1[3],x_r3_7n3s1[4],x_r3_7n3s1[5],
            x_r3_7n3s1[6],x_r3_7n3s1[7],x_r3_7n3s1[8]}), .cout (x_r3_7n3s1[9])
            ) ;
    add_9_1 b_d1_add9_7i10 (.a ({r9[8],r9[7],r9[6],r9[5],r9[4],r9[3],r9[2],r9[1]
            ,r9[0]}), .b ({xmplr_dummy [13],r10[7],r10[6],r10[5],r10[4],r10[3],
            r10[2],r10[1],r10[0]}), .d ({b_d1_7n4s1[0],b_d1_7n4s1[1],
            b_d1_7n4s1[2],b_d1_7n4s1[3],b_d1_7n4s1[4],b_d1_7n4s1[5],
            b_d1_7n4s1[6],b_d1_7n4s1[7],b_d1_7n4s1[8]}), .cout (b_d1_7n4s1[9])
            ) ;
    add_9_2 r16_add9_7i11 (.a ({xmplr_dummy [14],r12[7],r12[6],r12[5],r12[4],
            r12[3],r12[2],r12[1],r12[0]}), .b ({r13[8],r13[7],r13[6],r13[5],
            r13[4],r13[3],r13[2],r13[1],r13[0]}), .d ({r16_7n1s1[0],r16_7n1s1[1]
            ,r16_7n1s1[2],r16_7n1s1[3],r16_7n1s1[4],r16_7n1s1[5],r16_7n1s1[6],
            r16_7n1s1[7],r16_7n1s1[8]}), .cout (r16_7n1s1[9])) ;
    add_9_3 x_r6_add9_8i2 (.a ({r9[8],r9[7],r9[6],r9[5],r9[4],r9[3],r9[2],r9[1],
            r9[0]}), .b ({r2[8],r2[7],r2[6],r2[5],r2[4],r2[3],r2[2],r2[1],r2[0]}
            ), .d ({x_r6_8n4s1[0],x_r6_8n4s1[1],x_r6_8n4s1[2],x_r6_8n4s1[3],
            x_r6_8n4s1[4],x_r6_8n4s1[5],x_r6_8n4s1[6],x_r6_8n4s1[7],
            x_r6_8n4s1[8]}), .cout (x_r6_8n4s1[9])) ;
    add_10_0 r14_add10_8i3 (.a ({xmplr_dummy [15],r2[8],r2[7],r2[6],r2[5],r2[4],
             r2[3],r2[2],r2[1],r2[0]}), .b ({x_r6[9],x_r6[8],x_r6[7],x_r6[6],
             x_r6[5],x_r6[4],x_r6[3],x_r6[2],x_r6[1],x_r6[0]}), .d ({
             r14_8n3s1[0],r14_8n3s1[1],r14_8n3s1[2],r14_8n3s1[3],r14_8n3s1[4],
             r14_8n3s1[5],r14_8n3s1[6],r14_8n3s1[7],r14_8n3s1[8],r14_8n3s1[9]})
             , .cout (r14_8n3s1[10])) ;
    add_11_0 x_r12_add11_8i4 (.a ({xmplr_dummy [16],xmplr_dummy [17],r13[8],
             r13[7],r13[6],r13[5],r13[4],r13[3],r13[2],r13[1],r13[0]}), .b ({
             r14[10],r14[9],r14[8],r14[7],r14[6],r14[5],r14[4],r14[3],r14[2],
             r14[1],r14[0]}), .d ({x_r12_8n2s1[0],x_r12_8n2s1[1],x_r12_8n2s1[2],
             x_r12_8n2s1[3],x_r12_8n2s1[4],x_r12_8n2s1[5],x_r12_8n2s1[6],
             x_r12_8n2s1[7],x_r12_8n2s1[8],x_r12_8n2s1[9],x_r12_8n2s1[10]}), .cout (
             x_r12_8n2s1[11])) ;
    sub_12_0 r17_sub13_10i1 (.a ({r18[9],r18[8],r18[7],r18[6],r18[5],r18[4],
             r18[3],r18[2],r18[1],r18[0],xmplr_dummy [18],xmplr_dummy [19]}), .b (
             {x_r22[12],x_r22[11],x_r22[10],x_r22[9],x_r22[8],x_r22[7],x_r22[6],
             x_r22[5],x_r22[4],x_r22[3],x_r22[2],x_r22[1]}), .d ({r17_10n1s1_12_
             ,r17_10n1s1_11_,r17_10n1s1_10_,r17_10n1s1_9_,r17_10n1s1_8_,
             r17_10n1s1_7_,xmplr_dummy [20],xmplr_dummy [21],xmplr_dummy [22],
             xmplr_dummy [23],xmplr_dummy [24],xmplr_dummy [25]}), .p_x_r22_0_ (
             x_r22[0])) ;
    ram_dq_8_0 Generate_mem_0_u_mem0_mem (.wr_data1 ({p_i_pixel[7],p_i_pixel[6],
               p_i_pixel[5],p_i_pixel[4],p_i_pixel[3],p_i_pixel[2],p_i_pixel[1],
               p_i_pixel[0]}), .rd_data1 ({tempStorage_0__7_,tempStorage_0__6_,
               tempStorage_0__5_,tempStorage_0__4_,tempStorage_0__3_,
               tempStorage_0__2_,tempStorage_0__1_,tempStorage_0__0_}), .addr1 (
               {col[7],col[6],col[5],col[4],col[3],col[2],col[1],col[0]}), .wr_clk1 (
               p_i_clock), .wr_ena1 (we[0])) ;
    ram_dq_8_1 Generate_mem_1_u_mem0_mem (.wr_data1 ({p_i_pixel[7],p_i_pixel[6],
               p_i_pixel[5],p_i_pixel[4],p_i_pixel[3],p_i_pixel[2],p_i_pixel[1],
               p_i_pixel[0]}), .rd_data1 ({tempStorage_1__7_,tempStorage_1__6_,
               tempStorage_1__5_,tempStorage_1__4_,tempStorage_1__3_,
               tempStorage_1__2_,tempStorage_1__1_,tempStorage_1__0_}), .addr1 (
               {col[7],col[6],col[5],col[4],col[3],col[2],col[1],col[0]}), .wr_clk1 (
               p_i_clock), .wr_ena1 (we[1])) ;
    ram_dq_8_2 Generate_mem_2_u_mem0_mem (.wr_data1 ({p_i_pixel[7],p_i_pixel[6],
               p_i_pixel[5],p_i_pixel[4],p_i_pixel[3],p_i_pixel[2],p_i_pixel[1],
               p_i_pixel[0]}), .rd_data1 ({tempStorage_2__7_,tempStorage_2__6_,
               tempStorage_2__5_,tempStorage_2__4_,tempStorage_2__3_,
               tempStorage_2__2_,tempStorage_2__1_,tempStorage_2__0_}), .addr1 (
               {col[7],col[6],col[5],col[4],col[3],col[2],col[1],col[0]}), .wr_clk1 (
               p_i_clock), .wr_ena1 (we[2])) ;
    assign nx15418z1 = ~nx13424z1 ;
    assign PWR = 1 ;
    assign p_o_mode[0] = ~px538 ;
    assign state[1] = ~nx20492z2 ;
    assign NOT_state_2_ = ~state[2] ;
    cycloneii_lcell_ff reg_x_r6_9_ (.regout (x_r6[9]), .datain (x_r6_8n4s1[9]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (validBit_2_), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r6_8_ (.regout (x_r6[8]), .datain (x_r6_8n4s1[0]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (validBit_2_), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r6_7_ (.regout (x_r6[7]), .datain (x_r6_8n4s1[1]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (validBit_2_), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r6_6_ (.regout (x_r6[6]), .datain (x_r6_8n4s1[2]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (validBit_2_), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r6_5_ (.regout (x_r6[5]), .datain (x_r6_8n4s1[3]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (validBit_2_), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r6_4_ (.regout (x_r6[4]), .datain (x_r6_8n4s1[4]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (validBit_2_), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r6_3_ (.regout (x_r6[3]), .datain (x_r6_8n4s1[5]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (validBit_2_), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r6_2_ (.regout (x_r6[2]), .datain (x_r6_8n4s1[6]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (validBit_2_), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r6_1_ (.regout (x_r6[1]), .datain (x_r6_8n4s1[7]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (validBit_2_), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r6_0_ (.regout (x_r6[0]), .datain (x_r6_8n4s1[8]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (validBit_2_), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r5_7_ (.regout (x_r5[7]), .datain (c[7]), .sdata (
                       f[7]), .clk (p_i_clock), .ena (nx27953z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (nx27953z2)) ;
    cycloneii_lcell_ff reg_x_r5_6_ (.regout (x_r5[6]), .datain (c[6]), .sdata (
                       f[6]), .clk (p_i_clock), .ena (nx27953z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (nx27953z2)) ;
    cycloneii_lcell_ff reg_x_r5_5_ (.regout (x_r5[5]), .datain (c[5]), .sdata (
                       f[5]), .clk (p_i_clock), .ena (nx27953z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (nx27953z2)) ;
    cycloneii_lcell_ff reg_x_r5_4_ (.regout (x_r5[4]), .datain (c[4]), .sdata (
                       f[4]), .clk (p_i_clock), .ena (nx27953z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (nx27953z2)) ;
    cycloneii_lcell_ff reg_x_r5_3_ (.regout (x_r5[3]), .datain (c[3]), .sdata (
                       f[3]), .clk (p_i_clock), .ena (nx27953z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (nx27953z2)) ;
    cycloneii_lcell_ff reg_x_r5_2_ (.regout (x_r5[2]), .datain (c[2]), .sdata (
                       f[2]), .clk (p_i_clock), .ena (nx27953z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (nx27953z2)) ;
    cycloneii_lcell_ff reg_x_r5_1_ (.regout (x_r5[1]), .datain (c[1]), .sdata (
                       f[1]), .clk (p_i_clock), .ena (nx27953z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (nx27953z2)) ;
    cycloneii_lcell_ff reg_x_r5_0_ (.regout (x_r5[0]), .datain (c[0]), .sdata (
                       f[0]), .clk (p_i_clock), .ena (nx27953z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (nx27953z2)) ;
    cycloneii_lcell_ff reg_x_r3_9_ (.regout (x_r3[9]), .datain (x_r3_7n3s1[9]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (nx56415z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r3_8_ (.regout (x_r3[8]), .datain (x_r3_7n3s1[0]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (nx56415z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r3_7_ (.regout (x_r3[7]), .datain (x_r3_7n3s1[1]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (nx56415z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r3_6_ (.regout (x_r3[6]), .datain (x_r3_7n3s1[2]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (nx56415z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r3_5_ (.regout (x_r3[5]), .datain (x_r3_7n3s1[3]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (nx56415z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r3_4_ (.regout (x_r3[4]), .datain (x_r3_7n3s1[4]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (nx56415z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r3_3_ (.regout (x_r3[3]), .datain (x_r3_7n3s1[5]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (nx56415z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r3_2_ (.regout (x_r3[2]), .datain (x_r3_7n3s1[6]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (nx56415z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r3_1_ (.regout (x_r3[1]), .datain (x_r3_7n3s1[7]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (nx56415z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r3_0_ (.regout (x_r3[0]), .datain (x_r3_7n3s1[8]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (nx56415z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r22_9_ (.regout (x_r22[9]), .datain (x_r22_8n1s1[9]
                       ), .sdata (1'b0), .clk (p_i_clock), .ena (nx65254z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r22_8_ (.regout (x_r22[8]), .datain (x_r22_8n1s1[8]
                       ), .sdata (1'b0), .clk (p_i_clock), .ena (nx65254z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r22_7_ (.regout (x_r22[7]), .datain (x_r22_8n1s1[7]
                       ), .sdata (1'b0), .clk (p_i_clock), .ena (nx65254z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r22_6_ (.regout (x_r22[6]), .datain (x_r22_8n1s1[6]
                       ), .sdata (1'b0), .clk (p_i_clock), .ena (nx65254z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r22_5_ (.regout (x_r22[5]), .datain (x_r22_8n1s1[5]
                       ), .sdata (1'b0), .clk (p_i_clock), .ena (nx65254z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r22_4_ (.regout (x_r22[4]), .datain (x_r22_8n1s1[4]
                       ), .sdata (1'b0), .clk (p_i_clock), .ena (nx65254z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r22_3_ (.regout (x_r22[3]), .datain (x_r22_8n1s1[3]
                       ), .sdata (1'b0), .clk (p_i_clock), .ena (nx65254z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r22_2_ (.regout (x_r22[2]), .datain (x_r22_8n1s1[2]
                       ), .sdata (1'b0), .clk (p_i_clock), .ena (nx65254z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r22_12_ (.regout (x_r22[12]), .datain (
                       x_r22_8n1s1[12]), .sdata (1'b0), .clk (p_i_clock), .ena (
                       nx65254z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r22_11_ (.regout (x_r22[11]), .datain (
                       x_r22_8n1s1[11]), .sdata (1'b0), .clk (p_i_clock), .ena (
                       nx65254z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r22_10_ (.regout (x_r22[10]), .datain (
                       x_r22_8n1s1[10]), .sdata (1'b0), .clk (p_i_clock), .ena (
                       nx65254z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r22_1_ (.regout (x_r22[1]), .datain (x_r22_8n1s1[1]
                       ), .sdata (1'b0), .clk (p_i_clock), .ena (nx65254z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r22_0_ (.regout (x_r22[0]), .datain (x_r12[0]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx65254z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r12_9_ (.regout (x_r12[9]), .datain (x_r12_8n2s1[1]
                       ), .sdata (1'b0), .clk (p_i_clock), .ena (nx58464z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r12_8_ (.regout (x_r12[8]), .datain (x_r12_8n2s1[2]
                       ), .sdata (1'b0), .clk (p_i_clock), .ena (nx58464z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r12_7_ (.regout (x_r12[7]), .datain (x_r12_8n2s1[3]
                       ), .sdata (1'b0), .clk (p_i_clock), .ena (nx58464z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r12_6_ (.regout (x_r12[6]), .datain (x_r12_8n2s1[4]
                       ), .sdata (1'b0), .clk (p_i_clock), .ena (nx58464z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r12_5_ (.regout (x_r12[5]), .datain (x_r12_8n2s1[5]
                       ), .sdata (1'b0), .clk (p_i_clock), .ena (nx58464z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r12_4_ (.regout (x_r12[4]), .datain (x_r12_8n2s1[6]
                       ), .sdata (1'b0), .clk (p_i_clock), .ena (nx58464z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r12_3_ (.regout (x_r12[3]), .datain (x_r12_8n2s1[7]
                       ), .sdata (1'b0), .clk (p_i_clock), .ena (nx58464z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r12_2_ (.regout (x_r12[2]), .datain (x_r12_8n2s1[8]
                       ), .sdata (1'b0), .clk (p_i_clock), .ena (nx58464z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r12_11_ (.regout (x_r12[11]), .datain (
                       x_r12_8n2s1[11]), .sdata (1'b0), .clk (p_i_clock), .ena (
                       nx58464z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r12_10_ (.regout (x_r12[10]), .datain (
                       x_r12_8n2s1[0]), .sdata (1'b0), .clk (p_i_clock), .ena (
                       nx58464z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r12_1_ (.regout (x_r12[1]), .datain (x_r12_8n2s1[9]
                       ), .sdata (1'b0), .clk (p_i_clock), .ena (nx58464z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r12_0_ (.regout (x_r12[0]), .datain (
                       x_r12_8n2s1[10]), .sdata (1'b0), .clk (p_i_clock), .ena (
                       nx58464z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_x_r11_9_ (.regout (x_r11[9]), .datain (r11[9]), .sdata (
                       r16[9]), .clk (p_i_clock), .ena (nx64999z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (nx64999z2)) ;
    cycloneii_lcell_ff reg_x_r11_8_ (.regout (x_r11[8]), .datain (r11[8]), .sdata (
                       r16[8]), .clk (p_i_clock), .ena (nx64999z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (nx64999z2)) ;
    cycloneii_lcell_ff reg_x_r11_7_ (.regout (x_r11[7]), .datain (r11[7]), .sdata (
                       r16[7]), .clk (p_i_clock), .ena (nx64999z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (nx64999z2)) ;
    cycloneii_lcell_ff reg_x_r11_6_ (.regout (x_r11[6]), .datain (r11[6]), .sdata (
                       r16[6]), .clk (p_i_clock), .ena (nx64999z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (nx64999z2)) ;
    cycloneii_lcell_ff reg_x_r11_5_ (.regout (x_r11[5]), .datain (r11[5]), .sdata (
                       r16[5]), .clk (p_i_clock), .ena (nx64999z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (nx64999z2)) ;
    cycloneii_lcell_ff reg_x_r11_4_ (.regout (x_r11[4]), .datain (r11[4]), .sdata (
                       r16[4]), .clk (p_i_clock), .ena (nx64999z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (nx64999z2)) ;
    cycloneii_lcell_ff reg_x_r11_3_ (.regout (x_r11[3]), .datain (r11[3]), .sdata (
                       r16[3]), .clk (p_i_clock), .ena (nx64999z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (nx64999z2)) ;
    cycloneii_lcell_ff reg_x_r11_2_ (.regout (x_r11[2]), .datain (r11[2]), .sdata (
                       r16[2]), .clk (p_i_clock), .ena (nx64999z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (nx64999z2)) ;
    cycloneii_lcell_ff reg_x_r11_1_ (.regout (x_r11[1]), .datain (r11[1]), .sdata (
                       r16[1]), .clk (p_i_clock), .ena (nx64999z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (nx64999z2)) ;
    cycloneii_lcell_ff reg_x_r11_0_ (.regout (x_r11[0]), .datain (r11[0]), .sdata (
                       r16[0]), .clk (p_i_clock), .ena (nx64999z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (nx64999z2)) ;
    cycloneii_lcell_ff reg_validBit_8_ (.regout (p_o_valid), .datain (
                       validBit_7_), .sdata (1'b0), .clk (p_i_clock), .ena (1'b1
                       ), .aclr (1'b0), .sclr (p_i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_validBit_7_ (.regout (validBit_7_), .datain (
                       validBit_6_), .sdata (1'b0), .clk (p_i_clock), .ena (1'b1
                       ), .aclr (1'b0), .sclr (p_i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_validBit_6_ (.regout (validBit_6_), .datain (
                       validBit_5_), .sdata (1'b0), .clk (p_i_clock), .ena (1'b1
                       ), .aclr (1'b0), .sclr (p_i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_validBit_5_ (.regout (validBit_5_), .datain (
                       validBit_4_), .sdata (1'b0), .clk (p_i_clock), .ena (1'b1
                       ), .aclr (1'b0), .sclr (p_i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_validBit_4_ (.regout (validBit_4_), .datain (
                       validBit_3_), .sdata (1'b0), .clk (p_i_clock), .ena (1'b1
                       ), .aclr (1'b0), .sclr (p_i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_validBit_3_ (.regout (validBit_3_), .datain (
                       validBit_2_), .sdata (1'b0), .clk (p_i_clock), .ena (1'b1
                       ), .aclr (1'b0), .sclr (p_i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_validBit_2_ (.regout (validBit_2_), .datain (
                       validBit_1_), .sdata (1'b0), .clk (p_i_clock), .ena (1'b1
                       ), .aclr (1'b0), .sclr (p_i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_validBit_1_ (.regout (validBit_1_), .datain (
                       validBit_0_), .sdata (1'b0), .clk (p_i_clock), .ena (1'b1
                       ), .aclr (1'b0), .sclr (p_i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_validBit_0_ (.regout (validBit_0_), .datain (
                       nx20419z1), .sdata (1'b0), .clk (p_i_clock), .ena (1'b1)
                       , .aclr (1'b0), .sclr (p_i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_vBit_2_ (.regout (vBit[2]), .datain (vBit[1]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_vBit_1_ (.regout (vBit[1]), .datain (p_i_valid), .sdata (
                       1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_state_2_ (.regout (state[2]), .datain (state[0]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx17322z4), .aclr (1'b0), 
                       .sclr (p_i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_state_1_ (.regout (state[0]), .datain (state[1]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx17322z4), .aclr (1'b0), 
                       .sclr (p_i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_state_0_ (.regout (nx20492z2), .datain (NOT_state_2_)
                       , .sdata (1'b0), .clk (p_i_clock), .ena (nx17322z4), .aclr (
                       1'b0), .sclr (p_i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_stage1_wNw_2_ (.regout (stage1_wNw_2_), .datain (
                       nx13424z1), .sdata (1'b0), .clk (p_i_clock), .ena (
                       nx13424z2), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_stage1_wNw_0_ (.regout (stage1_wNw_0_), .datain (
                       nx15418z1), .sdata (1'b0), .clk (p_i_clock), .ena (
                       nx13424z2), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_stage1_sSw_2_ (.regout (stage1_sSw_2_), .datain (
                       nx7951z1), .sdata (1'b0), .clk (p_i_clock), .ena (
                       nx7951z2), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_stage1_nNe_2_ (.regout (stage1_nNe_2_), .datain (
                       nx11593z1), .sdata (1'b0), .clk (p_i_clock), .ena (
                       validBit_0_), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_stage1_eSe_2_ (.regout (stage1_eSe_2_), .datain (
                       nx27953z2), .sdata (1'b0), .clk (p_i_clock), .ena (
                       nx27953z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_second_cw_2_ (.regout (second_cw[2]), .datain (
                       stage1_eSe_2_), .sdata (stage1_sSw_2_), .clk (p_i_clock)
                       , .ena (nx64999z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx64999z2)) ;
    cycloneii_lcell_ff reg_second_cw_1_ (.regout (second_cw[1]), .datain (
                       nx64999z2), .sdata (1'b0), .clk (p_i_clock), .ena (
                       nx64999z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_second_cw_0_ (.regout (second_cw[0]), .datain (
                       second_cw_9n2ss1_0_), .sdata (1'b0), .clk (p_i_clock), .ena (
                       nx64999z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_8_ (.regout (r9[8]), .datain (r2_6n3s1[8]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (validBit_0_), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_7_ (.regout (r9[7]), .datain (r2_6n3s1[0]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (validBit_0_), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_6_ (.regout (r9[6]), .datain (r2_6n3s1[1]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (validBit_0_), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_5_ (.regout (r9[5]), .datain (r2_6n3s1[2]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (validBit_0_), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_4_ (.regout (r9[4]), .datain (r2_6n3s1[3]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (validBit_0_), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_3_ (.regout (r9[3]), .datain (r2_6n3s1[4]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (validBit_0_), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_2_ (.regout (r9[2]), .datain (r2_6n3s1[5]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (validBit_0_), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_1_ (.regout (r9[1]), .datain (r2_6n3s1[6]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (validBit_0_), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_0_ (.regout (r9[0]), .datain (r2_6n3s1[7]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (validBit_0_), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r5_7_ (.regout (r5[7]), .datain (g[7]), .sdata (b[7])
                       , .clk (p_i_clock), .ena (nx13424z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx13424z1)) ;
    cycloneii_lcell_ff reg_r5_6_ (.regout (r5[6]), .datain (g[6]), .sdata (b[6])
                       , .clk (p_i_clock), .ena (nx13424z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx13424z1)) ;
    cycloneii_lcell_ff reg_r5_5_ (.regout (r5[5]), .datain (g[5]), .sdata (b[5])
                       , .clk (p_i_clock), .ena (nx13424z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx13424z1)) ;
    cycloneii_lcell_ff reg_r5_4_ (.regout (r5[4]), .datain (g[4]), .sdata (b[4])
                       , .clk (p_i_clock), .ena (nx13424z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx13424z1)) ;
    cycloneii_lcell_ff reg_r5_3_ (.regout (r5[3]), .datain (g[3]), .sdata (b[3])
                       , .clk (p_i_clock), .ena (nx13424z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx13424z1)) ;
    cycloneii_lcell_ff reg_r5_2_ (.regout (r5[2]), .datain (g[2]), .sdata (b[2])
                       , .clk (p_i_clock), .ena (nx13424z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx13424z1)) ;
    cycloneii_lcell_ff reg_r5_1_ (.regout (r5[1]), .datain (g[1]), .sdata (b[1])
                       , .clk (p_i_clock), .ena (nx13424z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx13424z1)) ;
    cycloneii_lcell_ff reg_r5_0_ (.regout (r5[0]), .datain (g[0]), .sdata (b[0])
                       , .clk (p_i_clock), .ena (nx13424z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx13424z1)) ;
    cycloneii_lcell_ff reg_r2_8_ (.regout (r2[8]), .datain (r2_6n3s1[8]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx51677z3), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r2_7_ (.regout (r2[7]), .datain (r2_6n3s1[0]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx51677z3), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r2_6_ (.regout (r2[6]), .datain (r2_6n3s1[1]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx51677z3), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r2_5_ (.regout (r2[5]), .datain (r2_6n3s1[2]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx51677z3), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r2_4_ (.regout (r2[4]), .datain (r2_6n3s1[3]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx51677z3), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r2_3_ (.regout (r2[3]), .datain (r2_6n3s1[4]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx51677z3), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r2_2_ (.regout (r2[2]), .datain (r2_6n3s1[5]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx51677z3), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r2_1_ (.regout (r2[1]), .datain (r2_6n3s1[6]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx51677z3), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r2_0_ (.regout (r2[0]), .datain (r2_6n3s1[7]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx51677z3), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r18_9_ (.regout (r18[9]), .datain (r15[9]), .sdata (
                       x_r11[9]), .clk (p_i_clock), .ena (nx35772z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx35772z2)) ;
    cycloneii_lcell_ff reg_r18_8_ (.regout (r18[8]), .datain (r15[8]), .sdata (
                       x_r11[8]), .clk (p_i_clock), .ena (nx35772z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx35772z2)) ;
    cycloneii_lcell_ff reg_r18_7_ (.regout (r18[7]), .datain (r15[7]), .sdata (
                       x_r11[7]), .clk (p_i_clock), .ena (nx35772z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx35772z2)) ;
    cycloneii_lcell_ff reg_r18_6_ (.regout (r18[6]), .datain (r15[6]), .sdata (
                       x_r11[6]), .clk (p_i_clock), .ena (nx35772z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx35772z2)) ;
    cycloneii_lcell_ff reg_r18_5_ (.regout (r18[5]), .datain (r15[5]), .sdata (
                       x_r11[5]), .clk (p_i_clock), .ena (nx35772z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx35772z2)) ;
    cycloneii_lcell_ff reg_r18_4_ (.regout (r18[4]), .datain (r15[4]), .sdata (
                       x_r11[4]), .clk (p_i_clock), .ena (nx35772z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx35772z2)) ;
    cycloneii_lcell_ff reg_r18_3_ (.regout (r18[3]), .datain (r15[3]), .sdata (
                       x_r11[3]), .clk (p_i_clock), .ena (nx35772z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx35772z2)) ;
    cycloneii_lcell_ff reg_r18_2_ (.regout (r18[2]), .datain (r15[2]), .sdata (
                       x_r11[2]), .clk (p_i_clock), .ena (nx35772z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx35772z2)) ;
    cycloneii_lcell_ff reg_r18_1_ (.regout (r18[1]), .datain (r15[1]), .sdata (
                       x_r11[1]), .clk (p_i_clock), .ena (nx35772z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx35772z2)) ;
    cycloneii_lcell_ff reg_r18_0_ (.regout (r18[0]), .datain (r15[0]), .sdata (
                       x_r11[0]), .clk (p_i_clock), .ena (nx35772z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx35772z2)) ;
    cycloneii_lcell_ff reg_r17_9_ (.regout (r17_9_), .datain (r17_10n1s1_9_), .sdata (
                       1'b0), .clk (p_i_clock), .ena (validBit_7_), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r17_8_ (.regout (r17_8_), .datain (r17_10n1s1_8_), .sdata (
                       1'b0), .clk (p_i_clock), .ena (validBit_7_), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r17_7_ (.regout (r17_7_), .datain (r17_10n1s1_7_), .sdata (
                       1'b0), .clk (p_i_clock), .ena (validBit_7_), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r17_12_ (.regout (r17_12_), .datain (r17_10n1s1_12_)
                       , .sdata (1'b0), .clk (p_i_clock), .ena (validBit_7_), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r17_11_ (.regout (r17_11_), .datain (r17_10n1s1_11_)
                       , .sdata (1'b0), .clk (p_i_clock), .ena (validBit_7_), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r17_10_ (.regout (r17_10_), .datain (r17_10n1s1_10_)
                       , .sdata (1'b0), .clk (p_i_clock), .ena (validBit_7_), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r16_9_ (.regout (r16[9]), .datain (r16_7n1s1[9]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx34104z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r16_8_ (.regout (r16[8]), .datain (r16_7n1s1[0]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx34104z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r16_7_ (.regout (r16[7]), .datain (r16_7n1s1[1]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx34104z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r16_6_ (.regout (r16[6]), .datain (r16_7n1s1[2]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx34104z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r16_5_ (.regout (r16[5]), .datain (r16_7n1s1[3]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx34104z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r16_4_ (.regout (r16[4]), .datain (r16_7n1s1[4]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx34104z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r16_3_ (.regout (r16[3]), .datain (r16_7n1s1[5]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx34104z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r16_2_ (.regout (r16[2]), .datain (r16_7n1s1[6]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx34104z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r16_1_ (.regout (r16[1]), .datain (r16_7n1s1[7]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx34104z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r16_0_ (.regout (r16[0]), .datain (r16_7n1s1[8]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx34104z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r15_9_ (.regout (r15[9]), .datain (x_r3[9]), .sdata (
                       b_d1[9]), .clk (p_i_clock), .ena (validBit_3_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx47369z1)) ;
    cycloneii_lcell_ff reg_r15_8_ (.regout (r15[8]), .datain (x_r3[8]), .sdata (
                       b_d1[8]), .clk (p_i_clock), .ena (validBit_3_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx47369z1)) ;
    cycloneii_lcell_ff reg_r15_7_ (.regout (r15[7]), .datain (x_r3[7]), .sdata (
                       b_d1[7]), .clk (p_i_clock), .ena (validBit_3_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx47369z1)) ;
    cycloneii_lcell_ff reg_r15_6_ (.regout (r15[6]), .datain (x_r3[6]), .sdata (
                       b_d1[6]), .clk (p_i_clock), .ena (validBit_3_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx47369z1)) ;
    cycloneii_lcell_ff reg_r15_5_ (.regout (r15[5]), .datain (x_r3[5]), .sdata (
                       b_d1[5]), .clk (p_i_clock), .ena (validBit_3_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx47369z1)) ;
    cycloneii_lcell_ff reg_r15_4_ (.regout (r15[4]), .datain (x_r3[4]), .sdata (
                       b_d1[4]), .clk (p_i_clock), .ena (validBit_3_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx47369z1)) ;
    cycloneii_lcell_ff reg_r15_3_ (.regout (r15[3]), .datain (x_r3[3]), .sdata (
                       b_d1[3]), .clk (p_i_clock), .ena (validBit_3_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx47369z1)) ;
    cycloneii_lcell_ff reg_r15_2_ (.regout (r15[2]), .datain (x_r3[2]), .sdata (
                       b_d1[2]), .clk (p_i_clock), .ena (validBit_3_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx47369z1)) ;
    cycloneii_lcell_ff reg_r15_1_ (.regout (r15[1]), .datain (x_r3[1]), .sdata (
                       b_d1[1]), .clk (p_i_clock), .ena (validBit_3_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx47369z1)) ;
    cycloneii_lcell_ff reg_r15_0_ (.regout (r15[0]), .datain (x_r3[0]), .sdata (
                       b_d1[0]), .clk (p_i_clock), .ena (validBit_3_), .aclr (
                       1'b0), .sclr (1'b0), .sload (nx47369z1)) ;
    cycloneii_lcell_ff reg_r14_9_ (.regout (r14[9]), .datain (r14_8n3s1[0]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx16422z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r14_8_ (.regout (r14[8]), .datain (r14_8n3s1[1]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx16422z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r14_7_ (.regout (r14[7]), .datain (r14_8n3s1[2]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx16422z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r14_6_ (.regout (r14[6]), .datain (r14_8n3s1[3]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx16422z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r14_5_ (.regout (r14[5]), .datain (r14_8n3s1[4]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx16422z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r14_4_ (.regout (r14[4]), .datain (r14_8n3s1[5]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx16422z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r14_3_ (.regout (r14[3]), .datain (r14_8n3s1[6]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx16422z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r14_2_ (.regout (r14[2]), .datain (r14_8n3s1[7]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx16422z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r14_10_ (.regout (r14[10]), .datain (r14_8n3s1[10]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (nx16422z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r14_1_ (.regout (r14[1]), .datain (r14_8n3s1[8]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx16422z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r14_0_ (.regout (r14[0]), .datain (r14_8n3s1[9]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx16422z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_8_ (.regout (r13[8]), .datain (r2_6n3s1[8]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx7951z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_7_ (.regout (r13[7]), .datain (r2_6n3s1[0]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx7951z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_6_ (.regout (r13[6]), .datain (r2_6n3s1[1]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx7951z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_5_ (.regout (r13[5]), .datain (r2_6n3s1[2]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx7951z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_4_ (.regout (r13[4]), .datain (r2_6n3s1[3]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx7951z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_3_ (.regout (r13[3]), .datain (r2_6n3s1[4]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx7951z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_2_ (.regout (r13[2]), .datain (r2_6n3s1[5]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx7951z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_1_ (.regout (r13[1]), .datain (r2_6n3s1[6]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx7951z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r13_0_ (.regout (r13[0]), .datain (r2_6n3s1[7]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx7951z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r12_7_ (.regout (r12[7]), .datain (e[7]), .sdata (
                       h[7]), .clk (p_i_clock), .ena (nx7951z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx7951z1)) ;
    cycloneii_lcell_ff reg_r12_6_ (.regout (r12[6]), .datain (e[6]), .sdata (
                       h[6]), .clk (p_i_clock), .ena (nx7951z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx7951z1)) ;
    cycloneii_lcell_ff reg_r12_5_ (.regout (r12[5]), .datain (e[5]), .sdata (
                       h[5]), .clk (p_i_clock), .ena (nx7951z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx7951z1)) ;
    cycloneii_lcell_ff reg_r12_4_ (.regout (r12[4]), .datain (e[4]), .sdata (
                       h[4]), .clk (p_i_clock), .ena (nx7951z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx7951z1)) ;
    cycloneii_lcell_ff reg_r12_3_ (.regout (r12[3]), .datain (e[3]), .sdata (
                       h[3]), .clk (p_i_clock), .ena (nx7951z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx7951z1)) ;
    cycloneii_lcell_ff reg_r12_2_ (.regout (r12[2]), .datain (e[2]), .sdata (
                       h[2]), .clk (p_i_clock), .ena (nx7951z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx7951z1)) ;
    cycloneii_lcell_ff reg_r12_1_ (.regout (r12[1]), .datain (e[1]), .sdata (
                       h[1]), .clk (p_i_clock), .ena (nx7951z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx7951z1)) ;
    cycloneii_lcell_ff reg_r12_0_ (.regout (r12[0]), .datain (e[0]), .sdata (
                       h[0]), .clk (p_i_clock), .ena (nx7951z2), .aclr (1'b0), .sclr (
                       1'b0), .sload (nx7951z1)) ;
    cycloneii_lcell_ff reg_r11_9_ (.regout (r11[9]), .datain (x_r3_7n3s1[9]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx54873z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_8_ (.regout (r11[8]), .datain (x_r3_7n3s1[0]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx54873z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_7_ (.regout (r11[7]), .datain (x_r3_7n3s1[1]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx54873z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_6_ (.regout (r11[6]), .datain (x_r3_7n3s1[2]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx54873z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_5_ (.regout (r11[5]), .datain (x_r3_7n3s1[3]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx54873z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_4_ (.regout (r11[4]), .datain (x_r3_7n3s1[4]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx54873z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_3_ (.regout (r11[3]), .datain (x_r3_7n3s1[5]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx54873z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_2_ (.regout (r11[2]), .datain (x_r3_7n3s1[6]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx54873z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_1_ (.regout (r11[1]), .datain (x_r3_7n3s1[7]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx54873z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r11_0_ (.regout (r11[0]), .datain (x_r3_7n3s1[8]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx54873z1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r10_7_ (.regout (r10[7]), .datain (a[7]), .sdata (
                       d[7]), .clk (p_i_clock), .ena (validBit_0_), .aclr (1'b0)
                       , .sclr (1'b0), .sload (nx11593z1)) ;
    cycloneii_lcell_ff reg_r10_6_ (.regout (r10[6]), .datain (a[6]), .sdata (
                       d[6]), .clk (p_i_clock), .ena (validBit_0_), .aclr (1'b0)
                       , .sclr (1'b0), .sload (nx11593z1)) ;
    cycloneii_lcell_ff reg_r10_5_ (.regout (r10[5]), .datain (a[5]), .sdata (
                       d[5]), .clk (p_i_clock), .ena (validBit_0_), .aclr (1'b0)
                       , .sclr (1'b0), .sload (nx11593z1)) ;
    cycloneii_lcell_ff reg_r10_4_ (.regout (r10[4]), .datain (a[4]), .sdata (
                       d[4]), .clk (p_i_clock), .ena (validBit_0_), .aclr (1'b0)
                       , .sclr (1'b0), .sload (nx11593z1)) ;
    cycloneii_lcell_ff reg_r10_3_ (.regout (r10[3]), .datain (a[3]), .sdata (
                       d[3]), .clk (p_i_clock), .ena (validBit_0_), .aclr (1'b0)
                       , .sclr (1'b0), .sload (nx11593z1)) ;
    cycloneii_lcell_ff reg_r10_2_ (.regout (r10[2]), .datain (a[2]), .sdata (
                       d[2]), .clk (p_i_clock), .ena (validBit_0_), .aclr (1'b0)
                       , .sclr (1'b0), .sload (nx11593z1)) ;
    cycloneii_lcell_ff reg_r10_1_ (.regout (r10[1]), .datain (a[1]), .sdata (
                       d[1]), .clk (p_i_clock), .ena (validBit_0_), .aclr (1'b0)
                       , .sclr (1'b0), .sload (nx11593z1)) ;
    cycloneii_lcell_ff reg_r10_0_ (.regout (r10[0]), .datain (a[0]), .sdata (
                       d[0]), .clk (p_i_clock), .ena (validBit_0_), .aclr (1'b0)
                       , .sclr (1'b0), .sload (nx11593z1)) ;
    cycloneii_lcell_ff reg_out_signal_1_ (.regout (p_o_mode[1]), .datain (PWR), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (p_i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_signal_0_ (.regout (px538), .datain (nx11673z1), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (1'b1), .aclr (1'b0
                       ), .sclr (p_i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_7_ (.regout (i[7]), .datain (d[7]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_6_ (.regout (i[6]), .datain (d[6]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_5_ (.regout (i[5]), .datain (d[5]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_4_ (.regout (i[4]), .datain (d[4]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_3_ (.regout (i[3]), .datain (d[3]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_2_ (.regout (i[2]), .datain (d[2]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_1_ (.regout (i[1]), .datain (d[1]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_0_ (.regout (i[0]), .datain (d[0]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_h_7_ (.regout (h[7]), .datain (i[7]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_h_6_ (.regout (h[6]), .datain (i[6]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_h_5_ (.regout (h[5]), .datain (i[5]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_h_4_ (.regout (h[4]), .datain (i[4]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_h_3_ (.regout (h[3]), .datain (i[3]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_h_2_ (.regout (h[2]), .datain (i[2]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_h_1_ (.regout (h[1]), .datain (i[1]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_h_0_ (.regout (h[0]), .datain (i[0]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_7_ (.regout (g[7]), .datain (f[7]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_6_ (.regout (g[6]), .datain (f[6]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_5_ (.regout (g[5]), .datain (f[5]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_4_ (.regout (g[4]), .datain (f[4]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_3_ (.regout (g[3]), .datain (f[3]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_2_ (.regout (g[2]), .datain (f[2]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_1_ (.regout (g[1]), .datain (f[1]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_g_0_ (.regout (g[0]), .datain (f[0]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_first_cw_2_ (.regout (first_cw[2]), .datain (
                       stage1_wNw_2_), .sdata (stage1_nNe_2_), .clk (p_i_clock)
                       , .ena (validBit_3_), .aclr (1'b0), .sclr (1'b0), .sload (
                       nx47369z1)) ;
    cycloneii_lcell_ff reg_first_cw_1_ (.regout (first_cw[1]), .datain (
                       nx47369z1), .sdata (1'b0), .clk (p_i_clock), .ena (
                       validBit_3_), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_first_cw_0_ (.regout (first_cw[0]), .datain (
                       first_cw_9n1ss1_0_), .sdata (1'b0), .clk (p_i_clock), .ena (
                       validBit_3_), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_final_dir_2_ (.regout (final_dir[2]), .datain (
                       first_cw[2]), .sdata (second_cw[2]), .clk (p_i_clock), .ena (
                       nx35772z1), .aclr (1'b0), .sclr (1'b0), .sload (nx35772z2
                       )) ;
    cycloneii_lcell_ff reg_final_dir_1_ (.regout (final_dir[1]), .datain (
                       first_cw[1]), .sdata (second_cw[1]), .clk (p_i_clock), .ena (
                       nx35772z1), .aclr (1'b0), .sclr (1'b0), .sload (nx35772z2
                       )) ;
    cycloneii_lcell_ff reg_final_dir_0_ (.regout (final_dir[0]), .datain (
                       first_cw[0]), .sdata (second_cw[0]), .clk (p_i_clock), .ena (
                       nx35772z1), .aclr (1'b0), .sclr (1'b0), .sload (nx35772z2
                       )) ;
    cycloneii_lcell_ff reg_f_7_ (.regout (f[7]), .datain (e[7]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_6_ (.regout (f[6]), .datain (e[6]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_5_ (.regout (f[5]), .datain (e[5]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_4_ (.regout (f[4]), .datain (e[4]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_3_ (.regout (f[3]), .datain (e[3]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_2_ (.regout (f[2]), .datain (e[2]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_1_ (.regout (f[1]), .datain (e[1]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_f_0_ (.regout (f[0]), .datain (e[0]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_e_7_ (.regout (e[7]), .datain (p_i_pixel[7]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_e_6_ (.regout (e[6]), .datain (p_i_pixel[6]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_e_5_ (.regout (e[5]), .datain (p_i_pixel[5]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_e_4_ (.regout (e[4]), .datain (p_i_pixel[4]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_e_3_ (.regout (e[3]), .datain (p_i_pixel[3]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_e_2_ (.regout (e[2]), .datain (p_i_pixel[2]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_e_1_ (.regout (e[1]), .datain (p_i_pixel[1]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_e_0_ (.regout (e[0]), .datain (p_i_pixel[0]), .sdata (
                       1'b0), .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_d_7_ (.regout (d[7]), .datain (nx36625z1), .sdata (
                       tempStorage_2__7_), .clk (p_i_clock), .ena (nx20492z3), .aclr (
                       1'b0), .sclr (1'b0), .sload (state[1])) ;
    cycloneii_lcell_ff reg_d_6_ (.regout (d[6]), .datain (nx35628z1), .sdata (
                       tempStorage_2__6_), .clk (p_i_clock), .ena (nx20492z3), .aclr (
                       1'b0), .sclr (1'b0), .sload (state[1])) ;
    cycloneii_lcell_ff reg_d_5_ (.regout (d[5]), .datain (nx34631z1), .sdata (
                       tempStorage_2__5_), .clk (p_i_clock), .ena (nx20492z3), .aclr (
                       1'b0), .sclr (1'b0), .sload (state[1])) ;
    cycloneii_lcell_ff reg_d_4_ (.regout (d[4]), .datain (nx33634z1), .sdata (
                       tempStorage_2__4_), .clk (p_i_clock), .ena (nx20492z3), .aclr (
                       1'b0), .sclr (1'b0), .sload (state[1])) ;
    cycloneii_lcell_ff reg_d_3_ (.regout (d[3]), .datain (nx32637z1), .sdata (
                       tempStorage_2__3_), .clk (p_i_clock), .ena (nx20492z3), .aclr (
                       1'b0), .sclr (1'b0), .sload (state[1])) ;
    cycloneii_lcell_ff reg_d_2_ (.regout (d[2]), .datain (nx31640z1), .sdata (
                       tempStorage_2__2_), .clk (p_i_clock), .ena (nx20492z3), .aclr (
                       1'b0), .sclr (1'b0), .sload (state[1])) ;
    cycloneii_lcell_ff reg_d_1_ (.regout (d[1]), .datain (nx30643z1), .sdata (
                       tempStorage_2__1_), .clk (p_i_clock), .ena (nx20492z3), .aclr (
                       1'b0), .sclr (1'b0), .sload (state[1])) ;
    cycloneii_lcell_ff reg_d_0_ (.regout (d[0]), .datain (nx29646z1), .sdata (
                       tempStorage_2__0_), .clk (p_i_clock), .ena (nx20492z3), .aclr (
                       1'b0), .sclr (1'b0), .sload (state[1])) ;
    cycloneii_lcell_ff reg_c_7_ (.regout (c[7]), .datain (nx20492z1), .sdata (
                       tempStorage_2__7_), .clk (p_i_clock), .ena (nx20492z3), .aclr (
                       1'b0), .sclr (1'b0), .sload (state[0])) ;
    cycloneii_lcell_ff reg_c_6_ (.regout (c[6]), .datain (nx21489z1), .sdata (
                       tempStorage_2__6_), .clk (p_i_clock), .ena (nx20492z3), .aclr (
                       1'b0), .sclr (1'b0), .sload (state[0])) ;
    cycloneii_lcell_ff reg_c_5_ (.regout (c[5]), .datain (nx22486z1), .sdata (
                       tempStorage_2__5_), .clk (p_i_clock), .ena (nx20492z3), .aclr (
                       1'b0), .sclr (1'b0), .sload (state[0])) ;
    cycloneii_lcell_ff reg_c_4_ (.regout (c[4]), .datain (nx23483z1), .sdata (
                       tempStorage_2__4_), .clk (p_i_clock), .ena (nx20492z3), .aclr (
                       1'b0), .sclr (1'b0), .sload (state[0])) ;
    cycloneii_lcell_ff reg_c_3_ (.regout (c[3]), .datain (nx24480z1), .sdata (
                       tempStorage_2__3_), .clk (p_i_clock), .ena (nx20492z3), .aclr (
                       1'b0), .sclr (1'b0), .sload (state[0])) ;
    cycloneii_lcell_ff reg_c_2_ (.regout (c[2]), .datain (nx25477z1), .sdata (
                       tempStorage_2__2_), .clk (p_i_clock), .ena (nx20492z3), .aclr (
                       1'b0), .sclr (1'b0), .sload (state[0])) ;
    cycloneii_lcell_ff reg_c_1_ (.regout (c[1]), .datain (nx26474z1), .sdata (
                       tempStorage_2__1_), .clk (p_i_clock), .ena (nx20492z3), .aclr (
                       1'b0), .sclr (1'b0), .sload (state[0])) ;
    cycloneii_lcell_ff reg_c_0_ (.regout (c[0]), .datain (nx27471z1), .sdata (
                       tempStorage_2__0_), .clk (p_i_clock), .ena (nx20492z3), .aclr (
                       1'b0), .sclr (1'b0), .sload (state[0])) ;
    cycloneii_lcell_ff reg_b_d1_9_ (.regout (b_d1[9]), .datain (b_d1_7n4s1[9]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (validBit_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_d1_8_ (.regout (b_d1[8]), .datain (b_d1_7n4s1[0]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (validBit_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_d1_7_ (.regout (b_d1[7]), .datain (b_d1_7n4s1[1]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (validBit_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_d1_6_ (.regout (b_d1[6]), .datain (b_d1_7n4s1[2]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (validBit_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_d1_5_ (.regout (b_d1[5]), .datain (b_d1_7n4s1[3]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (validBit_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_d1_4_ (.regout (b_d1[4]), .datain (b_d1_7n4s1[4]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (validBit_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_d1_3_ (.regout (b_d1[3]), .datain (b_d1_7n4s1[5]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (validBit_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_d1_2_ (.regout (b_d1[2]), .datain (b_d1_7n4s1[6]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (validBit_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_d1_1_ (.regout (b_d1[1]), .datain (b_d1_7n4s1[7]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (validBit_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_d1_0_ (.regout (b_d1[0]), .datain (b_d1_7n4s1[8]), 
                       .sdata (1'b0), .clk (p_i_clock), .ena (validBit_1_), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_7_ (.regout (b[7]), .datain (c[7]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_6_ (.regout (b[6]), .datain (c[6]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_5_ (.regout (b[5]), .datain (c[5]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_4_ (.regout (b[4]), .datain (c[4]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_3_ (.regout (b[3]), .datain (c[3]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_2_ (.regout (b[2]), .datain (c[2]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_1_ (.regout (b[1]), .datain (c[1]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_b_0_ (.regout (b[0]), .datain (c[0]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_a_7_ (.regout (a[7]), .datain (b[7]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_a_6_ (.regout (a[6]), .datain (b[6]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_a_5_ (.regout (a[5]), .datain (b[5]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_a_4_ (.regout (a[4]), .datain (b[4]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_a_3_ (.regout (a[3]), .datain (b[3]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_a_2_ (.regout (a[2]), .datain (b[2]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_a_1_ (.regout (a[1]), .datain (b[1]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_a_0_ (.regout (a[0]), .datain (b[0]), .sdata (1'b0), 
                       .clk (p_i_clock), .ena (nx20492z3), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_comb ix51677z52957 (.combout (r2_6n3s1f2[0]), .dataa (g[0])
                         , .datab (a[0]), .datac (nx51677z11), .datad (
                         nx51677z20), .cin (1'b0)) ;
                         
                         defparam ix51677z52957.lut_mask = 16'hafc0;
    cycloneii_lcell_comb ix51677z52958 (.combout (nx51677z20), .dataa (c[0]), .datab (
                         nx51677z11), .datac (nx51677z13), .datad (e[0]), .cin (
                         1'b0)) ;
                         defparam ix51677z52958.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix51677z52955 (.combout (r2_6n3s1f2[1]), .dataa (g[1])
                         , .datab (a[1]), .datac (nx51677z11), .datad (
                         nx51677z19), .cin (1'b0)) ;
                         
                         defparam ix51677z52955.lut_mask = 16'hafc0;
    cycloneii_lcell_comb ix51677z52956 (.combout (nx51677z19), .dataa (c[1]), .datab (
                         nx51677z11), .datac (nx51677z13), .datad (e[1]), .cin (
                         1'b0)) ;
                         defparam ix51677z52956.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix51677z52953 (.combout (r2_6n3s1f2[2]), .dataa (g[2])
                         , .datab (a[2]), .datac (nx51677z11), .datad (
                         nx51677z18), .cin (1'b0)) ;
                         
                         defparam ix51677z52953.lut_mask = 16'hafc0;
    cycloneii_lcell_comb ix51677z52954 (.combout (nx51677z18), .dataa (c[2]), .datab (
                         nx51677z11), .datac (nx51677z13), .datad (e[2]), .cin (
                         1'b0)) ;
                         defparam ix51677z52954.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix51677z52951 (.combout (r2_6n3s1f2[3]), .dataa (g[3])
                         , .datab (a[3]), .datac (nx51677z11), .datad (
                         nx51677z17), .cin (1'b0)) ;
                         
                         defparam ix51677z52951.lut_mask = 16'hafc0;
    cycloneii_lcell_comb ix51677z52952 (.combout (nx51677z17), .dataa (c[3]), .datab (
                         nx51677z11), .datac (nx51677z13), .datad (e[3]), .cin (
                         1'b0)) ;
                         defparam ix51677z52952.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix51677z52949 (.combout (r2_6n3s1f2[4]), .dataa (g[4])
                         , .datab (a[4]), .datac (nx51677z11), .datad (
                         nx51677z16), .cin (1'b0)) ;
                         
                         defparam ix51677z52949.lut_mask = 16'hafc0;
    cycloneii_lcell_comb ix51677z52950 (.combout (nx51677z16), .dataa (c[4]), .datab (
                         nx51677z11), .datac (nx51677z13), .datad (e[4]), .cin (
                         1'b0)) ;
                         defparam ix51677z52950.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix51677z52947 (.combout (r2_6n3s1f2[5]), .dataa (g[5])
                         , .datab (a[5]), .datac (nx51677z11), .datad (
                         nx51677z15), .cin (1'b0)) ;
                         
                         defparam ix51677z52947.lut_mask = 16'hafc0;
    cycloneii_lcell_comb ix51677z52948 (.combout (nx51677z15), .dataa (c[5]), .datab (
                         nx51677z11), .datac (nx51677z13), .datad (e[5]), .cin (
                         1'b0)) ;
                         defparam ix51677z52948.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix51677z52945 (.combout (r2_6n3s1f2[6]), .dataa (g[6])
                         , .datab (a[6]), .datac (nx51677z11), .datad (
                         nx51677z14), .cin (1'b0)) ;
                         
                         defparam ix51677z52945.lut_mask = 16'hafc0;
    cycloneii_lcell_comb ix51677z52946 (.combout (nx51677z14), .dataa (c[6]), .datab (
                         nx51677z11), .datac (nx51677z13), .datad (e[6]), .cin (
                         1'b0)) ;
                         defparam ix51677z52946.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix51677z52941 (.combout (r2_6n3s1f2[7]), .dataa (g[7])
                         , .datab (a[7]), .datac (nx51677z11), .datad (
                         nx51677z12), .cin (1'b0)) ;
                         
                         defparam ix51677z52941.lut_mask = 16'hafc0;
    cycloneii_lcell_comb ix51677z52943 (.combout (nx51677z12), .dataa (c[7]), .datab (
                         nx51677z11), .datac (nx51677z13), .datad (e[7]), .cin (
                         1'b0)) ;
                         defparam ix51677z52943.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix51677z52939 (.combout (r2_6n3s1f1[0]), .dataa (d[0])
                         , .datab (b[0]), .datac (nx51677z1), .datad (nx51677z10
                         ), .cin (1'b0)) ;
                         
                         defparam ix51677z52939.lut_mask = 16'hafc0;
    cycloneii_lcell_comb ix51677z52940 (.combout (nx51677z10), .dataa (h[0]), .datab (
                         nx51677z1), .datac (nx51677z3), .datad (f[0]), .cin (
                         1'b0)) ;
                         defparam ix51677z52940.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix51677z52937 (.combout (r2_6n3s1f1[1]), .dataa (d[1])
                         , .datab (b[1]), .datac (nx51677z1), .datad (nx51677z9)
                         , .cin (1'b0)) ;
                         
                         defparam ix51677z52937.lut_mask = 16'hafc0;
    cycloneii_lcell_comb ix51677z52938 (.combout (nx51677z9), .dataa (h[1]), .datab (
                         nx51677z1), .datac (nx51677z3), .datad (f[1]), .cin (
                         1'b0)) ;
                         defparam ix51677z52938.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix51677z52935 (.combout (r2_6n3s1f1[2]), .dataa (d[2])
                         , .datab (b[2]), .datac (nx51677z1), .datad (nx51677z8)
                         , .cin (1'b0)) ;
                         
                         defparam ix51677z52935.lut_mask = 16'hafc0;
    cycloneii_lcell_comb ix51677z52936 (.combout (nx51677z8), .dataa (h[2]), .datab (
                         nx51677z1), .datac (nx51677z3), .datad (f[2]), .cin (
                         1'b0)) ;
                         defparam ix51677z52936.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix51677z52933 (.combout (r2_6n3s1f1[3]), .dataa (d[3])
                         , .datab (b[3]), .datac (nx51677z1), .datad (nx51677z7)
                         , .cin (1'b0)) ;
                         
                         defparam ix51677z52933.lut_mask = 16'hafc0;
    cycloneii_lcell_comb ix51677z52934 (.combout (nx51677z7), .dataa (h[3]), .datab (
                         nx51677z1), .datac (nx51677z3), .datad (f[3]), .cin (
                         1'b0)) ;
                         defparam ix51677z52934.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix51677z52931 (.combout (r2_6n3s1f1[4]), .dataa (d[4])
                         , .datab (b[4]), .datac (nx51677z1), .datad (nx51677z6)
                         , .cin (1'b0)) ;
                         
                         defparam ix51677z52931.lut_mask = 16'hafc0;
    cycloneii_lcell_comb ix51677z52932 (.combout (nx51677z6), .dataa (h[4]), .datab (
                         nx51677z1), .datac (nx51677z3), .datad (f[4]), .cin (
                         1'b0)) ;
                         defparam ix51677z52932.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix51677z52929 (.combout (r2_6n3s1f1[5]), .dataa (d[5])
                         , .datab (b[5]), .datac (nx51677z1), .datad (nx51677z5)
                         , .cin (1'b0)) ;
                         
                         defparam ix51677z52929.lut_mask = 16'hafc0;
    cycloneii_lcell_comb ix51677z52930 (.combout (nx51677z5), .dataa (h[5]), .datab (
                         nx51677z1), .datac (nx51677z3), .datad (f[5]), .cin (
                         1'b0)) ;
                         defparam ix51677z52930.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix51677z52927 (.combout (r2_6n3s1f1[6]), .dataa (d[6])
                         , .datab (b[6]), .datac (nx51677z1), .datad (nx51677z4)
                         , .cin (1'b0)) ;
                         
                         defparam ix51677z52927.lut_mask = 16'hafc0;
    cycloneii_lcell_comb ix51677z52928 (.combout (nx51677z4), .dataa (h[6]), .datab (
                         nx51677z1), .datac (nx51677z3), .datad (f[6]), .cin (
                         1'b0)) ;
                         defparam ix51677z52928.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix51677z52923 (.combout (r2_6n3s1f1[7]), .dataa (d[7])
                         , .datab (b[7]), .datac (nx51677z1), .datad (nx51677z2)
                         , .cin (1'b0)) ;
                         
                         defparam ix51677z52923.lut_mask = 16'hafc0;
    cycloneii_lcell_comb ix51677z52925 (.combout (nx51677z2), .dataa (h[7]), .datab (
                         nx51677z1), .datac (nx51677z3), .datad (f[7]), .cin (
                         1'b0)) ;
                         defparam ix51677z52925.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix17322z52926 (.combout (nx17322z4), .dataa (nx17322z1)
                         , .datab (p_nrst_int), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix17322z52926.lut_mask = 16'hbbbb;
    cycloneii_lcell_comb ix20492z52924 (.combout (nx20492z3), .dataa (p_i_valid)
                         , .datab (p_nrst_int), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix20492z52924.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix40914z52923 (.combout (nx40914z1), .dataa (vBit[1]), 
                         .datab (p_nrst_int), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix40914z52923.lut_mask = 16'hbbbb;
    cycloneii_lcell_comb ix51677z52942 (.combout (nx51677z11), .dataa (
                         validBit_1_), .datab (validBit_2_), .datac (validBit_0_
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix51677z52942.lut_mask = 16'h0b0b;
    cycloneii_lcell_comb ix11673z52927 (.combout (nx11673z5), .dataa (p_o_row[7]
                         ), .datab (p_o_row[6]), .datac (p_o_row[1]), .datad (
                         p_o_row[0]), .cin (1'b0)) ;
                         
                         defparam ix11673z52927.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix17322z52925 (.combout (nx17322z3), .dataa (col[1]), .datab (
                         col[2]), .datac (col[3]), .datad (col[4]), .cin (1'b0)
                         ) ;
                         defparam ix17322z52925.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix17322z52924 (.combout (nx17322z2), .dataa (col[0]), .datab (
                         col[5]), .datac (col[6]), .datad (col[7]), .cin (1'b0)
                         ) ;
                         defparam ix17322z52924.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix11673z52925 (.combout (nx11673z3), .dataa (col[1]), .datab (
                         col[2]), .datac (col[5]), .datad (col[6]), .cin (1'b0)
                         ) ;
                         defparam ix11673z52925.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix6165z52926 (.combout (nx6165z2), .dataa (r17_7_), .datab (
                         r17_8_), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix6165z52926.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix20419z52924 (.combout (nx20419z2), .dataa (p_o_row[7]
                         ), .datab (p_o_row[6]), .datac (p_o_row[1]), .datad (
                         nx11673z4), .cin (1'b0)) ;
                         
                         defparam ix20419z52924.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix11673z52926 (.combout (nx11673z4), .dataa (p_o_row[5]
                         ), .datab (p_o_row[4]), .datac (p_o_row[3]), .datad (
                         p_o_row[2]), .cin (1'b0)) ;
                         
                         defparam ix11673z52926.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix6165z52925 (.combout (nx6165z1), .dataa (r17_9_), .datab (
                         r17_10_), .datac (r17_11_), .datad (p_o_valid), .cin (
                         1'b0)) ;
                         defparam ix6165z52925.lut_mask = 16'hfe00;
    cycloneii_lcell_comb ix11673z52924 (.combout (nx11673z2), .dataa (col[3]), .datab (
                         col[4]), .datac (col[7]), .datad (nx11673z3), .cin (
                         1'b0)) ;
                         defparam ix11673z52924.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix51677z52926 (.combout (nx51677z3), .dataa (
                         validBit_1_), .datab (validBit_2_), .datac (validBit_0_
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix51677z52926.lut_mask = 16'h0e0e;
    cycloneii_lcell_comb ix51677z52924 (.combout (nx51677z1), .dataa (
                         validBit_1_), .datab (validBit_2_), .datac (validBit_0_
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix51677z52924.lut_mask = 16'hf4f4;
    cycloneii_lcell_comb ix36625z52923 (.combout (nx36625z1), .dataa (state[2])
                         , .datab (tempStorage_1__7_), .datac (tempStorage_0__7_
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix36625z52923.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix35628z52923 (.combout (nx35628z1), .dataa (state[2])
                         , .datab (tempStorage_1__6_), .datac (tempStorage_0__6_
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix35628z52923.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix34631z52923 (.combout (nx34631z1), .dataa (state[2])
                         , .datab (tempStorage_1__5_), .datac (tempStorage_0__5_
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix34631z52923.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix33634z52923 (.combout (nx33634z1), .dataa (state[2])
                         , .datab (tempStorage_1__4_), .datac (tempStorage_0__4_
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix33634z52923.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix32637z52923 (.combout (nx32637z1), .dataa (state[2])
                         , .datab (tempStorage_1__3_), .datac (tempStorage_0__3_
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix32637z52923.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix31640z52923 (.combout (nx31640z1), .dataa (state[2])
                         , .datab (tempStorage_1__2_), .datac (tempStorage_0__2_
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix31640z52923.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix30643z52923 (.combout (nx30643z1), .dataa (state[2])
                         , .datab (tempStorage_1__1_), .datac (tempStorage_0__1_
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix30643z52923.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix29646z52923 (.combout (nx29646z1), .dataa (state[2])
                         , .datab (tempStorage_1__0_), .datac (tempStorage_0__0_
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix29646z52923.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix20492z52923 (.combout (nx20492z1), .dataa (nx20492z2)
                         , .datab (tempStorage_1__7_), .datac (tempStorage_0__7_
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix20492z52923.lut_mask = 16'he4e4;
    cycloneii_lcell_comb ix21489z52923 (.combout (nx21489z1), .dataa (nx20492z2)
                         , .datab (tempStorage_1__6_), .datac (tempStorage_0__6_
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix21489z52923.lut_mask = 16'he4e4;
    cycloneii_lcell_comb ix22486z52923 (.combout (nx22486z1), .dataa (nx20492z2)
                         , .datab (tempStorage_1__5_), .datac (tempStorage_0__5_
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix22486z52923.lut_mask = 16'he4e4;
    cycloneii_lcell_comb ix23483z52923 (.combout (nx23483z1), .dataa (nx20492z2)
                         , .datab (tempStorage_1__4_), .datac (tempStorage_0__4_
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix23483z52923.lut_mask = 16'he4e4;
    cycloneii_lcell_comb ix24480z52923 (.combout (nx24480z1), .dataa (nx20492z2)
                         , .datab (tempStorage_1__3_), .datac (tempStorage_0__3_
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix24480z52923.lut_mask = 16'he4e4;
    cycloneii_lcell_comb ix25477z52923 (.combout (nx25477z1), .dataa (nx20492z2)
                         , .datab (tempStorage_1__2_), .datac (tempStorage_0__2_
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix25477z52923.lut_mask = 16'he4e4;
    cycloneii_lcell_comb ix26474z52923 (.combout (nx26474z1), .dataa (nx20492z2)
                         , .datab (tempStorage_1__1_), .datac (tempStorage_0__1_
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix26474z52923.lut_mask = 16'he4e4;
    cycloneii_lcell_comb ix27471z52923 (.combout (nx27471z1), .dataa (nx20492z2)
                         , .datab (tempStorage_1__0_), .datac (tempStorage_0__0_
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix27471z52923.lut_mask = 16'he4e4;
    cycloneii_lcell_comb ix7740z52923 (.combout (we[0]), .dataa (p_i_valid), .datab (
                         nx20492z2), .datac (1'b1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix7740z52923.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix62017z52923 (.combout (we[1]), .dataa (p_i_valid), .datab (
                         state[0]), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix62017z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix64834z52923 (.combout (we[2]), .dataa (p_i_valid), .datab (
                         state[2]), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix64834z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix11673z52923 (.combout (nx11673z1), .dataa (col[0]), .datab (
                         nx11673z2), .datac (nx11673z4), .datad (nx11673z5), .cin (
                         1'b0)) ;
                         defparam ix11673z52923.lut_mask = 16'h111f;
    cycloneii_lcell_comb ix20419z52923 (.combout (nx20419z1), .dataa (p_i_valid)
                         , .datab (nx11673z2), .datac (nx20419z2), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix20419z52923.lut_mask = 16'h8080;
    cycloneii_lcell_comb ix27953z52923 (.combout (nx27953z1), .dataa (
                         validBit_1_), .datab (validBit_2_), .datac (validBit_0_
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix27953z52923.lut_mask = 16'h0404;
    cycloneii_lcell_comb ix13424z52924 (.combout (nx13424z2), .dataa (
                         validBit_1_), .datab (validBit_0_), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix13424z52924.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix6165z52924 (.combout (p_o_edge), .dataa (r17_12_), .datab (
                         p_o_valid), .datac (nx6165z1), .datad (nx6165z2), .cin (
                         1'b0)) ;
                         defparam ix6165z52924.lut_mask = 16'hfcf8;
    cycloneii_lcell_comb ix8431z52923 (.combout (x_r3_7n3s1f1[7]), .dataa (r5[7]
                         ), .datab (x_r5[7]), .datac (validBit_2_), .datad (1'b1
                         ), .cin (1'b0)) ;
                         
                         defparam ix8431z52923.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix8431z52924 (.combout (x_r3_7n3s1f1[6]), .dataa (r5[6]
                         ), .datab (x_r5[6]), .datac (validBit_2_), .datad (1'b1
                         ), .cin (1'b0)) ;
                         
                         defparam ix8431z52924.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix8431z52925 (.combout (x_r3_7n3s1f1[5]), .dataa (r5[5]
                         ), .datab (x_r5[5]), .datac (validBit_2_), .datad (1'b1
                         ), .cin (1'b0)) ;
                         
                         defparam ix8431z52925.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix8431z52926 (.combout (x_r3_7n3s1f1[4]), .dataa (r5[4]
                         ), .datab (x_r5[4]), .datac (validBit_2_), .datad (1'b1
                         ), .cin (1'b0)) ;
                         
                         defparam ix8431z52926.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix8431z52927 (.combout (x_r3_7n3s1f1[3]), .dataa (r5[3]
                         ), .datab (x_r5[3]), .datac (validBit_2_), .datad (1'b1
                         ), .cin (1'b0)) ;
                         
                         defparam ix8431z52927.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix8431z52928 (.combout (x_r3_7n3s1f1[2]), .dataa (r5[2]
                         ), .datab (x_r5[2]), .datac (validBit_2_), .datad (1'b1
                         ), .cin (1'b0)) ;
                         
                         defparam ix8431z52928.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix8431z52929 (.combout (x_r3_7n3s1f1[1]), .dataa (r5[1]
                         ), .datab (x_r5[1]), .datac (validBit_2_), .datad (1'b1
                         ), .cin (1'b0)) ;
                         
                         defparam ix8431z52929.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix8431z52930 (.combout (x_r3_7n3s1f1[0]), .dataa (r5[0]
                         ), .datab (x_r5[0]), .datac (validBit_2_), .datad (1'b1
                         ), .cin (1'b0)) ;
                         
                         defparam ix8431z52930.lut_mask = 16'hacac;
    cycloneii_lcell_comb ix7951z52924 (.combout (nx7951z2), .dataa (validBit_3_)
                         , .datab (validBit_1_), .datac (validBit_2_), .datad (
                         validBit_0_), .cin (1'b0)) ;
                         
                         defparam ix7951z52924.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix34104z52923 (.combout (nx34104z1), .dataa (
                         validBit_4_), .datab (validBit_3_), .datac (validBit_1_
                         ), .datad (validBit_2_), .cin (1'b0)) ;
                         
                         defparam ix34104z52923.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix54873z52923 (.combout (nx54873z1), .dataa (
                         validBit_3_), .datab (validBit_1_), .datac (validBit_2_
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix54873z52923.lut_mask = 16'h0202;
    cycloneii_lcell_comb ix56415z52923 (.combout (nx56415z1), .dataa (
                         validBit_1_), .datab (validBit_2_), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix56415z52923.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix65254z52923 (.combout (nx65254z1), .dataa (
                         validBit_5_), .datab (validBit_4_), .datac (validBit_3_
                         ), .datad (validBit_2_), .cin (1'b0)) ;
                         
                         defparam ix65254z52923.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix58464z52923 (.combout (nx58464z1), .dataa (
                         validBit_4_), .datab (validBit_3_), .datac (validBit_2_
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix58464z52923.lut_mask = 16'h0202;
    cycloneii_lcell_comb ix16422z52923 (.combout (nx16422z1), .dataa (
                         validBit_3_), .datab (validBit_2_), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix16422z52923.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix35772z52923 (.combout (nx35772z1), .dataa (
                         validBit_6_), .datab (validBit_5_), .datac (validBit_3_
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix35772z52923.lut_mask = 16'h0202;
    cycloneii_lcell_comb ix64999z52923 (.combout (nx64999z1), .dataa (
                         validBit_5_), .datab (validBit_3_), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix64999z52923.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix45375z52923 (.combout (first_cw_9n1ss1_0_), .dataa (
                         stage1_wNw_0_), .datab (nx47369z1), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix45375z52923.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix1457z52923 (.combout (second_cw_9n2ss1_0_), .dataa (
                         stage1_eSe_2_), .datab (nx64999z2), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix1457z52923.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix8159z52923 (.combout (p_o_dir[0]), .dataa (
                         final_dir[0]), .datab (p_o_edge), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix8159z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix7162z52923 (.combout (p_o_dir[1]), .dataa (
                         final_dir[1]), .datab (p_o_edge), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix7162z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix6165z52923 (.combout (p_o_dir[2]), .dataa (
                         final_dir[2]), .datab (p_o_edge), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix6165z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix17322z52923 (.combout (nx17322z1), .dataa (vBit[2]), 
                         .datab (p_i_valid), .datac (nx17322z2), .datad (
                         nx17322z3), .cin (1'b0)) ;
                         
                         defparam ix17322z52923.lut_mask = 16'h2000;
    cycloneii_lcell_comb ix51677z52944 (.combout (nx51677z13), .dataa (
                         validBit_1_), .datab (validBit_2_), .datac (validBit_0_
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix51677z52944.lut_mask = 16'hf1f1;
endmodule


module ram_dq_8_2 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;

    wire ena1_rename986;



    altsyncram ix64056z29483 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename986), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
               rd_data1[4],rd_data1[3],rd_data1[2],rd_data1[1],rd_data1[0]})) ;
               
               defparam ix64056z29483.width_a = 8;
               
               defparam ix64056z29483.widthad_a = 8;
               
               defparam ix64056z29483.numwords_a = 256;
               
               defparam ix64056z29483.outdata_reg_a = "UNREGISTERED";
               
               defparam ix64056z29483.address_aclr_a = "NONE";
               
               defparam ix64056z29483.outdata_aclr_a = "NONE";
               
               defparam ix64056z29483.indata_aclr_a = "NONE";
               
               defparam ix64056z29483.wrcontrol_aclr_a = "NONE";
               
               defparam ix64056z29483.byteena_aclr_a = "NONE";
               
               defparam ix64056z29483.width_byteena_a = 1;
               
               defparam ix64056z29483.width_b = 8;
               
               defparam ix64056z29483.widthad_b = 8;
               
               defparam ix64056z29483.numwords_b = 256;
               
               defparam ix64056z29483.rdcontrol_reg_b = "CLOCK1";
               
               defparam ix64056z29483.address_reg_b = "CLOCK1";
               
               defparam ix64056z29483.outdata_reg_b = "UNREGISTERED";
               
               defparam ix64056z29483.outdata_aclr_b = "NONE";
               
               defparam ix64056z29483.rdcontrol_aclr_b = "NONE";
               
               defparam ix64056z29483.indata_reg_b = "CLOCK1";
               
               defparam ix64056z29483.wrcontrol_wraddress_reg_b = "CLOCK1";
               
               defparam ix64056z29483.byteena_reg_b = "CLOCK1";
               
               defparam ix64056z29483.indata_aclr_b = "NONE";
               
               defparam ix64056z29483.wrcontrol_aclr_b = "NONE";
               
               defparam ix64056z29483.byteena_aclr_b = "NONE";
               
               defparam ix64056z29483.width_byteena_b = 1;
               
               defparam ix64056z29483.address_aclr_b = "NONE";
               
               defparam ix64056z29483.operation_mode = "SINGLE_PORT";
               
               defparam ix64056z29483.byte_size = 8;
               
               defparam ix64056z29483.read_during_write_mode_mixed_ports = "DONT_CARE";
               
               defparam ix64056z29483.ram_block_type = "AUTO";
               
               defparam ix64056z29483.init_file = "UNUSED";
               
               defparam ix64056z29483.init_file_layout = "UNUSED";
               
               defparam ix64056z29483.maximum_depth = 0;
               
               defparam ix64056z29483.intended_device_family = "Stratix";
               
               defparam ix64056z29483.lpm_hint = "UNUSED";
               
               defparam ix64056z29483.lpm_type = "altsyncram";
    assign ena1_rename986 = 1 ;
endmodule


module ram_dq_8_1 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;

    wire ena1_rename956;



    altsyncram ix64056z29482 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename956), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
               rd_data1[4],rd_data1[3],rd_data1[2],rd_data1[1],rd_data1[0]})) ;
               
               defparam ix64056z29482.width_a = 8;
               
               defparam ix64056z29482.widthad_a = 8;
               
               defparam ix64056z29482.numwords_a = 256;
               
               defparam ix64056z29482.outdata_reg_a = "UNREGISTERED";
               
               defparam ix64056z29482.address_aclr_a = "NONE";
               
               defparam ix64056z29482.outdata_aclr_a = "NONE";
               
               defparam ix64056z29482.indata_aclr_a = "NONE";
               
               defparam ix64056z29482.wrcontrol_aclr_a = "NONE";
               
               defparam ix64056z29482.byteena_aclr_a = "NONE";
               
               defparam ix64056z29482.width_byteena_a = 1;
               
               defparam ix64056z29482.width_b = 8;
               
               defparam ix64056z29482.widthad_b = 8;
               
               defparam ix64056z29482.numwords_b = 256;
               
               defparam ix64056z29482.rdcontrol_reg_b = "CLOCK1";
               
               defparam ix64056z29482.address_reg_b = "CLOCK1";
               
               defparam ix64056z29482.outdata_reg_b = "UNREGISTERED";
               
               defparam ix64056z29482.outdata_aclr_b = "NONE";
               
               defparam ix64056z29482.rdcontrol_aclr_b = "NONE";
               
               defparam ix64056z29482.indata_reg_b = "CLOCK1";
               
               defparam ix64056z29482.wrcontrol_wraddress_reg_b = "CLOCK1";
               
               defparam ix64056z29482.byteena_reg_b = "CLOCK1";
               
               defparam ix64056z29482.indata_aclr_b = "NONE";
               
               defparam ix64056z29482.wrcontrol_aclr_b = "NONE";
               
               defparam ix64056z29482.byteena_aclr_b = "NONE";
               
               defparam ix64056z29482.width_byteena_b = 1;
               
               defparam ix64056z29482.address_aclr_b = "NONE";
               
               defparam ix64056z29482.operation_mode = "SINGLE_PORT";
               
               defparam ix64056z29482.byte_size = 8;
               
               defparam ix64056z29482.read_during_write_mode_mixed_ports = "DONT_CARE";
               
               defparam ix64056z29482.ram_block_type = "AUTO";
               
               defparam ix64056z29482.init_file = "UNUSED";
               
               defparam ix64056z29482.init_file_layout = "UNUSED";
               
               defparam ix64056z29482.maximum_depth = 0;
               
               defparam ix64056z29482.intended_device_family = "Stratix";
               
               defparam ix64056z29482.lpm_hint = "UNUSED";
               
               defparam ix64056z29482.lpm_type = "altsyncram";
    assign ena1_rename956 = 1 ;
endmodule


module ram_dq_8_0 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;

    wire ena1_rename926;



    altsyncram ix64056z29481 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename926), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
               rd_data1[4],rd_data1[3],rd_data1[2],rd_data1[1],rd_data1[0]})) ;
               
               defparam ix64056z29481.width_a = 8;
               
               defparam ix64056z29481.widthad_a = 8;
               
               defparam ix64056z29481.numwords_a = 256;
               
               defparam ix64056z29481.outdata_reg_a = "UNREGISTERED";
               
               defparam ix64056z29481.address_aclr_a = "NONE";
               
               defparam ix64056z29481.outdata_aclr_a = "NONE";
               
               defparam ix64056z29481.indata_aclr_a = "NONE";
               
               defparam ix64056z29481.wrcontrol_aclr_a = "NONE";
               
               defparam ix64056z29481.byteena_aclr_a = "NONE";
               
               defparam ix64056z29481.width_byteena_a = 1;
               
               defparam ix64056z29481.width_b = 8;
               
               defparam ix64056z29481.widthad_b = 8;
               
               defparam ix64056z29481.numwords_b = 256;
               
               defparam ix64056z29481.rdcontrol_reg_b = "CLOCK1";
               
               defparam ix64056z29481.address_reg_b = "CLOCK1";
               
               defparam ix64056z29481.outdata_reg_b = "UNREGISTERED";
               
               defparam ix64056z29481.outdata_aclr_b = "NONE";
               
               defparam ix64056z29481.rdcontrol_aclr_b = "NONE";
               
               defparam ix64056z29481.indata_reg_b = "CLOCK1";
               
               defparam ix64056z29481.wrcontrol_wraddress_reg_b = "CLOCK1";
               
               defparam ix64056z29481.byteena_reg_b = "CLOCK1";
               
               defparam ix64056z29481.indata_aclr_b = "NONE";
               
               defparam ix64056z29481.wrcontrol_aclr_b = "NONE";
               
               defparam ix64056z29481.byteena_aclr_b = "NONE";
               
               defparam ix64056z29481.width_byteena_b = 1;
               
               defparam ix64056z29481.address_aclr_b = "NONE";
               
               defparam ix64056z29481.operation_mode = "SINGLE_PORT";
               
               defparam ix64056z29481.byte_size = 8;
               
               defparam ix64056z29481.read_during_write_mode_mixed_ports = "DONT_CARE";
               
               defparam ix64056z29481.ram_block_type = "AUTO";
               
               defparam ix64056z29481.init_file = "UNUSED";
               
               defparam ix64056z29481.init_file_layout = "UNUSED";
               
               defparam ix64056z29481.maximum_depth = 0;
               
               defparam ix64056z29481.intended_device_family = "Stratix";
               
               defparam ix64056z29481.lpm_hint = "UNUSED";
               
               defparam ix64056z29481.lpm_type = "altsyncram";
    assign ena1_rename926 = 1 ;
endmodule


module sub_12_0 ( cin, a, b, d, cout, p_x_r22_0_ ) ;

    input cin ;
    input [11:0]a ;
    input [11:0]b ;
    output [11:0]d ;
    output cout ;
    input p_x_r22_0_ ;

    wire nx63795z11, nx63795z10, nx63795z9, nx63795z8, nx63795z7, nx63795z6, 
         nx63795z5, nx63795z4, nx63795z3, nx63795z2, nx63795z1, 
         nx_sub_12_0_vcc_net;
    wire [20:0] xmplr_dummy ;




    cycloneii_lcell_comb ix63795z52923 (.combout (d[11]), .dataa (b[11]), .datab (
                         a[11]), .datac (1'b1), .datad (nx_sub_12_0_vcc_net), .cin (
                         nx63795z1)) ;
                         
                         defparam ix63795z52923.lut_mask = 16'h6900;
                         
                         defparam ix63795z52923.sum_lutc_input = "cin";
    assign nx_sub_12_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix63795z52925 (.combout (d[10]), .cout (nx63795z1), .dataa (
                         b[10]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_sub_12_0_vcc_net), .cin (nx63795z2)) ;
                         
                         defparam ix63795z52925.lut_mask = 16'h69d4;
                         
                         defparam ix63795z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52926 (.combout (d[9]), .cout (nx63795z2), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_sub_12_0_vcc_net), .cin (nx63795z3)) ;
                         
                         defparam ix63795z52926.lut_mask = 16'h69d4;
                         
                         defparam ix63795z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52927 (.combout (d[8]), .cout (nx63795z3), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_sub_12_0_vcc_net), .cin (nx63795z4)) ;
                         
                         defparam ix63795z52927.lut_mask = 16'h69d4;
                         
                         defparam ix63795z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52928 (.combout (d[7]), .cout (nx63795z4), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_sub_12_0_vcc_net), .cin (nx63795z5)) ;
                         
                         defparam ix63795z52928.lut_mask = 16'h69d4;
                         
                         defparam ix63795z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52929 (.combout (d[6]), .cout (nx63795z5), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_sub_12_0_vcc_net), .cin (nx63795z6)) ;
                         
                         defparam ix63795z52929.lut_mask = 16'h69d4;
                         
                         defparam ix63795z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52930 (.cout (nx63795z6), .dataa (b[5]), .datab (
                         a[5]), .datac (1'b1), .datad (nx_sub_12_0_vcc_net), .cin (
                         nx63795z7)) ;
                         
                         defparam ix63795z52930.lut_mask = 16'h00d4;
                         
                         defparam ix63795z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52931 (.cout (nx63795z7), .dataa (b[4]), .datab (
                         a[4]), .datac (1'b1), .datad (nx_sub_12_0_vcc_net), .cin (
                         nx63795z8)) ;
                         
                         defparam ix63795z52931.lut_mask = 16'h00d4;
                         
                         defparam ix63795z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52932 (.cout (nx63795z8), .dataa (b[3]), .datab (
                         a[3]), .datac (1'b1), .datad (nx_sub_12_0_vcc_net), .cin (
                         nx63795z9)) ;
                         
                         defparam ix63795z52932.lut_mask = 16'h00d4;
                         
                         defparam ix63795z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52933 (.cout (nx63795z9), .dataa (b[2]), .datab (
                         a[2]), .datac (1'b1), .datad (nx_sub_12_0_vcc_net), .cin (
                         nx63795z10)) ;
                         
                         defparam ix63795z52933.lut_mask = 16'h00d4;
                         
                         defparam ix63795z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52934 (.cout (nx63795z10), .dataa (b[1]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_sub_12_0_vcc_net), .cin (
                         nx63795z11)) ;
                         
                         defparam ix63795z52934.lut_mask = 16'h0050;
                         
                         defparam ix63795z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52935 (.cout (nx63795z11), .dataa (p_x_r22_0_)
                         , .datab (b[0]), .datac (1'b1), .datad (
                         nx_sub_12_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix63795z52935.lut_mask = 16'h0011;
endmodule


module add_11_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [10:0]a ;
    input [10:0]b ;
    output [10:0]d ;
    output cout ;

    wire nx62798z29, nx62798z26, nx62798z23, nx62798z20, nx62798z17, nx62798z14, 
         nx62798z11, nx62798z8, nx62798z5, nx62798z3, nx23445z2, 
         nx_add_11_0_vcc_net;
    wire [17:0] xmplr_dummy ;




    cycloneii_lcell_comb ix62798z52923 (.combout (d[10]), .cout (nx23445z2), .dataa (
                         b[10]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z3)) ;
                         
                         defparam ix62798z52923.lut_mask = 16'h5aa0;
                         
                         defparam ix62798z52923.sum_lutc_input = "cin";
    assign nx_add_11_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix62798z52925 (.combout (d[9]), .cout (nx62798z3), .dataa (
                         b[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z5)) ;
                         
                         defparam ix62798z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix62798z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52926 (.combout (d[8]), .cout (nx62798z5), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z8)) ;
                         
                         defparam ix62798z52926.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52927 (.combout (d[7]), .cout (nx62798z8), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z11)) ;
                         
                         defparam ix62798z52927.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52928 (.combout (d[6]), .cout (nx62798z11), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z14)) ;
                         
                         defparam ix62798z52928.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52929 (.combout (d[5]), .cout (nx62798z14), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z17)) ;
                         
                         defparam ix62798z52929.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52930 (.combout (d[4]), .cout (nx62798z17), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z20)) ;
                         
                         defparam ix62798z52930.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52931 (.combout (d[3]), .cout (nx62798z20), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z23)) ;
                         
                         defparam ix62798z52931.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52932 (.combout (d[2]), .cout (nx62798z23), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z26)) ;
                         
                         defparam ix62798z52932.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_11_0_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52933 (.combout (d[1]), .cout (nx62798z26), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (nx62798z29)) ;
                         
                         defparam ix62798z52933.lut_mask = 16'h96e8;
                         
                         defparam ix62798z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix62798z52934 (.combout (d[0]), .cout (nx62798z29), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_11_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix62798z52934.lut_mask = 16'h6688;
endmodule


module add_10_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [9:0]a ;
    input [9:0]b ;
    output [9:0]d ;
    output cout ;

    wire nx46946z27, nx46946z24, nx46946z21, nx46946z18, nx46946z15, nx46946z12, 
         nx46946z9, nx46946z6, nx46946z3, nx23445z2, nx_add_10_0_vcc_net;
    wire [15:0] xmplr_dummy ;




    cycloneii_lcell_comb ix46946z52923 (.combout (d[9]), .cout (nx23445z2), .dataa (
                         b[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_add_10_0_vcc_net), .cin (nx46946z3)) ;
                         
                         defparam ix46946z52923.lut_mask = 16'h5aa0;
                         
                         defparam ix46946z52923.sum_lutc_input = "cin";
    assign nx_add_10_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix46946z52925 (.combout (d[8]), .cout (nx46946z3), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_10_0_vcc_net), .cin (nx46946z6)) ;
                         
                         defparam ix46946z52925.lut_mask = 16'h96e8;
                         
                         defparam ix46946z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52926 (.combout (d[7]), .cout (nx46946z6), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_10_0_vcc_net), .cin (nx46946z9)) ;
                         
                         defparam ix46946z52926.lut_mask = 16'h96e8;
                         
                         defparam ix46946z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52927 (.combout (d[6]), .cout (nx46946z9), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_10_0_vcc_net), .cin (nx46946z12)) ;
                         
                         defparam ix46946z52927.lut_mask = 16'h96e8;
                         
                         defparam ix46946z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52928 (.combout (d[5]), .cout (nx46946z12), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_10_0_vcc_net), .cin (nx46946z15)) ;
                         
                         defparam ix46946z52928.lut_mask = 16'h96e8;
                         
                         defparam ix46946z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52929 (.combout (d[4]), .cout (nx46946z15), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_10_0_vcc_net), .cin (nx46946z18)) ;
                         
                         defparam ix46946z52929.lut_mask = 16'h96e8;
                         
                         defparam ix46946z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52930 (.combout (d[3]), .cout (nx46946z18), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_10_0_vcc_net), .cin (nx46946z21)) ;
                         
                         defparam ix46946z52930.lut_mask = 16'h96e8;
                         
                         defparam ix46946z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52931 (.combout (d[2]), .cout (nx46946z21), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_10_0_vcc_net), .cin (nx46946z24)) ;
                         
                         defparam ix46946z52931.lut_mask = 16'h96e8;
                         
                         defparam ix46946z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_10_0_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52932 (.combout (d[1]), .cout (nx46946z24), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_10_0_vcc_net), .cin (nx46946z27)) ;
                         
                         defparam ix46946z52932.lut_mask = 16'h96e8;
                         
                         defparam ix46946z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix46946z52933 (.combout (d[0]), .cout (nx46946z27), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_10_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix46946z52933.lut_mask = 16'h6688;
endmodule


module add_9_3 ( cin, a, b, d, cout ) ;

    input cin ;
    input [8:0]a ;
    input [8:0]b ;
    output [8:0]d ;
    output cout ;

    wire nx45949z25, nx45949z22, nx45949z19, nx45949z16, nx45949z13, nx45949z10, 
         nx45949z7, nx45949z4, nx23445z2, nx_add_9_3_vcc_net;
    wire [13:0] xmplr_dummy ;




    cycloneii_lcell_comb ix45949z52923 (.combout (d[8]), .cout (nx23445z2), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_9_3_vcc_net), .cin (nx45949z4)) ;
                         
                         defparam ix45949z52923.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52923.sum_lutc_input = "cin";
    assign nx_add_9_3_vcc_net = 1 ;
    cycloneii_lcell_comb ix45949z52925 (.combout (d[7]), .cout (nx45949z4), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_9_3_vcc_net), .cin (nx45949z7)) ;
                         
                         defparam ix45949z52925.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52926 (.combout (d[6]), .cout (nx45949z7), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_9_3_vcc_net), .cin (nx45949z10)) ;
                         
                         defparam ix45949z52926.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52927 (.combout (d[5]), .cout (nx45949z10), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_9_3_vcc_net), .cin (nx45949z13)) ;
                         
                         defparam ix45949z52927.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52928 (.combout (d[4]), .cout (nx45949z13), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_9_3_vcc_net), .cin (nx45949z16)) ;
                         
                         defparam ix45949z52928.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52929 (.combout (d[3]), .cout (nx45949z16), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_9_3_vcc_net), .cin (nx45949z19)) ;
                         
                         defparam ix45949z52929.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52930 (.combout (d[2]), .cout (nx45949z19), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_9_3_vcc_net), .cin (nx45949z22)) ;
                         
                         defparam ix45949z52930.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_9_3_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52931 (.combout (d[1]), .cout (nx45949z22), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_9_3_vcc_net), .cin (nx45949z25)) ;
                         
                         defparam ix45949z52931.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52932 (.combout (d[0]), .cout (nx45949z25), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_9_3_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix45949z52932.lut_mask = 16'h6688;
endmodule


module add_9_2 ( cin, a, b, d, cout ) ;

    input cin ;
    input [8:0]a ;
    input [8:0]b ;
    output [8:0]d ;
    output cout ;

    wire nx45949z24, nx45949z21, nx45949z18, nx45949z15, nx45949z12, nx45949z9, 
         nx45949z6, nx45949z3, nx23445z2, nx_add_9_2_vcc_net;
    wire [14:0] xmplr_dummy ;




    cycloneii_lcell_comb ix45949z52923 (.combout (d[8]), .cout (nx23445z2), .dataa (
                         b[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_add_9_2_vcc_net), .cin (nx45949z3)) ;
                         
                         defparam ix45949z52923.lut_mask = 16'h5aa0;
                         
                         defparam ix45949z52923.sum_lutc_input = "cin";
    assign nx_add_9_2_vcc_net = 1 ;
    cycloneii_lcell_comb ix45949z52925 (.combout (d[7]), .cout (nx45949z3), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_9_2_vcc_net), .cin (nx45949z6)) ;
                         
                         defparam ix45949z52925.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52926 (.combout (d[6]), .cout (nx45949z6), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_9_2_vcc_net), .cin (nx45949z9)) ;
                         
                         defparam ix45949z52926.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52927 (.combout (d[5]), .cout (nx45949z9), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_9_2_vcc_net), .cin (nx45949z12)) ;
                         
                         defparam ix45949z52927.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52928 (.combout (d[4]), .cout (nx45949z12), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_9_2_vcc_net), .cin (nx45949z15)) ;
                         
                         defparam ix45949z52928.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52929 (.combout (d[3]), .cout (nx45949z15), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_9_2_vcc_net), .cin (nx45949z18)) ;
                         
                         defparam ix45949z52929.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52930 (.combout (d[2]), .cout (nx45949z18), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_9_2_vcc_net), .cin (nx45949z21)) ;
                         
                         defparam ix45949z52930.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_9_2_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52931 (.combout (d[1]), .cout (nx45949z21), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_9_2_vcc_net), .cin (nx45949z24)) ;
                         
                         defparam ix45949z52931.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52932 (.combout (d[0]), .cout (nx45949z24), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_9_2_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix45949z52932.lut_mask = 16'h6688;
endmodule


module add_9_1 ( cin, a, b, d, cout ) ;

    input cin ;
    input [8:0]a ;
    input [8:0]b ;
    output [8:0]d ;
    output cout ;

    wire nx45949z24, nx45949z21, nx45949z18, nx45949z15, nx45949z12, nx45949z9, 
         nx45949z6, nx45949z3, nx23445z2, nx_add_9_1_vcc_net;
    wire [14:0] xmplr_dummy ;




    cycloneii_lcell_comb ix45949z52923 (.combout (d[8]), .cout (nx23445z2), .dataa (
                         a[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (nx45949z3)) ;
                         
                         defparam ix45949z52923.lut_mask = 16'h5aa0;
                         
                         defparam ix45949z52923.sum_lutc_input = "cin";
    assign nx_add_9_1_vcc_net = 1 ;
    cycloneii_lcell_comb ix45949z52925 (.combout (d[7]), .cout (nx45949z3), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (nx45949z6)) ;
                         
                         defparam ix45949z52925.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52926 (.combout (d[6]), .cout (nx45949z6), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (nx45949z9)) ;
                         
                         defparam ix45949z52926.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52927 (.combout (d[5]), .cout (nx45949z9), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (nx45949z12)) ;
                         
                         defparam ix45949z52927.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52928 (.combout (d[4]), .cout (nx45949z12), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (nx45949z15)) ;
                         
                         defparam ix45949z52928.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52929 (.combout (d[3]), .cout (nx45949z15), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (nx45949z18)) ;
                         
                         defparam ix45949z52929.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52930 (.combout (d[2]), .cout (nx45949z18), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (nx45949z21)) ;
                         
                         defparam ix45949z52930.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_9_1_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52931 (.combout (d[1]), .cout (nx45949z21), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (nx45949z24)) ;
                         
                         defparam ix45949z52931.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52932 (.combout (d[0]), .cout (nx45949z24), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_9_1_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix45949z52932.lut_mask = 16'h6688;
endmodule


module add_9_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [8:0]a ;
    input [8:0]b ;
    output [8:0]d ;
    output cout ;

    wire nx45949z24, nx45949z21, nx45949z18, nx45949z15, nx45949z12, nx45949z9, 
         nx45949z6, nx45949z3, nx23445z2, nx_add_9_0_vcc_net;
    wire [14:0] xmplr_dummy ;




    cycloneii_lcell_comb ix45949z52923 (.combout (d[8]), .cout (nx23445z2), .dataa (
                         a[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z3)) ;
                         
                         defparam ix45949z52923.lut_mask = 16'h5aa0;
                         
                         defparam ix45949z52923.sum_lutc_input = "cin";
    assign nx_add_9_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix45949z52925 (.combout (d[7]), .cout (nx45949z3), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z6)) ;
                         
                         defparam ix45949z52925.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52926 (.combout (d[6]), .cout (nx45949z6), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z9)) ;
                         
                         defparam ix45949z52926.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52927 (.combout (d[5]), .cout (nx45949z9), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z12)) ;
                         
                         defparam ix45949z52927.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52928 (.combout (d[4]), .cout (nx45949z12), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z15)) ;
                         
                         defparam ix45949z52928.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52929 (.combout (d[3]), .cout (nx45949z15), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z18)) ;
                         
                         defparam ix45949z52929.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52930 (.combout (d[2]), .cout (nx45949z18), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z21)) ;
                         
                         defparam ix45949z52930.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_9_0_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52931 (.combout (d[1]), .cout (nx45949z21), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z24)) ;
                         
                         defparam ix45949z52931.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52932 (.combout (d[0]), .cout (nx45949z24), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix45949z52932.lut_mask = 16'h6688;
endmodule


module add_8_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [7:0]a ;
    input [7:0]b ;
    output [7:0]d ;
    output cout ;

    wire nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, nx44952z7, 
         nx44952z4, nx23445z2, nx_add_8_0_vcc_net;
    wire [12:0] xmplr_dummy ;




    cycloneii_lcell_comb ix44952z52923 (.combout (d[7]), .cout (nx23445z2), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z4)) ;
                         
                         defparam ix44952z52923.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52923.sum_lutc_input = "cin";
    assign nx_add_8_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix44952z52925 (.combout (d[6]), .cout (nx44952z4), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z7)) ;
                         
                         defparam ix44952z52925.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52926 (.combout (d[5]), .cout (nx44952z7), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z10)) ;
                         
                         defparam ix44952z52926.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52927 (.combout (d[4]), .cout (nx44952z10), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z13)) ;
                         
                         defparam ix44952z52927.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52928 (.combout (d[3]), .cout (nx44952z13), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z16)) ;
                         
                         defparam ix44952z52928.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52929 (.combout (d[2]), .cout (nx44952z16), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z19)) ;
                         
                         defparam ix44952z52929.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_8_0_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52930 (.combout (d[1]), .cout (nx44952z19), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z22)) ;
                         
                         defparam ix44952z52930.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52931 (.combout (d[0]), .cout (nx44952z22), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix44952z52931.lut_mask = 16'h6688;
endmodule


module modgen_counter_8_1 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                            updn, cnt_en, p_nrst_int_dup_455, px272 ) ;

    input clock ;
    output [7:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [7:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;
    input p_nrst_int_dup_455 ;
    input px272 ;

    wire nx51271z1, nx58250z14, nx52268z1, nx58250z12, nx53265z1, nx58250z10, 
         nx54262z1, nx58250z8, nx55259z1, nx58250z6, nx56256z1, nx58250z4, 
         nx57253z1, nx58250z2, nx58250z1, nx_modgen_counter_8_1_vcc_net;
    wire [41:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (px272), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (px272), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (px272), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (px272), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (px272), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (px272), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (px272), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (px272), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix58250z52929 (.combout (nx53265z1), .cout (nx58250z10)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z12)) ;
                         
                         defparam ix58250z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52929.sum_lutc_input = "cin";
    assign nx_modgen_counter_8_1_vcc_net = 1 ;
    cycloneii_lcell_comb ix58250z52923 (.combout (nx58250z1), .dataa (q[7]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z2)) ;
                         
                         defparam ix58250z52923.lut_mask = 16'h5a00;
                         
                         defparam ix58250z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52925 (.combout (nx57253z1), .cout (nx58250z2)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z4)) ;
                         
                         defparam ix58250z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52930 (.combout (nx52268z1), .cout (nx58250z12)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z14)) ;
                         
                         defparam ix58250z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52926 (.combout (nx56256z1), .cout (nx58250z4)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z6)) ;
                         
                         defparam ix58250z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52927 (.combout (nx55259z1), .cout (nx58250z6)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z8)) ;
                         
                         defparam ix58250z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52928 (.combout (nx54262z1), .cout (nx58250z8)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (nx58250z10)) ;
                         
                         defparam ix58250z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52931 (.combout (nx51271z1), .cout (nx58250z14)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_1_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix58250z52931.lut_mask = 16'h55aa;
endmodule


module modgen_counter_8_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                            updn, cnt_en ) ;

    input clock ;
    output [7:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [7:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx51271z1, nx58250z14, nx52268z1, nx58250z12, nx53265z1, nx58250z10, 
         nx54262z1, nx58250z8, nx55259z1, nx58250z6, nx56256z1, nx58250z4, 
         nx57253z1, nx58250z2, nx58250z1, nx_modgen_counter_8_0_vcc_net;
    wire [41:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix58250z52929 (.combout (nx53265z1), .cout (nx58250z10)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z12)) ;
                         
                         defparam ix58250z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52929.sum_lutc_input = "cin";
    assign nx_modgen_counter_8_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix58250z52923 (.combout (nx58250z1), .dataa (q[7]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z2)) ;
                         
                         defparam ix58250z52923.lut_mask = 16'h5a00;
                         
                         defparam ix58250z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52925 (.combout (nx57253z1), .cout (nx58250z2)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z4)) ;
                         
                         defparam ix58250z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52926 (.combout (nx56256z1), .cout (nx58250z4)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z6)) ;
                         
                         defparam ix58250z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52930 (.combout (nx52268z1), .cout (nx58250z12)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z14)) ;
                         
                         defparam ix58250z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52927 (.combout (nx55259z1), .cout (nx58250z6)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z8)) ;
                         
                         defparam ix58250z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52928 (.combout (nx54262z1), .cout (nx58250z8)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z10)) ;
                         
                         defparam ix58250z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52931 (.combout (nx51271z1), .cout (nx58250z14)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix58250z52931.lut_mask = 16'h55aa;
endmodule


module add_12_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [11:0]a ;
    input [11:0]b ;
    output [11:0]d ;
    output cout ;

    wire nx63795z23, nx63795z21, nx63795z19, nx63795z17, nx63795z15, nx63795z13, 
         nx63795z11, nx63795z9, nx63795z7, nx63795z5, nx63795z3, 
         nx_add_12_0_vcc_net;
    wire [14:0] xmplr_dummy ;




    cycloneii_lcell_comb ix63795z52923 (.combout (d[11]), .dataa (a[10]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_12_0_vcc_net), .cin (
                         nx63795z3)) ;
                         
                         defparam ix63795z52923.lut_mask = 16'h5a00;
                         
                         defparam ix63795z52923.sum_lutc_input = "cin";
    assign nx_add_12_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix63795z52925 (.combout (d[10]), .cout (nx63795z3), .dataa (
                         a[9]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z5)) ;
                         
                         defparam ix63795z52925.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52926 (.combout (d[9]), .cout (nx63795z5), .dataa (
                         a[8]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z7)) ;
                         
                         defparam ix63795z52926.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52927 (.combout (d[8]), .cout (nx63795z7), .dataa (
                         a[7]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z9)) ;
                         
                         defparam ix63795z52927.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52928 (.combout (d[7]), .cout (nx63795z9), .dataa (
                         a[6]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z11)) ;
                         
                         defparam ix63795z52928.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52929 (.combout (d[6]), .cout (nx63795z11), .dataa (
                         a[5]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z13)) ;
                         
                         defparam ix63795z52929.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52930 (.combout (d[5]), .cout (nx63795z13), .dataa (
                         a[4]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z15)) ;
                         
                         defparam ix63795z52930.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52931 (.combout (d[4]), .cout (nx63795z15), .dataa (
                         a[3]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z17)) ;
                         
                         defparam ix63795z52931.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52932 (.combout (d[3]), .cout (nx63795z17), .dataa (
                         a[2]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z19)) ;
                         
                         defparam ix63795z52932.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52933 (.combout (d[2]), .cout (nx63795z19), .dataa (
                         a[1]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z21)) ;
                         
                         defparam ix63795z52933.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52934 (.combout (d[1]), .cout (nx63795z21), .dataa (
                         a[0]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (nx63795z23)) ;
                         
                         defparam ix63795z52934.lut_mask = 16'h96e8;
                         
                         defparam ix63795z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix63795z52935 (.combout (d[0]), .cout (nx63795z23), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_12_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix63795z52935.lut_mask = 16'h6688;
endmodule


module gt_10_2 ( a, b, d ) ;

    input [9:0]a ;
    input [9:0]b ;
    output d ;

    wire nx100z28, nx100z25, nx100z22, nx100z19, nx100z16, nx100z13, nx100z10, 
         nx100z7, nx100z4, nx_gt_10_2_vcc_net;
    wire [20:0] xmplr_dummy ;




    cycloneii_lcell_comb ix100z52923 (.combout (d), .dataa (b[9]), .datab (a[9])
                         , .datac (1'b1), .datad (nx_gt_10_2_vcc_net), .cin (
                         nx100z4)) ;
                         defparam ix100z52923.lut_mask = 16'hd400;
                         
                         defparam ix100z52923.sum_lutc_input = "cin";
    assign nx_gt_10_2_vcc_net = 1 ;
    cycloneii_lcell_comb ix100z52925 (.cout (nx100z4), .dataa (b[8]), .datab (
                         a[8]), .datac (1'b1), .datad (nx_gt_10_2_vcc_net), .cin (
                         nx100z7)) ;
                         defparam ix100z52925.lut_mask = 16'h00d4;
                         
                         defparam ix100z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52926 (.cout (nx100z7), .dataa (b[7]), .datab (
                         a[7]), .datac (1'b1), .datad (nx_gt_10_2_vcc_net), .cin (
                         nx100z10)) ;
                         defparam ix100z52926.lut_mask = 16'h00d4;
                         
                         defparam ix100z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52927 (.cout (nx100z10), .dataa (b[6]), .datab (
                         a[6]), .datac (1'b1), .datad (nx_gt_10_2_vcc_net), .cin (
                         nx100z13)) ;
                         defparam ix100z52927.lut_mask = 16'h00d4;
                         
                         defparam ix100z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52928 (.cout (nx100z13), .dataa (b[5]), .datab (
                         a[5]), .datac (1'b1), .datad (nx_gt_10_2_vcc_net), .cin (
                         nx100z16)) ;
                         defparam ix100z52928.lut_mask = 16'h00d4;
                         
                         defparam ix100z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52929 (.cout (nx100z16), .dataa (b[4]), .datab (
                         a[4]), .datac (1'b1), .datad (nx_gt_10_2_vcc_net), .cin (
                         nx100z19)) ;
                         defparam ix100z52929.lut_mask = 16'h00d4;
                         
                         defparam ix100z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52930 (.cout (nx100z19), .dataa (b[3]), .datab (
                         a[3]), .datac (1'b1), .datad (nx_gt_10_2_vcc_net), .cin (
                         nx100z22)) ;
                         defparam ix100z52930.lut_mask = 16'h00d4;
                         
                         defparam ix100z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52931 (.cout (nx100z22), .dataa (b[2]), .datab (
                         a[2]), .datac (1'b1), .datad (nx_gt_10_2_vcc_net), .cin (
                         nx100z25)) ;
                         defparam ix100z52931.lut_mask = 16'h00d4;
                         
                         defparam ix100z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52932 (.cout (nx100z25), .dataa (b[1]), .datab (
                         a[1]), .datac (1'b1), .datad (nx_gt_10_2_vcc_net), .cin (
                         nx100z28)) ;
                         defparam ix100z52932.lut_mask = 16'h00d4;
                         
                         defparam ix100z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52933 (.cout (nx100z28), .dataa (a[0]), .datab (
                         b[0]), .datac (1'b1), .datad (nx_gt_10_2_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix100z52933.lut_mask = 16'h0022;
endmodule


module gt_10_1 ( a, b, d ) ;

    input [9:0]a ;
    input [9:0]b ;
    output d ;

    wire nx100z28, nx100z25, nx100z22, nx100z19, nx100z16, nx100z13, nx100z10, 
         nx100z7, nx100z4, nx_gt_10_1_vcc_net;
    wire [20:0] xmplr_dummy ;




    cycloneii_lcell_comb ix100z52923 (.combout (d), .dataa (b[9]), .datab (a[9])
                         , .datac (1'b1), .datad (nx_gt_10_1_vcc_net), .cin (
                         nx100z4)) ;
                         defparam ix100z52923.lut_mask = 16'hd400;
                         
                         defparam ix100z52923.sum_lutc_input = "cin";
    assign nx_gt_10_1_vcc_net = 1 ;
    cycloneii_lcell_comb ix100z52925 (.cout (nx100z4), .dataa (b[8]), .datab (
                         a[8]), .datac (1'b1), .datad (nx_gt_10_1_vcc_net), .cin (
                         nx100z7)) ;
                         defparam ix100z52925.lut_mask = 16'h00d4;
                         
                         defparam ix100z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52926 (.cout (nx100z7), .dataa (b[7]), .datab (
                         a[7]), .datac (1'b1), .datad (nx_gt_10_1_vcc_net), .cin (
                         nx100z10)) ;
                         defparam ix100z52926.lut_mask = 16'h00d4;
                         
                         defparam ix100z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52927 (.cout (nx100z10), .dataa (b[6]), .datab (
                         a[6]), .datac (1'b1), .datad (nx_gt_10_1_vcc_net), .cin (
                         nx100z13)) ;
                         defparam ix100z52927.lut_mask = 16'h00d4;
                         
                         defparam ix100z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52928 (.cout (nx100z13), .dataa (b[5]), .datab (
                         a[5]), .datac (1'b1), .datad (nx_gt_10_1_vcc_net), .cin (
                         nx100z16)) ;
                         defparam ix100z52928.lut_mask = 16'h00d4;
                         
                         defparam ix100z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52929 (.cout (nx100z16), .dataa (b[4]), .datab (
                         a[4]), .datac (1'b1), .datad (nx_gt_10_1_vcc_net), .cin (
                         nx100z19)) ;
                         defparam ix100z52929.lut_mask = 16'h00d4;
                         
                         defparam ix100z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52930 (.cout (nx100z19), .dataa (b[3]), .datab (
                         a[3]), .datac (1'b1), .datad (nx_gt_10_1_vcc_net), .cin (
                         nx100z22)) ;
                         defparam ix100z52930.lut_mask = 16'h00d4;
                         
                         defparam ix100z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52931 (.cout (nx100z22), .dataa (b[2]), .datab (
                         a[2]), .datac (1'b1), .datad (nx_gt_10_1_vcc_net), .cin (
                         nx100z25)) ;
                         defparam ix100z52931.lut_mask = 16'h00d4;
                         
                         defparam ix100z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52932 (.cout (nx100z25), .dataa (b[1]), .datab (
                         a[1]), .datac (1'b1), .datad (nx_gt_10_1_vcc_net), .cin (
                         nx100z28)) ;
                         defparam ix100z52932.lut_mask = 16'h00d4;
                         
                         defparam ix100z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52933 (.cout (nx100z28), .dataa (a[0]), .datab (
                         b[0]), .datac (1'b1), .datad (nx_gt_10_1_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix100z52933.lut_mask = 16'h0022;
endmodule


module gt_10_0 ( a, b, d ) ;

    input [9:0]a ;
    input [9:0]b ;
    output d ;

    wire nx100z28, nx100z25, nx100z22, nx100z19, nx100z16, nx100z13, nx100z10, 
         nx100z7, nx100z4, nx_gt_10_0_vcc_net;
    wire [20:0] xmplr_dummy ;




    cycloneii_lcell_comb ix100z52923 (.combout (d), .dataa (b[9]), .datab (a[9])
                         , .datac (1'b1), .datad (nx_gt_10_0_vcc_net), .cin (
                         nx100z4)) ;
                         defparam ix100z52923.lut_mask = 16'hd400;
                         
                         defparam ix100z52923.sum_lutc_input = "cin";
    assign nx_gt_10_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix100z52925 (.cout (nx100z4), .dataa (b[8]), .datab (
                         a[8]), .datac (1'b1), .datad (nx_gt_10_0_vcc_net), .cin (
                         nx100z7)) ;
                         defparam ix100z52925.lut_mask = 16'h00d4;
                         
                         defparam ix100z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52926 (.cout (nx100z7), .dataa (b[7]), .datab (
                         a[7]), .datac (1'b1), .datad (nx_gt_10_0_vcc_net), .cin (
                         nx100z10)) ;
                         defparam ix100z52926.lut_mask = 16'h00d4;
                         
                         defparam ix100z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52927 (.cout (nx100z10), .dataa (b[6]), .datab (
                         a[6]), .datac (1'b1), .datad (nx_gt_10_0_vcc_net), .cin (
                         nx100z13)) ;
                         defparam ix100z52927.lut_mask = 16'h00d4;
                         
                         defparam ix100z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52928 (.cout (nx100z13), .dataa (b[5]), .datab (
                         a[5]), .datac (1'b1), .datad (nx_gt_10_0_vcc_net), .cin (
                         nx100z16)) ;
                         defparam ix100z52928.lut_mask = 16'h00d4;
                         
                         defparam ix100z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52929 (.cout (nx100z16), .dataa (b[4]), .datab (
                         a[4]), .datac (1'b1), .datad (nx_gt_10_0_vcc_net), .cin (
                         nx100z19)) ;
                         defparam ix100z52929.lut_mask = 16'h00d4;
                         
                         defparam ix100z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52930 (.cout (nx100z19), .dataa (b[3]), .datab (
                         a[3]), .datac (1'b1), .datad (nx_gt_10_0_vcc_net), .cin (
                         nx100z22)) ;
                         defparam ix100z52930.lut_mask = 16'h00d4;
                         
                         defparam ix100z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52931 (.cout (nx100z22), .dataa (b[2]), .datab (
                         a[2]), .datac (1'b1), .datad (nx_gt_10_0_vcc_net), .cin (
                         nx100z25)) ;
                         defparam ix100z52931.lut_mask = 16'h00d4;
                         
                         defparam ix100z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52932 (.cout (nx100z25), .dataa (b[1]), .datab (
                         a[1]), .datac (1'b1), .datad (nx_gt_10_0_vcc_net), .cin (
                         nx100z28)) ;
                         defparam ix100z52932.lut_mask = 16'h00d4;
                         
                         defparam ix100z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52933 (.cout (nx100z28), .dataa (a[0]), .datab (
                         b[0]), .datac (1'b1), .datad (nx_gt_10_0_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix100z52933.lut_mask = 16'h0022;
endmodule


module gt_8_3 ( a, b, d ) ;

    input [7:0]a ;
    input [7:0]b ;
    output d ;

    wire nx100z22, nx100z19, nx100z16, nx100z13, nx100z10, nx100z7, nx100z4, 
         nx_gt_8_3_vcc_net;
    wire [16:0] xmplr_dummy ;




    cycloneii_lcell_comb ix100z52923 (.combout (d), .dataa (b[7]), .datab (a[7])
                         , .datac (1'b1), .datad (nx_gt_8_3_vcc_net), .cin (
                         nx100z4)) ;
                         defparam ix100z52923.lut_mask = 16'hd400;
                         
                         defparam ix100z52923.sum_lutc_input = "cin";
    assign nx_gt_8_3_vcc_net = 1 ;
    cycloneii_lcell_comb ix100z52925 (.cout (nx100z4), .dataa (b[6]), .datab (
                         a[6]), .datac (1'b1), .datad (nx_gt_8_3_vcc_net), .cin (
                         nx100z7)) ;
                         defparam ix100z52925.lut_mask = 16'h00d4;
                         
                         defparam ix100z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52926 (.cout (nx100z7), .dataa (b[5]), .datab (
                         a[5]), .datac (1'b1), .datad (nx_gt_8_3_vcc_net), .cin (
                         nx100z10)) ;
                         defparam ix100z52926.lut_mask = 16'h00d4;
                         
                         defparam ix100z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52927 (.cout (nx100z10), .dataa (b[4]), .datab (
                         a[4]), .datac (1'b1), .datad (nx_gt_8_3_vcc_net), .cin (
                         nx100z13)) ;
                         defparam ix100z52927.lut_mask = 16'h00d4;
                         
                         defparam ix100z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52928 (.cout (nx100z13), .dataa (b[3]), .datab (
                         a[3]), .datac (1'b1), .datad (nx_gt_8_3_vcc_net), .cin (
                         nx100z16)) ;
                         defparam ix100z52928.lut_mask = 16'h00d4;
                         
                         defparam ix100z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52929 (.cout (nx100z16), .dataa (b[2]), .datab (
                         a[2]), .datac (1'b1), .datad (nx_gt_8_3_vcc_net), .cin (
                         nx100z19)) ;
                         defparam ix100z52929.lut_mask = 16'h00d4;
                         
                         defparam ix100z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52930 (.cout (nx100z19), .dataa (b[1]), .datab (
                         a[1]), .datac (1'b1), .datad (nx_gt_8_3_vcc_net), .cin (
                         nx100z22)) ;
                         defparam ix100z52930.lut_mask = 16'h00d4;
                         
                         defparam ix100z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52931 (.cout (nx100z22), .dataa (a[0]), .datab (
                         b[0]), .datac (1'b1), .datad (nx_gt_8_3_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix100z52931.lut_mask = 16'h0022;
endmodule


module gt_8_2 ( a, b, d ) ;

    input [7:0]a ;
    input [7:0]b ;
    output d ;

    wire nx100z22, nx100z19, nx100z16, nx100z13, nx100z10, nx100z7, nx100z4, 
         nx_gt_8_2_vcc_net;
    wire [16:0] xmplr_dummy ;




    cycloneii_lcell_comb ix100z52923 (.combout (d), .dataa (b[7]), .datab (a[7])
                         , .datac (1'b1), .datad (nx_gt_8_2_vcc_net), .cin (
                         nx100z4)) ;
                         defparam ix100z52923.lut_mask = 16'hd400;
                         
                         defparam ix100z52923.sum_lutc_input = "cin";
    assign nx_gt_8_2_vcc_net = 1 ;
    cycloneii_lcell_comb ix100z52925 (.cout (nx100z4), .dataa (b[6]), .datab (
                         a[6]), .datac (1'b1), .datad (nx_gt_8_2_vcc_net), .cin (
                         nx100z7)) ;
                         defparam ix100z52925.lut_mask = 16'h00d4;
                         
                         defparam ix100z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52926 (.cout (nx100z7), .dataa (b[5]), .datab (
                         a[5]), .datac (1'b1), .datad (nx_gt_8_2_vcc_net), .cin (
                         nx100z10)) ;
                         defparam ix100z52926.lut_mask = 16'h00d4;
                         
                         defparam ix100z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52927 (.cout (nx100z10), .dataa (b[4]), .datab (
                         a[4]), .datac (1'b1), .datad (nx_gt_8_2_vcc_net), .cin (
                         nx100z13)) ;
                         defparam ix100z52927.lut_mask = 16'h00d4;
                         
                         defparam ix100z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52928 (.cout (nx100z13), .dataa (b[3]), .datab (
                         a[3]), .datac (1'b1), .datad (nx_gt_8_2_vcc_net), .cin (
                         nx100z16)) ;
                         defparam ix100z52928.lut_mask = 16'h00d4;
                         
                         defparam ix100z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52929 (.cout (nx100z16), .dataa (b[2]), .datab (
                         a[2]), .datac (1'b1), .datad (nx_gt_8_2_vcc_net), .cin (
                         nx100z19)) ;
                         defparam ix100z52929.lut_mask = 16'h00d4;
                         
                         defparam ix100z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52930 (.cout (nx100z19), .dataa (b[1]), .datab (
                         a[1]), .datac (1'b1), .datad (nx_gt_8_2_vcc_net), .cin (
                         nx100z22)) ;
                         defparam ix100z52930.lut_mask = 16'h00d4;
                         
                         defparam ix100z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52931 (.cout (nx100z22), .dataa (a[0]), .datab (
                         b[0]), .datac (1'b1), .datad (nx_gt_8_2_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix100z52931.lut_mask = 16'h0022;
endmodule


module gt_8_1 ( a, b, d ) ;

    input [7:0]a ;
    input [7:0]b ;
    output d ;

    wire nx100z22, nx100z19, nx100z16, nx100z13, nx100z10, nx100z7, nx100z4, 
         nx_gt_8_1_vcc_net;
    wire [16:0] xmplr_dummy ;




    cycloneii_lcell_comb ix100z52923 (.combout (d), .dataa (b[7]), .datab (a[7])
                         , .datac (1'b1), .datad (nx_gt_8_1_vcc_net), .cin (
                         nx100z4)) ;
                         defparam ix100z52923.lut_mask = 16'hd400;
                         
                         defparam ix100z52923.sum_lutc_input = "cin";
    assign nx_gt_8_1_vcc_net = 1 ;
    cycloneii_lcell_comb ix100z52925 (.cout (nx100z4), .dataa (b[6]), .datab (
                         a[6]), .datac (1'b1), .datad (nx_gt_8_1_vcc_net), .cin (
                         nx100z7)) ;
                         defparam ix100z52925.lut_mask = 16'h00d4;
                         
                         defparam ix100z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52926 (.cout (nx100z7), .dataa (b[5]), .datab (
                         a[5]), .datac (1'b1), .datad (nx_gt_8_1_vcc_net), .cin (
                         nx100z10)) ;
                         defparam ix100z52926.lut_mask = 16'h00d4;
                         
                         defparam ix100z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52927 (.cout (nx100z10), .dataa (b[4]), .datab (
                         a[4]), .datac (1'b1), .datad (nx_gt_8_1_vcc_net), .cin (
                         nx100z13)) ;
                         defparam ix100z52927.lut_mask = 16'h00d4;
                         
                         defparam ix100z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52928 (.cout (nx100z13), .dataa (b[3]), .datab (
                         a[3]), .datac (1'b1), .datad (nx_gt_8_1_vcc_net), .cin (
                         nx100z16)) ;
                         defparam ix100z52928.lut_mask = 16'h00d4;
                         
                         defparam ix100z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52929 (.cout (nx100z16), .dataa (b[2]), .datab (
                         a[2]), .datac (1'b1), .datad (nx_gt_8_1_vcc_net), .cin (
                         nx100z19)) ;
                         defparam ix100z52929.lut_mask = 16'h00d4;
                         
                         defparam ix100z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52930 (.cout (nx100z19), .dataa (b[1]), .datab (
                         a[1]), .datac (1'b1), .datad (nx_gt_8_1_vcc_net), .cin (
                         nx100z22)) ;
                         defparam ix100z52930.lut_mask = 16'h00d4;
                         
                         defparam ix100z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52931 (.cout (nx100z22), .dataa (a[0]), .datab (
                         b[0]), .datac (1'b1), .datad (nx_gt_8_1_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix100z52931.lut_mask = 16'h0022;
endmodule


module gt_8_0 ( a, b, d ) ;

    input [7:0]a ;
    input [7:0]b ;
    output d ;

    wire nx100z22, nx100z19, nx100z16, nx100z13, nx100z10, nx100z7, nx100z4, 
         nx_gt_8_0_vcc_net;
    wire [16:0] xmplr_dummy ;




    cycloneii_lcell_comb ix100z52923 (.combout (d), .dataa (b[7]), .datab (a[7])
                         , .datac (1'b1), .datad (nx_gt_8_0_vcc_net), .cin (
                         nx100z4)) ;
                         defparam ix100z52923.lut_mask = 16'hd400;
                         
                         defparam ix100z52923.sum_lutc_input = "cin";
    assign nx_gt_8_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix100z52925 (.cout (nx100z4), .dataa (b[6]), .datab (
                         a[6]), .datac (1'b1), .datad (nx_gt_8_0_vcc_net), .cin (
                         nx100z7)) ;
                         defparam ix100z52925.lut_mask = 16'h00d4;
                         
                         defparam ix100z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52926 (.cout (nx100z7), .dataa (b[5]), .datab (
                         a[5]), .datac (1'b1), .datad (nx_gt_8_0_vcc_net), .cin (
                         nx100z10)) ;
                         defparam ix100z52926.lut_mask = 16'h00d4;
                         
                         defparam ix100z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52927 (.cout (nx100z10), .dataa (b[4]), .datab (
                         a[4]), .datac (1'b1), .datad (nx_gt_8_0_vcc_net), .cin (
                         nx100z13)) ;
                         defparam ix100z52927.lut_mask = 16'h00d4;
                         
                         defparam ix100z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52928 (.cout (nx100z13), .dataa (b[3]), .datab (
                         a[3]), .datac (1'b1), .datad (nx_gt_8_0_vcc_net), .cin (
                         nx100z16)) ;
                         defparam ix100z52928.lut_mask = 16'h00d4;
                         
                         defparam ix100z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52929 (.cout (nx100z16), .dataa (b[2]), .datab (
                         a[2]), .datac (1'b1), .datad (nx_gt_8_0_vcc_net), .cin (
                         nx100z19)) ;
                         defparam ix100z52929.lut_mask = 16'h00d4;
                         
                         defparam ix100z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52930 (.cout (nx100z19), .dataa (b[1]), .datab (
                         a[1]), .datac (1'b1), .datad (nx_gt_8_0_vcc_net), .cin (
                         nx100z22)) ;
                         defparam ix100z52930.lut_mask = 16'h00d4;
                         
                         defparam ix100z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix100z52931 (.cout (nx100z22), .dataa (a[0]), .datab (
                         b[0]), .datac (1'b1), .datad (nx_gt_8_0_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix100z52931.lut_mask = 16'h0022;
endmodule


module uw_uart ( clk, rst, kirschout, kirschdir, o_valid, i_mode, datain, 
                 o_pixavail, rxflex, txflex, p_Tx_Reg_14n6ss1_0_, p_NOT_rtlcn2, 
                 p_nrst_int, px538 ) ;

    input clk ;
    input rst ;
    input kirschout ;
    input [2:0]kirschdir ;
    input o_valid ;
    input [1:0]i_mode ;
    output [7:0]datain ;
    output o_pixavail ;
    input rxflex ;
    output txflex ;
    output p_Tx_Reg_14n6ss1_0_ ;
    output p_NOT_rtlcn2 ;
    input p_nrst_int ;
    input px538 ;

    wire [7:0]sdin;
    wire rxerr, rxrdy, sdout_7_, sdout_5_, sdout_3_, sdout_2_, sdout_1_, 
         sdout_0_;
    wire [7:0]rdata;
    wire state, dsend, mdata_7_, mdata_5_, mdata_3_, mdata_2_, mdata_1_, 
         mdata_0_, ack;
    wire [15:0]waitcount;
    wire ld_sdout, rawrx, mdata_7n5ss1_6_, mdata_7n5ss1_4_, nx40736z2, nx46385z2, 
         nx33354z2, nx40736z3, nx38868z1, nx46385z1, nx39480z1, not_o_valid, 
         nx33354z1, nx58116z1, nx38742z1, nx18433z1, nx39480z2, nx39480z6, 
         nx39480z3, nx39480z4, nx40736z4, nx39480z5, nx39480z7, nx36748z1, 
         nx35751z1, nx34754z1, nx33757z1;
    wire [192:0] xmplr_dummy ;




    UARTS i_uarts (.CLK (clk), .RST (rst), .Din ({sdout_7_,xmplr_dummy [0],
          sdout_5_,xmplr_dummy [1],sdout_3_,sdout_2_,sdout_1_,sdout_0_}), .LD (
          ld_sdout), .Rx (rawrx), .Dout ({sdin[7],sdin[6],sdin[5],sdin[4],
          sdin[3],sdin[2],sdin[1],sdin[0]}), .RxErr (rxerr), .RxRDY (rxrdy), .p_Tx_Reg_14n6ss1_0_ (
          p_Tx_Reg_14n6ss1_0_), .p_NOT_rtlcn2 (p_NOT_rtlcn2), .p_rxflex (rxflex)
          , .p_nrst_int_dup_8 (p_nrst_int)) ;
    modgen_counter_16_0 modgen_counter_waitcount (.clock (clk), .q ({
                        waitcount[15],waitcount[14],waitcount[13],waitcount[12],
                        waitcount[11],waitcount[10],waitcount[9],waitcount[8],
                        waitcount[7],waitcount[6],waitcount[5],waitcount[4],
                        waitcount[3],waitcount[2],waitcount[1],waitcount[0]}), .clk_en (
                        nx33354z1), .sclear (nx33354z2)) ;
    assign not_o_valid = ~o_valid ;
    cycloneii_lcell_ff reg_state (.regout (state), .datain (nx38868z1), .sdata (
                       1'b0), .clk (clk), .ena (1'b1), .aclr (rst), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sdout_7_ (.regout (sdout_7_), .datain (mdata_7_), .sdata (
                       1'b0), .clk (clk), .ena (nx38868z1), .aclr (rst), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sdout_5_ (.regout (sdout_5_), .datain (mdata_5_), .sdata (
                       1'b0), .clk (clk), .ena (nx38868z1), .aclr (rst), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sdout_3_ (.regout (sdout_3_), .datain (mdata_3_), .sdata (
                       1'b0), .clk (clk), .ena (nx38868z1), .aclr (rst), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sdout_2_ (.regout (sdout_2_), .datain (mdata_2_), .sdata (
                       1'b0), .clk (clk), .ena (nx38868z1), .aclr (rst), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sdout_1_ (.regout (sdout_1_), .datain (mdata_1_), .sdata (
                       1'b0), .clk (clk), .ena (nx38868z1), .aclr (rst), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sdout_0_ (.regout (sdout_0_), .datain (mdata_0_), .sdata (
                       1'b0), .clk (clk), .ena (nx38868z1), .aclr (rst), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_rdata_7_ (.regout (rdata[7]), .datain (sdin[7]), .sdata (
                       1'b0), .clk (clk), .ena (rxrdy), .aclr (rst), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_rdata_6_ (.regout (rdata[6]), .datain (sdin[6]), .sdata (
                       1'b0), .clk (clk), .ena (rxrdy), .aclr (rst), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_rdata_5_ (.regout (rdata[5]), .datain (sdin[5]), .sdata (
                       1'b0), .clk (clk), .ena (rxrdy), .aclr (rst), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_rdata_4_ (.regout (rdata[4]), .datain (sdin[4]), .sdata (
                       1'b0), .clk (clk), .ena (rxrdy), .aclr (rst), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_rdata_3_ (.regout (rdata[3]), .datain (sdin[3]), .sdata (
                       1'b0), .clk (clk), .ena (rxrdy), .aclr (rst), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_rdata_2_ (.regout (rdata[2]), .datain (sdin[2]), .sdata (
                       1'b0), .clk (clk), .ena (rxrdy), .aclr (rst), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_rdata_1_ (.regout (rdata[1]), .datain (sdin[1]), .sdata (
                       1'b0), .clk (clk), .ena (rxrdy), .aclr (rst), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_rdata_0_ (.regout (rdata[0]), .datain (sdin[0]), .sdata (
                       1'b0), .clk (clk), .ena (rxrdy), .aclr (rst), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_mdata_7_ (.regout (mdata_7_), .datain (
                       mdata_7n5ss1_6_), .sdata (1'b0), .clk (clk), .ena (
                       nx40736z3), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_mdata_5_ (.regout (mdata_5_), .datain (
                       mdata_7n5ss1_4_), .sdata (1'b0), .clk (clk), .ena (
                       nx40736z3), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    assign nx36748z1 = 1 ;
    cycloneii_lcell_ff reg_mdata_3_ (.regout (mdata_3_), .datain (kirschdir[2])
                       , .sdata (nx36748z1), .clk (clk), .ena (nx40736z3), .aclr (
                       1'b0), .sclr (nx38742z1), .sload (not_o_valid)) ;
    assign nx35751z1 = 1 ;
    cycloneii_lcell_ff reg_mdata_2_ (.regout (mdata_2_), .datain (kirschdir[1])
                       , .sdata (nx35751z1), .clk (clk), .ena (nx40736z3), .aclr (
                       1'b0), .sclr (nx38742z1), .sload (not_o_valid)) ;
    assign nx34754z1 = 1 ;
    cycloneii_lcell_ff reg_mdata_1_ (.regout (mdata_1_), .datain (kirschdir[0])
                       , .sdata (nx34754z1), .clk (clk), .ena (nx40736z3), .aclr (
                       1'b0), .sclr (nx38742z1), .sload (not_o_valid)) ;
    assign nx33757z1 = 1 ;
    cycloneii_lcell_ff reg_mdata_0_ (.regout (mdata_0_), .datain (kirschout), .sdata (
                       nx33757z1), .clk (clk), .ena (nx40736z3), .aclr (1'b0), .sclr (
                       nx38742z1), .sload (not_o_valid)) ;
    cycloneii_lcell_ff reg_ld_sdout (.regout (ld_sdout), .datain (nx18433z1), .sdata (
                       1'b0), .clk (clk), .ena (1'b1), .aclr (rst), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dsend (.regout (dsend), .datain (nx46385z1), .sdata (
                       1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (rst)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_charavail (.regout (o_pixavail), .datain (nx58116z1)
                       , .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (rst), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_ack (.regout (ack), .datain (nx39480z1), .sdata (1'b0
                       ), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (rst), .sload (
                       1'b0)) ;
    cycloneii_lcell_comb ix33354z52923 (.combout (nx33354z1), .dataa (ack), .datab (
                         o_pixavail), .datac (p_nrst_int), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix33354z52923.lut_mask = 16'hefef;
    cycloneii_lcell_comb ix39480z52929 (.combout (nx39480z7), .dataa (
                         waitcount[11]), .datab (waitcount[10]), .datac (1'b1), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix39480z52929.lut_mask = 16'h1111;
    cycloneii_lcell_comb ix39480z52927 (.combout (nx39480z5), .dataa (
                         waitcount[9]), .datab (waitcount[8]), .datac (nx39480z6
                         ), .datad (nx39480z7), .cin (1'b0)) ;
                         
                         defparam ix39480z52927.lut_mask = 16'h1000;
    cycloneii_lcell_comb ix40736z52926 (.combout (nx40736z4), .dataa (o_pixavail
                         ), .datab (rxerr), .datac (ack), .datad (nx39480z2), .cin (
                         1'b0)) ;
                         defparam ix40736z52926.lut_mask = 16'hfe04;
    cycloneii_lcell_comb ix39480z52926 (.combout (nx39480z4), .dataa (
                         waitcount[3]), .datab (waitcount[2]), .datac (
                         waitcount[1]), .datad (waitcount[0]), .cin (1'b0)) ;
                         
                         defparam ix39480z52926.lut_mask = 16'h0004;
    cycloneii_lcell_comb ix39480z52925 (.combout (nx39480z3), .dataa (
                         waitcount[7]), .datab (waitcount[6]), .datac (
                         waitcount[5]), .datad (waitcount[4]), .cin (1'b0)) ;
                         
                         defparam ix39480z52925.lut_mask = 16'h0040;
    cycloneii_lcell_comb ix39480z52928 (.combout (nx39480z6), .dataa (
                         waitcount[15]), .datab (waitcount[14]), .datac (
                         waitcount[13]), .datad (waitcount[12]), .cin (1'b0)) ;
                         
                         defparam ix39480z52928.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix39480z52924 (.combout (nx39480z2), .dataa (o_valid), 
                         .datab (nx39480z3), .datac (nx39480z4), .datad (
                         nx39480z5), .cin (1'b0)) ;
                         
                         defparam ix39480z52924.lut_mask = 16'heaaa;
    cycloneii_lcell_comb ix18433z52923 (.combout (nx18433z1), .dataa (state), .datab (
                         dsend), .datac (ld_sdout), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix18433z52923.lut_mask = 16'h5454;
    cycloneii_lcell_comb ix38742z52924 (.combout (nx38742z1), .dataa (i_mode[1])
                         , .datab (px538), .datac (o_pixavail), .datad (ack), .cin (
                         1'b0)) ;
                         defparam ix38742z52924.lut_mask = 16'h111f;
    cycloneii_lcell_comb ix40736z52925 (.combout (nx40736z3), .dataa (nx40736z4)
                         , .datab (px538), .datac (i_mode[1]), .datad (
                         p_nrst_int), .cin (1'b0)) ;
                         
                         defparam ix40736z52925.lut_mask = 16'hab00;
    cycloneii_lcell_comb ix58116z52923 (.combout (nx58116z1), .dataa (o_pixavail
                         ), .datab (rxrdy), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix58116z52923.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix39480z52923 (.combout (nx39480z1), .dataa (o_pixavail
                         ), .datab (ack), .datac (nx39480z2), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix39480z52923.lut_mask = 16'h0e0e;
    cycloneii_lcell_comb ix46385z52923 (.combout (nx46385z1), .dataa (rxerr), .datab (
                         nx40736z2), .datac (nx46385z2), .datad (nx39480z2), .cin (
                         1'b0)) ;
                         defparam ix46385z52923.lut_mask = 16'hfef2;
    cycloneii_lcell_comb ix38868z52923 (.combout (nx38868z1), .dataa (state), .datab (
                         dsend), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix38868z52923.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix46385z52924 (.combout (nx46385z2), .dataa (i_mode[1])
                         , .datab (px538), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix46385z52924.lut_mask = 16'h1111;
    cycloneii_lcell_comb ix40736z52924 (.combout (nx40736z2), .dataa (o_pixavail
                         ), .datab (ack), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix40736z52924.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix38742z52923 (.combout (mdata_7n5ss1_4_), .dataa (
                         o_valid), .datab (nx38742z1), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix38742z52923.lut_mask = 16'hdddd;
    cycloneii_lcell_comb ix40736z52923 (.combout (mdata_7n5ss1_6_), .dataa (
                         o_valid), .datab (i_mode[1]), .datac (px538), .datad (
                         nx40736z2), .cin (1'b0)) ;
                         
                         defparam ix40736z52923.lut_mask = 16'h54fc;
    cycloneii_lcell_comb ix40426z52923 (.combout (datain[0]), .dataa (o_pixavail
                         ), .datab (rdata[0]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix40426z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix41423z52923 (.combout (datain[1]), .dataa (o_pixavail
                         ), .datab (rdata[1]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix41423z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix42420z52923 (.combout (datain[2]), .dataa (o_pixavail
                         ), .datab (rdata[2]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix42420z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix43417z52923 (.combout (datain[3]), .dataa (o_pixavail
                         ), .datab (rdata[3]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix43417z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix44414z52923 (.combout (datain[4]), .dataa (o_pixavail
                         ), .datab (rdata[4]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix44414z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix45411z52923 (.combout (datain[5]), .dataa (o_pixavail
                         ), .datab (rdata[5]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix45411z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix46408z52923 (.combout (datain[6]), .dataa (o_pixavail
                         ), .datab (rdata[6]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix46408z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix33354z52924 (.combout (nx33354z2), .dataa (nx39480z2)
                         , .datab (p_nrst_int), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix33354z52924.lut_mask = 16'hbbbb;
    cycloneii_lcell_comb ix47405z52923 (.combout (datain[7]), .dataa (o_pixavail
                         ), .datab (rdata[7]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix47405z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix15671z52923 (.combout (rawrx), .dataa (rxflex), .datab (
                         p_nrst_int), .datac (1'b1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix15671z52923.lut_mask = 16'h8888;
endmodule


module modgen_counter_16_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                             updn, cnt_en ) ;

    input clock ;
    output [15:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [15:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx51271z1, nx22081z30, nx52268z1, nx22081z28, nx53265z1, nx22081z26, 
         nx54262z1, nx22081z24, nx55259z1, nx22081z22, nx56256z1, nx22081z20, 
         nx57253z1, nx22081z18, nx58250z1, nx22081z16, nx59247z1, nx22081z14, 
         nx60244z1, nx22081z12, nx17096z1, nx22081z10, nx18093z1, nx22081z8, 
         nx19090z1, nx22081z6, nx20087z1, nx22081z4, nx21084z1, nx22081z2, 
         nx22081z1, nx_modgen_counter_16_0_vcc_net;
    wire [81:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_9_ (.regout (q[9]), .datain (nx60244z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_15_ (.regout (q[15]), .datain (nx22081z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_14_ (.regout (q[14]), .datain (nx21084z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_13_ (.regout (q[13]), .datain (nx20087z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_12_ (.regout (q[12]), .datain (nx19090z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_11_ (.regout (q[11]), .datain (nx18093z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_10_ (.regout (q[10]), .datain (nx17096z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix22081z52925 (.combout (nx21084z1), .cout (nx22081z2)
                         , .dataa (q[14]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z4)) ;
                         
                         defparam ix22081z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52925.sum_lutc_input = "cin";
    assign nx_modgen_counter_16_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix22081z52926 (.combout (nx20087z1), .cout (nx22081z4)
                         , .dataa (q[13]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z6)) ;
                         
                         defparam ix22081z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52927 (.combout (nx19090z1), .cout (nx22081z6)
                         , .dataa (q[12]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z8)) ;
                         
                         defparam ix22081z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52928 (.combout (nx18093z1), .cout (nx22081z8)
                         , .dataa (q[11]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z10)) ;
                         
                         defparam ix22081z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52929 (.combout (nx17096z1), .cout (nx22081z10)
                         , .dataa (q[10]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z12)) ;
                         
                         defparam ix22081z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52937 (.combout (nx53265z1), .cout (nx22081z26)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z28)) ;
                         
                         defparam ix22081z52937.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52930 (.combout (nx60244z1), .cout (nx22081z12)
                         , .dataa (q[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z14)) ;
                         
                         defparam ix22081z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52938 (.combout (nx52268z1), .cout (nx22081z28)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z30)) ;
                         
                         defparam ix22081z52938.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52931 (.combout (nx59247z1), .cout (nx22081z14)
                         , .dataa (q[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z16)) ;
                         
                         defparam ix22081z52931.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52932 (.combout (nx58250z1), .cout (nx22081z16)
                         , .dataa (q[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z18)) ;
                         
                         defparam ix22081z52932.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52933 (.combout (nx57253z1), .cout (nx22081z18)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z20)) ;
                         
                         defparam ix22081z52933.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52934 (.combout (nx56256z1), .cout (nx22081z20)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z22)) ;
                         
                         defparam ix22081z52934.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52935 (.combout (nx55259z1), .cout (nx22081z22)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z24)) ;
                         
                         defparam ix22081z52935.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52936 (.combout (nx54262z1), .cout (nx22081z24)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z26)) ;
                         
                         defparam ix22081z52936.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52923 (.combout (nx22081z1), .dataa (q[15]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z2)) ;
                         
                         defparam ix22081z52923.lut_mask = 16'h5a00;
                         
                         defparam ix22081z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52939 (.combout (nx51271z1), .cout (nx22081z30)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix22081z52939.lut_mask = 16'h55aa;
endmodule


module UARTS ( CLK, RST, Din, LD, Rx, Baud, Dout, Tx, TxBusy, RxErr, RxRDY, 
               p_Tx_Reg_14n6ss1_0_, p_NOT_rtlcn2, p_rxflex, p_nrst_int_dup_8 ) ;

    input CLK ;
    input RST ;
    input [7:0]Din ;
    input LD ;
    input Rx ;
    input Baud ;
    output [7:0]Dout ;
    output Tx ;
    output TxBusy ;
    output RxErr ;
    output RxRDY ;
    output p_Tx_Reg_14n6ss1_0_ ;
    output p_NOT_rtlcn2 ;
    input p_rxflex ;
    input p_nrst_int_dup_8 ;

    wire [7:0]Rx_Reg;
    wire TxDivisor_5_;
    wire [10:0]RxDiv;
    wire [11:0]TxDiv;
    wire TopTx, TopRx;
    wire [3:0]TxBitCnt;
    wire [3:0]RxBitCnt;
    wire Rx_r;
    wire [1:0]TxFSM;
    wire RxFSM_6_, RxFSM_5_, RxFSM_3_, RxFSM_2_, RxFSM_1_, RxFSM_0_, nx65151z1, 
         nx50920z2, nx35603z1, not_rtlc17_X_0_n360, nx54636z1, nx15541z1, 
         nx13547z1, nx14544z1, nx11553z1, nx34394z1, nx34394z3, nx32400z1, 
         nx13547z2, nx30017z1, PWR, nx4608z1, nx51917z2, nx50920z3, nx51917z3, 
         nx9370z2, nx51917z1, nx50920z1, nx49923z1, nx48926z1, nx8373z1, 
         nx9370z1, nx10367z1, nx11364z1, nx5605z1, nx15376z1, nx34394z4, 
         nx34394z5, nx34394z6, nx34394z9, nx34394z7, nx34394z10, nx34394z8, 
         nx32400z2, nx32400z3, nx32400z4, nx32400z6, nx32400z5, nx32400z7, 
         nx15541z2, nx4608z2, nx4608z3, nx51917z4, nx8373z2, nx15541z3, 
         nx32400z8, nx32400z9, not_Rx_r, NOT_Rx, nx34606z1, 
         NOT_Tx_Reg_14n6ss1_8_, nx33609z1, NOT_Tx_Reg_14n6ss1_7_, nx32612z1, 
         NOT_Tx_Reg_14n6ss1_6_, nx31615z1, NOT_Tx_Reg_14n6ss1_5_, nx30618z1, 
         NOT_Tx_Reg_14n6ss1_4_, nx29621z1, NOT_Tx_Reg_14n6ss1_3_, nx28624z1, 
         NOT_Tx_Reg_14n6ss1_2_, nx61140z1, NOT_Tx_Reg_14n6ss1_1_, nx34394z2, 
         nx16538z1;
    wire [348:0] xmplr_dummy ;




    modgen_counter_11_0 modgen_counter_RxDiv (.clock (CLK), .q ({RxDiv[10],
                        RxDiv[9],RxDiv[8],RxDiv[7],RxDiv[6],RxDiv[5],RxDiv[4],
                        RxDiv[3],RxDiv[2],RxDiv[1],RxDiv[0]}), .aclear (RST), .sclear (
                        nx65151z1)) ;
    modgen_counter_12_0 modgen_counter_TxDiv (.clock (CLK), .q ({TxDiv[11],
                        TxDiv[10],TxDiv[9],TxDiv[8],TxDiv[7],TxDiv[6],TxDiv[5],
                        TxDiv[4],TxDiv[3],TxDiv[2],TxDiv[1],TxDiv[0]}), .aclear (
                        RST), .sclear (nx32400z1)) ;
    assign PWR = 1 ;
    assign Rx_r = ~not_Rx_r ;
    assign RxFSM_0_ = ~nx34394z2 ;
    cycloneii_lcell_ff reg_Tx_Reg_8_ (.regout (nx34606z1), .datain (
                       NOT_Tx_Reg_14n6ss1_8_), .sdata (1'b0), .clk (CLK), .ena (
                       nx35603z1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_7_ (.regout (nx33609z1), .datain (
                       NOT_Tx_Reg_14n6ss1_7_), .sdata (1'b0), .clk (CLK), .ena (
                       nx35603z1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_6_ (.regout (nx32612z1), .datain (
                       NOT_Tx_Reg_14n6ss1_6_), .sdata (1'b0), .clk (CLK), .ena (
                       nx35603z1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_5_ (.regout (nx31615z1), .datain (
                       NOT_Tx_Reg_14n6ss1_5_), .sdata (1'b0), .clk (CLK), .ena (
                       nx35603z1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_4_ (.regout (nx30618z1), .datain (
                       NOT_Tx_Reg_14n6ss1_4_), .sdata (1'b0), .clk (CLK), .ena (
                       nx35603z1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_3_ (.regout (nx29621z1), .datain (
                       NOT_Tx_Reg_14n6ss1_3_), .sdata (1'b0), .clk (CLK), .ena (
                       nx35603z1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_2_ (.regout (nx28624z1), .datain (
                       NOT_Tx_Reg_14n6ss1_2_), .sdata (1'b0), .clk (CLK), .ena (
                       nx35603z1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_1_ (.regout (nx61140z1), .datain (
                       NOT_Tx_Reg_14n6ss1_1_), .sdata (1'b0), .clk (CLK), .ena (
                       nx35603z1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TxFSM_1_ (.regout (TxFSM[1]), .datain (nx5605z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TxFSM_0_ (.regout (TxFSM[0]), .datain (nx4608z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TxDivisor_5_ (.regout (TxDivisor_5_), .datain (PWR), 
                       .sdata (1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TopTx (.regout (TopTx), .datain (nx32400z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TopRx (.regout (TopRx), .datain (nx34394z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_r (.regout (not_Rx_r), .datain (NOT_Rx), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_7_ (.regout (Rx_Reg[7]), .datain (Rx_r), .sdata (
                       1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_6_ (.regout (Rx_Reg[6]), .datain (Rx_Reg[7]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_5_ (.regout (Rx_Reg[5]), .datain (Rx_Reg[6]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_4_ (.regout (Rx_Reg[4]), .datain (Rx_Reg[5]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_3_ (.regout (Rx_Reg[3]), .datain (Rx_Reg[4]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_2_ (.regout (Rx_Reg[2]), .datain (Rx_Reg[3]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_1_ (.regout (Rx_Reg[1]), .datain (Rx_Reg[2]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_0_ (.regout (Rx_Reg[0]), .datain (Rx_Reg[1]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxRDYi (.regout (RxRDY), .datain (nx30017z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_6_ (.regout (RxFSM_6_), .datain (RxFSM_1_), .sdata (
                       RxFSM_5_), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (not_Rx_r)) ;
    cycloneii_lcell_ff reg_RxFSM_5_ (.regout (RxFSM_5_), .datain (nx11553z1), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_3_ (.regout (RxFSM_3_), .datain (nx13547z1), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_2_ (.regout (RxFSM_2_), .datain (nx14544z1), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_1_ (.regout (RxFSM_1_), .datain (RxFSM_0_), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_0_ (.regout (nx34394z2), .datain (nx16538z1), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxErr (.regout (RxErr), .datain (nx15376z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_7_ (.regout (Dout[7]), .datain (Rx_Reg[7]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_6_ (.regout (Dout[6]), .datain (Rx_Reg[6]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_5_ (.regout (Dout[5]), .datain (Rx_Reg[5]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_4_ (.regout (Dout[4]), .datain (Rx_Reg[4]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_3_ (.regout (Dout[3]), .datain (Rx_Reg[3]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_2_ (.regout (Dout[2]), .datain (Rx_Reg[2]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_1_ (.regout (Dout[1]), .datain (Rx_Reg[1]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_0_ (.regout (Dout[0]), .datain (Rx_Reg[0]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_TxBitCnt_reg_q_3_ (.regout (TxBitCnt[3]), 
                       .datain (nx51917z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_TxBitCnt_reg_q_2_ (.regout (TxBitCnt[2]), 
                       .datain (nx50920z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_TxBitCnt_reg_q_1_ (.regout (TxBitCnt[1]), 
                       .datain (nx49923z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_TxBitCnt_reg_q_0_ (.regout (TxBitCnt[0]), 
                       .datain (nx48926z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_RxBitCnt_reg_q_3_ (.regout (RxBitCnt[3]), 
                       .datain (nx8373z1), .sdata (1'b0), .clk (CLK), .ena (1'b1
                       ), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_RxBitCnt_reg_q_2_ (.regout (RxBitCnt[2]), 
                       .datain (nx9370z1), .sdata (1'b0), .clk (CLK), .ena (1'b1
                       ), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_RxBitCnt_reg_q_1_ (.regout (RxBitCnt[1]), 
                       .datain (nx10367z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_RxBitCnt_reg_q_0_ (.regout (RxBitCnt[0]), 
                       .datain (nx11364z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_comb ix50920z52924 (.combout (nx50920z2), .dataa (TopTx), .datab (
                         TxFSM[1]), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix50920z52924.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix61140z52923 (.combout (p_Tx_Reg_14n6ss1_0_), .dataa (
                         nx61140z1), .datab (TxFSM[1]), .datac (TxFSM[0]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix61140z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix28624z52923 (.combout (NOT_Tx_Reg_14n6ss1_1_), .dataa (
                         Din[0]), .datab (nx28624z1), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix28624z52923.lut_mask = 16'hc5c5;
    cycloneii_lcell_comb ix29621z52923 (.combout (NOT_Tx_Reg_14n6ss1_2_), .dataa (
                         Din[1]), .datab (nx29621z1), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix29621z52923.lut_mask = 16'hc5c5;
    cycloneii_lcell_comb ix30618z52923 (.combout (NOT_Tx_Reg_14n6ss1_3_), .dataa (
                         Din[2]), .datab (nx30618z1), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix30618z52923.lut_mask = 16'hc5c5;
    cycloneii_lcell_comb ix31615z52923 (.combout (NOT_Tx_Reg_14n6ss1_4_), .dataa (
                         Din[3]), .datab (nx31615z1), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix31615z52923.lut_mask = 16'hc5c5;
    cycloneii_lcell_comb ix32612z52923 (.combout (NOT_Tx_Reg_14n6ss1_5_), .dataa (
                         Din[5]), .datab (nx32612z1), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix32612z52923.lut_mask = 16'hc5c5;
    cycloneii_lcell_comb ix33609z52923 (.combout (NOT_Tx_Reg_14n6ss1_6_), .dataa (
                         Din[5]), .datab (nx33609z1), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix33609z52923.lut_mask = 16'hc5c5;
    cycloneii_lcell_comb ix34606z52923 (.combout (NOT_Tx_Reg_14n6ss1_7_), .dataa (
                         Din[7]), .datab (nx34606z1), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix34606z52923.lut_mask = 16'hc5c5;
    cycloneii_lcell_comb ix35603z52923 (.combout (NOT_Tx_Reg_14n6ss1_8_), .dataa (
                         Din[7]), .datab (TxFSM[1]), .datac (1'b1), .datad (1'b1
                         ), .cin (1'b0)) ;
                         
                         defparam ix35603z52923.lut_mask = 16'h1111;
    cycloneii_lcell_comb ix65151z52923 (.combout (nx65151z1), .dataa (nx34394z2)
                         , .datab (nx34394z3), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix65151z52923.lut_mask = 16'hdddd;
    cycloneii_lcell_comb ix32400z52931 (.combout (nx32400z9), .dataa (TxDiv[10])
                         , .datab (TxDiv[9]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix32400z52931.lut_mask = 16'h1111;
    cycloneii_lcell_comb ix32400z52930 (.combout (nx32400z8), .dataa (
                         TxDivisor_5_), .datab (TxDiv[11]), .datac (TxDiv[0]), .datad (
                         nx32400z9), .cin (1'b0)) ;
                         
                         defparam ix32400z52930.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix8373z52925 (.combout (nx8373z2), .dataa (RxBitCnt[3])
                         , .datab (RxBitCnt[2]), .datac (RxBitCnt[1]), .datad (
                         RxBitCnt[0]), .cin (1'b0)) ;
                         
                         defparam ix8373z52925.lut_mask = 16'h6aaa;
    cycloneii_lcell_comb ix51917z52926 (.combout (nx51917z4), .dataa (
                         TxBitCnt[3]), .datab (TxBitCnt[2]), .datac (nx50920z2)
                         , .datad (nx50920z3), .cin (1'b0)) ;
                         
                         defparam ix51917z52926.lut_mask = 16'hf0f1;
    cycloneii_lcell_comb ix4608z52925 (.combout (nx4608z3), .dataa (TxBitCnt[3])
                         , .datab (TxBitCnt[2]), .datac (TxBitCnt[1]), .datad (
                         TxBitCnt[0]), .cin (1'b0)) ;
                         
                         defparam ix4608z52925.lut_mask = 16'hfeff;
    cycloneii_lcell_comb ix4608z52924 (.combout (nx4608z2), .dataa (LD), .datab (
                         TopTx), .datac (TxFSM[1]), .datad (TxFSM[0]), .cin (
                         1'b0)) ;
                         defparam ix4608z52924.lut_mask = 16'h3335;
    cycloneii_lcell_comb ix15541z52925 (.combout (nx15541z2), .dataa (Rx), .datab (
                         TopRx), .datac (RxFSM_6_), .datad (nx34394z2), .cin (
                         1'b0)) ;
                         defparam ix15541z52925.lut_mask = 16'hac00;
    cycloneii_lcell_comb ix32400z52929 (.combout (nx32400z7), .dataa (TxDiv[4])
                         , .datab (TxDiv[3]), .datac (TxDiv[2]), .datad (
                         TxDiv[1]), .cin (1'b0)) ;
                         
                         defparam ix32400z52929.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix32400z52927 (.combout (nx32400z5), .dataa (TxDiv[4])
                         , .datab (TxDiv[3]), .datac (TxDiv[2]), .datad (
                         TxDiv[1]), .cin (1'b0)) ;
                         
                         defparam ix32400z52927.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix32400z52928 (.combout (nx32400z6), .dataa (TxDiv[8])
                         , .datab (TxDiv[7]), .datac (TxDiv[6]), .datad (
                         TxDiv[5]), .cin (1'b0)) ;
                         
                         defparam ix32400z52928.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix15541z52926 (.combout (nx15541z3), .dataa (p_rxflex)
                         , .datab (RxFSM_6_), .datac (p_nrst_int_dup_8), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix15541z52926.lut_mask = 16'hb3b3;
    cycloneii_lcell_comb ix32400z52926 (.combout (nx32400z4), .dataa (TxDiv[8])
                         , .datab (TxDiv[7]), .datac (TxDiv[6]), .datad (
                         TxDiv[5]), .cin (1'b0)) ;
                         
                         defparam ix32400z52926.lut_mask = 16'h0800;
    cycloneii_lcell_comb ix32400z52925 (.combout (nx32400z3), .dataa (
                         TxDivisor_5_), .datab (TxDiv[11]), .datac (TxDiv[10]), 
                         .datad (TxDiv[9]), .cin (1'b0)) ;
                         
                         defparam ix32400z52925.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix32400z52924 (.combout (nx32400z2), .dataa (TxDiv[0])
                         , .datab (nx32400z3), .datac (nx32400z4), .datad (
                         nx32400z5), .cin (1'b0)) ;
                         
                         defparam ix32400z52924.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix34394z52929 (.combout (nx34394z8), .dataa (RxDiv[3])
                         , .datab (RxDiv[2]), .datac (RxDiv[1]), .datad (
                         RxDiv[0]), .cin (1'b0)) ;
                         
                         defparam ix34394z52929.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix34394z52931 (.combout (nx34394z10), .dataa (RxDiv[3])
                         , .datab (RxDiv[2]), .datac (RxDiv[1]), .datad (
                         RxDiv[0]), .cin (1'b0)) ;
                         
                         defparam ix34394z52931.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix34394z52928 (.combout (nx34394z7), .dataa (RxDiv[7])
                         , .datab (RxDiv[6]), .datac (RxDiv[5]), .datad (
                         RxDiv[4]), .cin (1'b0)) ;
                         
                         defparam ix34394z52928.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix34394z52930 (.combout (nx34394z9), .dataa (RxDiv[7])
                         , .datab (RxDiv[6]), .datac (RxDiv[5]), .datad (
                         RxDiv[4]), .cin (1'b0)) ;
                         
                         defparam ix34394z52930.lut_mask = 16'h0800;
    cycloneii_lcell_comb ix34394z52927 (.combout (nx34394z6), .dataa (
                         TxDivisor_5_), .datab (RxDiv[10]), .datac (RxDiv[9]), .datad (
                         RxDiv[8]), .cin (1'b0)) ;
                         
                         defparam ix34394z52927.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix34394z52926 (.combout (nx34394z5), .dataa (nx34394z6)
                         , .datab (nx34394z7), .datac (nx34394z8), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix34394z52926.lut_mask = 16'h8080;
    cycloneii_lcell_comb ix34394z52925 (.combout (nx34394z4), .dataa (
                         TxDivisor_5_), .datab (RxDiv[10]), .datac (RxDiv[9]), .datad (
                         RxDiv[8]), .cin (1'b0)) ;
                         
                         defparam ix34394z52925.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix15376z52923 (.combout (nx15376z1), .dataa (RxErr), .datab (
                         RxRDY), .datac (RxFSM_6_), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix15376z52923.lut_mask = 16'hf2f2;
    cycloneii_lcell_comb ix11364z52923 (.combout (nx11364z1), .dataa (TopRx), .datab (
                         RxBitCnt[0]), .datac (RxFSM_3_), .datad (nx34394z2), .cin (
                         1'b0)) ;
                         defparam ix11364z52923.lut_mask = 16'h6c40;
    cycloneii_lcell_comb ix10367z52923 (.combout (nx10367z1), .dataa (
                         RxBitCnt[1]), .datab (RxBitCnt[0]), .datac (nx34394z2)
                         , .datad (not_rtlc17_X_0_n360), .cin (1'b0)) ;
                         
                         defparam ix10367z52923.lut_mask = 16'h60aa;
    cycloneii_lcell_comb ix9370z52923 (.combout (nx9370z1), .dataa (RxBitCnt[2])
                         , .datab (nx34394z2), .datac (not_rtlc17_X_0_n360), .datad (
                         nx9370z2), .cin (1'b0)) ;
                         
                         defparam ix9370z52923.lut_mask = 16'h4a8a;
    cycloneii_lcell_comb ix8373z52923 (.combout (nx8373z1), .dataa (RxBitCnt[3])
                         , .datab (nx34394z2), .datac (not_rtlc17_X_0_n360), .datad (
                         nx8373z2), .cin (1'b0)) ;
                         
                         defparam ix8373z52923.lut_mask = 16'hca0a;
    cycloneii_lcell_comb ix48926z52923 (.combout (nx48926z1), .dataa (TopTx), .datab (
                         TxBitCnt[0]), .datac (TxFSM[1]), .datad (TxFSM[0]), .cin (
                         1'b0)) ;
                         defparam ix48926z52923.lut_mask = 16'hce6c;
    cycloneii_lcell_comb ix49923z52923 (.combout (nx49923z1), .dataa (
                         TxBitCnt[1]), .datab (TxBitCnt[0]), .datac (nx50920z2)
                         , .datad (nx51917z2), .cin (1'b0)) ;
                         
                         defparam ix49923z52923.lut_mask = 16'h09aa;
    cycloneii_lcell_comb ix50920z52923 (.combout (nx50920z1), .dataa (
                         TxBitCnt[2]), .datab (nx50920z2), .datac (nx51917z2), .datad (
                         nx50920z3), .cin (1'b0)) ;
                         
                         defparam ix50920z52923.lut_mask = 16'h2a1a;
    cycloneii_lcell_comb ix51917z52923 (.combout (nx51917z1), .dataa (
                         TxBitCnt[3]), .datab (nx51917z2), .datac (nx51917z3), .datad (
                         nx51917z4), .cin (1'b0)) ;
                         
                         defparam ix51917z52923.lut_mask = 16'heea2;
    cycloneii_lcell_comb ix61812z52923 (.combout (p_NOT_rtlcn2), .dataa (LD), .datab (
                         TopTx), .datac (TxFSM[1]), .datad (TxFSM[0]), .cin (
                         1'b0)) ;
                         defparam ix61812z52923.lut_mask = 16'h0cca;
    cycloneii_lcell_comb ix9370z52924 (.combout (nx9370z2), .dataa (RxBitCnt[1])
                         , .datab (RxBitCnt[0]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix9370z52924.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix51917z52925 (.combout (nx51917z3), .dataa (
                         TxBitCnt[2]), .datab (TxBitCnt[1]), .datac (TxBitCnt[0]
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix51917z52925.lut_mask = 16'hfefe;
    cycloneii_lcell_comb ix50920z52925 (.combout (nx50920z3), .dataa (
                         TxBitCnt[1]), .datab (TxBitCnt[0]), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix50920z52925.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix51917z52924 (.combout (nx51917z2), .dataa (TopTx), .datab (
                         TxFSM[1]), .datac (TxFSM[0]), .datad (1'b1), .cin (1'b0
                         )) ;
                         defparam ix51917z52924.lut_mask = 16'h2828;
    cycloneii_lcell_comb ix4608z52923 (.combout (nx4608z1), .dataa (TxFSM[1]), .datab (
                         TxFSM[0]), .datac (nx4608z2), .datad (nx4608z3), .cin (
                         1'b0)) ;
                         defparam ix4608z52923.lut_mask = 16'hc1c3;
    cycloneii_lcell_comb ix30017z52923 (.combout (nx30017z1), .dataa (TopRx), .datab (
                         not_Rx_r), .datac (RxFSM_5_), .datad (1'b1), .cin (1'b0
                         )) ;
                         defparam ix30017z52923.lut_mask = 16'h2020;
    cycloneii_lcell_comb ix13547z52924 (.combout (nx13547z2), .dataa (
                         RxBitCnt[3]), .datab (RxBitCnt[2]), .datac (RxBitCnt[1]
                         ), .datad (RxBitCnt[0]), .cin (1'b0)) ;
                         
                         defparam ix13547z52924.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix32400z52923 (.combout (nx32400z1), .dataa (nx32400z2)
                         , .datab (nx32400z6), .datac (nx32400z7), .datad (
                         nx32400z8), .cin (1'b0)) ;
                         
                         defparam ix32400z52923.lut_mask = 16'heaaa;
    cycloneii_lcell_comb ix34394z52924 (.combout (nx34394z3), .dataa (nx34394z4)
                         , .datab (nx34394z5), .datac (nx34394z9), .datad (
                         nx34394z10), .cin (1'b0)) ;
                         
                         defparam ix34394z52924.lut_mask = 16'heccc;
    cycloneii_lcell_comb ix34394z52923 (.combout (nx34394z1), .dataa (nx34394z2)
                         , .datab (nx34394z3), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix34394z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix11553z52923 (.combout (nx11553z1), .dataa (RxFSM_2_)
                         , .datab (nx13547z2), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix11553z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix16538z52923 (.combout (nx16538z1), .dataa (not_Rx_r)
                         , .datab (RxFSM_6_), .datac (RxFSM_5_), .datad (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix16538z52923.lut_mask = 16'h2323;
    cycloneii_lcell_comb ix14544z52923 (.combout (nx14544z1), .dataa (not_Rx_r)
                         , .datab (RxFSM_3_), .datac (RxFSM_1_), .datad (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix14544z52923.lut_mask = 16'hecec;
    cycloneii_lcell_comb ix13547z52923 (.combout (nx13547z1), .dataa (RxFSM_2_)
                         , .datab (nx13547z2), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix13547z52923.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix15541z52924 (.combout (nx15541z1), .dataa (not_Rx_r)
                         , .datab (nx34394z2), .datac (nx15541z2), .datad (
                         nx15541z3), .cin (1'b0)) ;
                         
                         defparam ix15541z52924.lut_mask = 16'hf2f0;
    cycloneii_lcell_comb ix54636z52924 (.combout (nx54636z1), .dataa (TopRx), .datab (
                         RxFSM_3_), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix54636z52924.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix8373z52924 (.combout (not_rtlc17_X_0_n360), .dataa (
                         TopRx), .datab (RxFSM_3_), .datac (nx34394z2), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix8373z52924.lut_mask = 16'h8b8b;
    cycloneii_lcell_comb ix35603z52924 (.combout (nx35603z1), .dataa (LD), .datab (
                         TopTx), .datac (TxFSM[1]), .datad (TxFSM[0]), .cin (
                         1'b0)) ;
                         defparam ix35603z52924.lut_mask = 16'h00ca;
    cycloneii_lcell_comb ix5605z52923 (.combout (nx5605z1), .dataa (TxFSM[0]), .datab (
                         TxFSM[1]), .datac (TopTx), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix5605z52923.lut_mask = 16'h6c6c;
    cycloneii_lcell_comb ix57064z52923 (.combout (NOT_Rx), .dataa (p_rxflex), .datab (
                         p_nrst_int_dup_8), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix57064z52923.lut_mask = 16'h7777;
endmodule


module modgen_counter_12_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                             updn, cnt_en ) ;

    input clock ;
    output [11:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [11:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx51271z1, nx18093z22, nx52268z1, nx18093z20, nx53265z1, nx18093z18, 
         nx54262z1, nx18093z16, nx55259z1, nx18093z14, nx56256z1, nx18093z12, 
         nx57253z1, nx18093z10, nx58250z1, nx18093z8, nx59247z1, nx18093z6, 
         nx60244z1, nx18093z4, nx17096z1, nx18093z2, nx18093z1, 
         nx_modgen_counter_12_0_vcc_net;
    wire [61:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_9_ (.regout (q[9]), .datain (nx60244z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_11_ (.regout (q[11]), .datain (nx18093z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_10_ (.regout (q[10]), .datain (nx17096z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix18093z52933 (.combout (nx53265z1), .cout (nx18093z18)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z20)) ;
                         
                         defparam ix18093z52933.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52933.sum_lutc_input = "cin";
    assign nx_modgen_counter_12_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix18093z52923 (.combout (nx18093z1), .dataa (q[11]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z2)) ;
                         
                         defparam ix18093z52923.lut_mask = 16'h5a00;
                         
                         defparam ix18093z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52925 (.combout (nx17096z1), .cout (nx18093z2)
                         , .dataa (q[10]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z4)) ;
                         
                         defparam ix18093z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52926 (.combout (nx60244z1), .cout (nx18093z4)
                         , .dataa (q[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z6)) ;
                         
                         defparam ix18093z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52927 (.combout (nx59247z1), .cout (nx18093z6)
                         , .dataa (q[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z8)) ;
                         
                         defparam ix18093z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52928 (.combout (nx58250z1), .cout (nx18093z8)
                         , .dataa (q[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z10)) ;
                         
                         defparam ix18093z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52934 (.combout (nx52268z1), .cout (nx18093z20)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z22)) ;
                         
                         defparam ix18093z52934.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52929 (.combout (nx57253z1), .cout (nx18093z10)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z12)) ;
                         
                         defparam ix18093z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52930 (.combout (nx56256z1), .cout (nx18093z12)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z14)) ;
                         
                         defparam ix18093z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52931 (.combout (nx55259z1), .cout (nx18093z14)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z16)) ;
                         
                         defparam ix18093z52931.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52932 (.combout (nx54262z1), .cout (nx18093z16)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z18)) ;
                         
                         defparam ix18093z52932.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52935 (.combout (nx51271z1), .cout (nx18093z22)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix18093z52935.lut_mask = 16'h55aa;
endmodule


module modgen_counter_11_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                             updn, cnt_en ) ;

    input clock ;
    output [10:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [10:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx51271z1, nx17096z20, nx52268z1, nx17096z18, nx53265z1, nx17096z16, 
         nx54262z1, nx17096z14, nx55259z1, nx17096z12, nx56256z1, nx17096z10, 
         nx57253z1, nx17096z8, nx58250z1, nx17096z6, nx59247z1, nx17096z4, 
         nx60244z1, nx17096z2, nx17096z1, nx_modgen_counter_11_0_vcc_net;
    wire [56:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_9_ (.regout (q[9]), .datain (nx60244z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_10_ (.regout (q[10]), .datain (nx17096z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix17096z52932 (.combout (nx53265z1), .cout (nx17096z16)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z18)) ;
                         
                         defparam ix17096z52932.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52932.sum_lutc_input = "cin";
    assign nx_modgen_counter_11_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix17096z52923 (.combout (nx17096z1), .dataa (q[10]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z2)) ;
                         
                         defparam ix17096z52923.lut_mask = 16'h5a00;
                         
                         defparam ix17096z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52925 (.combout (nx60244z1), .cout (nx17096z2)
                         , .dataa (q[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z4)) ;
                         
                         defparam ix17096z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52926 (.combout (nx59247z1), .cout (nx17096z4)
                         , .dataa (q[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z6)) ;
                         
                         defparam ix17096z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52927 (.combout (nx58250z1), .cout (nx17096z6)
                         , .dataa (q[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z8)) ;
                         
                         defparam ix17096z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52933 (.combout (nx52268z1), .cout (nx17096z18)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z20)) ;
                         
                         defparam ix17096z52933.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52928 (.combout (nx57253z1), .cout (nx17096z8)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z10)) ;
                         
                         defparam ix17096z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52929 (.combout (nx56256z1), .cout (nx17096z10)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z12)) ;
                         
                         defparam ix17096z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52930 (.combout (nx55259z1), .cout (nx17096z12)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z14)) ;
                         
                         defparam ix17096z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52931 (.combout (nx54262z1), .cout (nx17096z14)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z16)) ;
                         
                         defparam ix17096z52931.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52934 (.combout (nx51271z1), .cout (nx17096z20)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix17096z52934.lut_mask = 16'h55aa;
endmodule

