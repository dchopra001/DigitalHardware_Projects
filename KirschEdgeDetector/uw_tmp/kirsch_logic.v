//
// Verilog description for cell kirsch, 
// Thu Jul 24 07:12:22 2014
//
// Precision RTL Synthesis, 2008a.47//


module kirsch ( i_clock, i_reset, i_valid, i_pixel, o_valid, o_edge, o_dir, 
                o_mode, o_row, debug_key, debug_switch, debug_led_red, 
                debug_led_grn, debug_num_0, debug_num_1, debug_num_2, 
                debug_num_3, debug_num_4, debug_num_5 ) ;

    input i_clock ;
    input i_reset ;
    input i_valid ;
    input [7:0]i_pixel ;
    output o_valid ;
    output o_edge ;
    output [2:0]o_dir ;
    output [1:0]o_mode ;
    output [7:0]o_row ;
    input [3:1]debug_key ;
    input [17:0]debug_switch ;
    output [17:0]debug_led_red ;
    output [5:0]debug_led_grn ;
    output [3:0]debug_num_0 ;
    output [3:0]debug_num_1 ;
    output [3:0]debug_num_2 ;
    output [3:0]debug_num_3 ;
    output [3:0]debug_num_4 ;
    output [3:0]debug_num_5 ;

    wire o_valid_dup0;
    wire [1:0]o_mode_dup0;
    wire [7:0]o_row_dup0;
    wire [7:0]col;
    wire [2:0]state;
    wire [2:1]vBit;
    wire [2:0]second_cw;
    wire stage1_wNw_2_, stage1_wNw_0_;
    wire [2:0]final_dir;
    wire stage1_nNe_2_, stage1_eSe_2_, stage1_sSw_2_;
    wire [2:0]first_cw;
    wire [7:0]r10;
    wire [7:0]r5;
    wire [7:0]x_r5;
    wire [7:0]r12;
    wire [7:0]a;
    wire [7:0]b;
    wire [7:0]c;
    wire [7:0]d;
    wire [7:0]e;
    wire [7:0]f;
    wire [7:0]g;
    wire [7:0]h;
    wire [7:0]i;
    wire [8:0]r9;
    wire [8:0]r2;
    wire [8:0]r13;
    wire [7:0]validBit;
    wire [9:0]x_r6;
    wire [9:0]r18;
    wire [9:0]b_d1;
    wire [9:0]r15;
    wire [9:0]r11;
    wire [9:0]x_r11;
    wire [9:0]r16;
    wire [9:0]x_r3;
    wire [10:0]r14;
    wire [11:0]x_r12;
    wire r17_12_, r17_11_, r17_10_, r17_9_, r17_8_, r17_7_;
    wire [12:0]x_r22;
    wire [8:0]r2_6n3s1;
    wire [9:0]b_d1_7n4s1;
    wire [9:0]x_r3_7n3s1;
    wire [9:0]r16_7n1s1;
    wire [9:0]x_r6_8n4s1;
    wire [10:0]r14_8n3s1;
    wire [11:0]x_r12_8n2s1;
    wire [12:1]x_r22_8n1s1;
    wire r17_10n1s1_12_, r17_10n1s1_11_, r17_10n1s1_10_, r17_10n1s1_9_, 
         r17_10n1s1_8_, r17_10n1s1_7_;
    wire [7:0]tempStorage_0_;
    wire [7:0]tempStorage_1_;
    wire [7:0]tempStorage_2_;
    wire i_clock_int, i_reset_int, i_valid_int;
    wire [7:0]i_pixel_int;
    wire o_edge_dup0;
    wire [2:0]o_dir_dup0;
    wire [2:0]we;
    wire PWR, nx40914z1, nx17322z1, nx36625z2, nx15418z1, nx33634z2, nx250z2, 
         nx27953z2, nx7380z2, nx56415z1, nx54873z1, nx34104z1, nx16422z1, 
         nx58464z1, nx65254z1, first_cw_9n1ss1_0_, second_cw_9n2ss1_0_, 
         nx42030z2, nx17266z2, nx27527z1, nx28524z1;
    wire [7:0]r2_6n3s1f1;
    wire [7:0]r2_6n3s1f2;
    wire nx64789z2, nx28950z2, nx49445z2, nx16269z2, nx33057z2, nx31986z2, 
         _MGC0390_MGC039, nx51677z1, nx51677z2, b_0__dup_1325, nx27471z1, 
         nx26474z1, nx25477z1, nx24480z1, nx23483z1, nx22486z1, nx21489z1, 
         nx20492z1, nx29646z1, nx30643z1, nx31640z1, nx32637z1, nx33634z1, 
         nx34631z1, nx35628z1, nx36625z1, nx17322z3, nx29521z1, nx250z1, 
         nx64789z1, nx63792z1, nx62795z1, nx61798z1, nx60801z1, nx59804z1, 
         nx58807z1, nx27953z1, nx28950z1, nx29947z1, nx30944z1, nx31941z1, 
         nx32938z1, nx33935z1, nx34932z1, nx7380z1, nx6383z1, nx5386z1, nx4389z1, 
         nx3392z1, nx2395z1, nx1398z1, nx401z1, nx48448z1, nx49445z1, nx50442z1, 
         nx51439z1, nx52436z1, nx53433z1, nx54430z1, nx55427z1, nx35772z1, 
         nx36769z1, nx37766z1, nx17266z1, nx16269z1, nx15272z1, nx14275z1, 
         nx13278z1, nx12281z1, nx11284z1, nx10287z1, nx9290z1, nx8293z1, 
         nx64999z1, nx42030z1, nx41033z1, nx40036z1, nx39039z1, nx38042z1, 
         nx37045z1, nx36048z1, nx35051z1, nx34054z1, nx33057z1, nx47369z1, 
         nx23013z1, nx24010z1, nx25007z1, nx26004z1, nx27001z1, nx27998z1, 
         nx28995z1, nx29992z1, nx30989z1, nx31986z1, nx11673z1, nx20419z1, 
         nx64789z3, nx64789z4, nx28950z3, nx28950z4, nx6383z3, nx6383z4, 
         nx49445z3, nx49445z4, nx33057z4, nx31986z3, nx31986z4, nx31986z5, 
         nx16269z4, nx11673z3, nx11673z2, nx6383z2, nx16269z3, nx33057z3, 
         nx64789z5, nx28950z5, nx6383z5, nx49445z5, nx33057z5, nx33057z6, 
         nx31986z6, nx36874z1, nx16269z5, nx16269z6, nx20419z3, nx20419z9, 
         nx20419z2, nx20419z10, nx20419z11, nx20419z4, nx20419z6, nx20419z5, 
         nx20419z7, nx20419z8, nx17322z2, validBit_7__repl, validBit_3__repl, 
         validBit_2__repl, validBit_1__repl, validBit_0__repl, state_1__repl, 
         state_0__repl;
    wire [6265:0] xmplr_dummy ;




    modgen_counter_8_0 modgen_counter_col (.clock (i_clock_int), .q ({col[7],
                       col[6],col[5],col[4],col[3],col[2],col[1],col[0]}), .clk_en (
                       nx40914z1), .sclear (i_reset_int)) ;
    modgen_counter_8_1 modgen_counter_o_row (.clock (i_clock_int), .q ({
                       o_row_dup0[7],o_row_dup0[6],o_row_dup0[5],o_row_dup0[4],
                       o_row_dup0[3],o_row_dup0[2],o_row_dup0[1],o_row_dup0[0]})
                       , .sclear (i_reset_int), .cnt_en (nx17322z1)) ;
    add_8_0 r2_add8_6i49 (.a ({r2_6n3s1f1[7],r2_6n3s1f1[6],r2_6n3s1f1[5],
            r2_6n3s1f1[4],r2_6n3s1f1[3],r2_6n3s1f1[2],r2_6n3s1f1[1],
            r2_6n3s1f1[0]}), .b ({r2_6n3s1f2[7],r2_6n3s1f2[6],r2_6n3s1f2[5],
            r2_6n3s1f2[4],r2_6n3s1f2[3],r2_6n3s1f2[2],r2_6n3s1f2[1],
            r2_6n3s1f2[0]}), .d ({r2_6n3s1[7],r2_6n3s1[6],r2_6n3s1[5],
            r2_6n3s1[4],r2_6n3s1[3],r2_6n3s1[2],r2_6n3s1[1],r2_6n3s1[0]}), .cout (
            r2_6n3s1[8])) ;
    add_9_0 x_r3_add9_7i9 (.a ({r2[8],r2[7],r2[6],r2[5],r2[4],r2[3],r2[2],r2[1],
            r2[0]}), .d ({x_r3_7n3s1[8],x_r3_7n3s1[7],x_r3_7n3s1[6],
            x_r3_7n3s1[5],x_r3_7n3s1[4],x_r3_7n3s1[3],x_r3_7n3s1[2],
            x_r3_7n3s1[1],x_r3_7n3s1[0]}), .cout (x_r3_7n3s1[9]), .p_r5_7_ (
            r5[7]), .p_x_r5_7_ (x_r5[7]), .p_validBit_2_ (validBit[2]), .p_r5_6_ (
            r5[6]), .p_x_r5_6_ (x_r5[6]), .p_r5_5_ (r5[5]), .p_x_r5_5_ (x_r5[5])
            , .p_r5_4_ (r5[4]), .p_x_r5_4_ (x_r5[4]), .p_r5_3_ (r5[3]), .p_x_r5_3_ (
            x_r5[3]), .p_r5_2_ (r5[2]), .p_x_r5_2_ (x_r5[2]), .p_r5_1_ (r5[1]), 
            .p_x_r5_1_ (x_r5[1]), .p_r5_0_ (r5[0]), .p_x_r5_0_ (x_r5[0])) ;
    add_9_1 b_d1_add9_7i10 (.a ({r9[8],r9[7],r9[6],r9[5],r9[4],r9[3],r9[2],r9[1]
            ,r9[0]}), .b ({xmplr_dummy [0],r10[7],r10[6],r10[5],r10[4],r10[3],
            r10[2],r10[1],r10[0]}), .d ({b_d1_7n4s1[8],b_d1_7n4s1[7],
            b_d1_7n4s1[6],b_d1_7n4s1[5],b_d1_7n4s1[4],b_d1_7n4s1[3],
            b_d1_7n4s1[2],b_d1_7n4s1[1],b_d1_7n4s1[0]}), .cout (b_d1_7n4s1[9])
            ) ;
    add_9_2 r16_add9_7i11 (.a ({xmplr_dummy [1],r12[7],r12[6],r12[5],r12[4],
            r12[3],r12[2],r12[1],r12[0]}), .b ({r13[8],r13[7],r13[6],r13[5],
            r13[4],r13[3],r13[2],r13[1],r13[0]}), .d ({r16_7n1s1[8],r16_7n1s1[7]
            ,r16_7n1s1[6],r16_7n1s1[5],r16_7n1s1[4],r16_7n1s1[3],r16_7n1s1[2],
            r16_7n1s1[1],r16_7n1s1[0]}), .cout (r16_7n1s1[9])) ;
    add_9_3 x_r6_add9_8i1 (.a ({r9[8],r9[7],r9[6],r9[5],r9[4],r9[3],r9[2],r9[1],
            r9[0]}), .b ({r2[8],r2[7],r2[6],r2[5],r2[4],r2[3],r2[2],r2[1],r2[0]}
            ), .d ({x_r6_8n4s1[8],x_r6_8n4s1[7],x_r6_8n4s1[6],x_r6_8n4s1[5],
            x_r6_8n4s1[4],x_r6_8n4s1[3],x_r6_8n4s1[2],x_r6_8n4s1[1],
            x_r6_8n4s1[0]}), .cout (x_r6_8n4s1[9])) ;
    add_10_0 r14_add10_8i2 (.a ({xmplr_dummy [2],r2[8],r2[7],r2[6],r2[5],r2[4],
             r2[3],r2[2],r2[1],r2[0]}), .b ({x_r6[9],x_r6[8],x_r6[7],x_r6[6],
             x_r6[5],x_r6[4],x_r6[3],x_r6[2],x_r6[1],x_r6[0]}), .d ({
             r14_8n3s1[9],r14_8n3s1[8],r14_8n3s1[7],r14_8n3s1[6],r14_8n3s1[5],
             r14_8n3s1[4],r14_8n3s1[3],r14_8n3s1[2],r14_8n3s1[1],r14_8n3s1[0]})
             , .cout (r14_8n3s1[10])) ;
    add_11_0 x_r12_add11_8i3 (.a ({xmplr_dummy [3],xmplr_dummy [4],r13[8],r13[7]
             ,r13[6],r13[5],r13[4],r13[3],r13[2],r13[1],r13[0]}), .b ({r14[10],
             r14[9],r14[8],r14[7],r14[6],r14[5],r14[4],r14[3],r14[2],r14[1],
             r14[0]}), .d ({x_r12_8n2s1[10],x_r12_8n2s1[9],x_r12_8n2s1[8],
             x_r12_8n2s1[7],x_r12_8n2s1[6],x_r12_8n2s1[5],x_r12_8n2s1[4],
             x_r12_8n2s1[3],x_r12_8n2s1[2],x_r12_8n2s1[1],x_r12_8n2s1[0]}), .cout (
             x_r12_8n2s1[11])) ;
    add_12_0 x_r22_add12_8i4 (.a ({xmplr_dummy [5],x_r12[11],x_r12[10],x_r12[9],
             x_r12[8],x_r12[7],x_r12[6],x_r12[5],x_r12[4],x_r12[3],x_r12[2],
             x_r12[1]}), .b ({xmplr_dummy [6],xmplr_dummy [7],xmplr_dummy [8],
             xmplr_dummy [9],xmplr_dummy [10],xmplr_dummy [11],xmplr_dummy [12],
             xmplr_dummy [13],xmplr_dummy [14],xmplr_dummy [15],xmplr_dummy [16]
             ,x_r12[0]}), .d ({x_r22_8n1s1[12],x_r22_8n1s1[11],x_r22_8n1s1[10],
             x_r22_8n1s1[9],x_r22_8n1s1[8],x_r22_8n1s1[7],x_r22_8n1s1[6],
             x_r22_8n1s1[5],x_r22_8n1s1[4],x_r22_8n1s1[3],x_r22_8n1s1[2],
             x_r22_8n1s1[1]})) ;
    sub_12_0 r17_sub13_10i1 (.a ({r18[9],r18[8],r18[7],r18[6],r18[5],r18[4],
             r18[3],r18[2],r18[1],r18[0],xmplr_dummy [17],xmplr_dummy [18]}), .b (
             {x_r22[12],x_r22[11],x_r22[10],x_r22[9],x_r22[8],x_r22[7],x_r22[6],
             x_r22[5],x_r22[4],x_r22[3],x_r22[2],x_r22[1]}), .d ({r17_10n1s1_12_
             ,r17_10n1s1_11_,r17_10n1s1_10_,r17_10n1s1_9_,r17_10n1s1_8_,
             r17_10n1s1_7_,xmplr_dummy [19],xmplr_dummy [20],xmplr_dummy [21],
             xmplr_dummy [22],xmplr_dummy [23],xmplr_dummy [24]}), .p_x_r22_0_ (
             x_r22[0])) ;
    ram_dq_8_0 Generate_mem_0_u_mem0_mem (.wr_data1 ({i_pixel_int[7],
               i_pixel_int[6],i_pixel_int[5],i_pixel_int[4],i_pixel_int[3],
               i_pixel_int[2],i_pixel_int[1],i_pixel_int[0]}), .rd_data1 ({
               tempStorage_0_[7],tempStorage_0_[6],tempStorage_0_[5],
               tempStorage_0_[4],tempStorage_0_[3],tempStorage_0_[2],
               tempStorage_0_[1],tempStorage_0_[0]}), .addr1 ({col[7],col[6],
               col[5],col[4],col[3],col[2],col[1],col[0]}), .wr_clk1 (
               i_clock_int), .wr_ena1 (we[0])) ;
    ram_dq_8_1 Generate_mem_1_u_mem0_mem (.wr_data1 ({i_pixel_int[7],
               i_pixel_int[6],i_pixel_int[5],i_pixel_int[4],i_pixel_int[3],
               i_pixel_int[2],i_pixel_int[1],i_pixel_int[0]}), .rd_data1 ({
               tempStorage_1_[7],tempStorage_1_[6],tempStorage_1_[5],
               tempStorage_1_[4],tempStorage_1_[3],tempStorage_1_[2],
               tempStorage_1_[1],tempStorage_1_[0]}), .addr1 ({col[7],col[6],
               col[5],col[4],col[3],col[2],col[1],col[0]}), .wr_clk1 (
               i_clock_int), .wr_ena1 (we[1])) ;
    ram_dq_8_2 Generate_mem_2_u_mem0_mem (.wr_data1 ({i_pixel_int[7],
               i_pixel_int[6],i_pixel_int[5],i_pixel_int[4],i_pixel_int[3],
               i_pixel_int[2],i_pixel_int[1],i_pixel_int[0]}), .rd_data1 ({
               tempStorage_2_[7],tempStorage_2_[6],tempStorage_2_[5],
               tempStorage_2_[4],tempStorage_2_[3],tempStorage_2_[2],
               tempStorage_2_[1],tempStorage_2_[0]}), .addr1 ({col[7],col[6],
               col[5],col[4],col[3],col[2],col[1],col[0]}), .wr_clk1 (
               i_clock_int), .wr_ena1 (we[2])) ;
    assign PWR = 1 ;
    assign nx15418z1 = ~nx6383z2 ;
    assign _MGC0390_MGC039 = 0 ;
    stratixii_lcell_ff reg_x_r6_9_ (.regout (x_r6[9]), .datain (x_r6_8n4s1[9]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_2__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_x_r6_8_ (.regout (x_r6[8]), .datain (x_r6_8n4s1[8]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_2__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_x_r6_7_ (.regout (x_r6[7]), .datain (x_r6_8n4s1[7]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_2__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_x_r6_6_ (.regout (x_r6[6]), .datain (x_r6_8n4s1[6]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_2__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_x_r6_5_ (.regout (x_r6[5]), .datain (x_r6_8n4s1[5]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_2__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_x_r6_4_ (.regout (x_r6[4]), .datain (x_r6_8n4s1[4]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_2__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_x_r6_3_ (.regout (x_r6[3]), .datain (x_r6_8n4s1[3]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_2__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_x_r6_2_ (.regout (x_r6[2]), .datain (x_r6_8n4s1[2]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_2__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_x_r6_1_ (.regout (x_r6[1]), .datain (x_r6_8n4s1[1]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_2__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_x_r6_0_ (.regout (x_r6[0]), .datain (x_r6_8n4s1[0]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_2__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_x_r5_7_ (.regout (x_r5[7]), .datain (nx27953z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx27953z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r5_6_ (.regout (x_r5[6]), .datain (nx28950z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx27953z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r5_5_ (.regout (x_r5[5]), .datain (nx29947z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx27953z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r5_4_ (.regout (x_r5[4]), .datain (nx30944z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx27953z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r5_3_ (.regout (x_r5[3]), .datain (nx31941z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx27953z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r5_2_ (.regout (x_r5[2]), .datain (nx32938z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx27953z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r5_1_ (.regout (x_r5[1]), .datain (nx33935z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx27953z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r5_0_ (.regout (x_r5[0]), .datain (nx34932z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx27953z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r3_9_ (.regout (x_r3[9]), .datain (x_r3_7n3s1[9]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (nx56415z1)
                       , .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r3_8_ (.regout (x_r3[8]), .datain (x_r3_7n3s1[8]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (nx56415z1)
                       , .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r3_7_ (.regout (x_r3[7]), .datain (x_r3_7n3s1[7]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (nx56415z1)
                       , .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r3_6_ (.regout (x_r3[6]), .datain (x_r3_7n3s1[6]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (nx56415z1)
                       , .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r3_5_ (.regout (x_r3[5]), .datain (x_r3_7n3s1[5]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (nx56415z1)
                       , .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r3_4_ (.regout (x_r3[4]), .datain (x_r3_7n3s1[4]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (nx56415z1)
                       , .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r3_3_ (.regout (x_r3[3]), .datain (x_r3_7n3s1[3]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (nx56415z1)
                       , .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r3_2_ (.regout (x_r3[2]), .datain (x_r3_7n3s1[2]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (nx56415z1)
                       , .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r3_1_ (.regout (x_r3[1]), .datain (x_r3_7n3s1[1]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (nx56415z1)
                       , .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r3_0_ (.regout (x_r3[0]), .datain (x_r3_7n3s1[0]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (nx56415z1)
                       , .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r22_9_ (.regout (x_r22[9]), .datain (x_r22_8n1s1[9]
                       ), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx65254z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r22_8_ (.regout (x_r22[8]), .datain (x_r22_8n1s1[8]
                       ), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx65254z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r22_7_ (.regout (x_r22[7]), .datain (x_r22_8n1s1[7]
                       ), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx65254z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r22_6_ (.regout (x_r22[6]), .datain (x_r22_8n1s1[6]
                       ), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx65254z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r22_5_ (.regout (x_r22[5]), .datain (x_r22_8n1s1[5]
                       ), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx65254z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r22_4_ (.regout (x_r22[4]), .datain (x_r22_8n1s1[4]
                       ), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx65254z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r22_3_ (.regout (x_r22[3]), .datain (x_r22_8n1s1[3]
                       ), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx65254z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r22_2_ (.regout (x_r22[2]), .datain (x_r22_8n1s1[2]
                       ), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx65254z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r22_12_ (.regout (x_r22[12]), .datain (
                       x_r22_8n1s1[12]), .adatasdata (1'b0), .clk (i_clock_int)
                       , .ena (nx65254z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_x_r22_11_ (.regout (x_r22[11]), .datain (
                       x_r22_8n1s1[11]), .adatasdata (1'b0), .clk (i_clock_int)
                       , .ena (nx65254z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_x_r22_10_ (.regout (x_r22[10]), .datain (
                       x_r22_8n1s1[10]), .adatasdata (1'b0), .clk (i_clock_int)
                       , .ena (nx65254z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_x_r22_1_ (.regout (x_r22[1]), .datain (x_r22_8n1s1[1]
                       ), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx65254z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r22_0_ (.regout (x_r22[0]), .datain (x_r12[0]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx65254z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r12_9_ (.regout (x_r12[9]), .datain (x_r12_8n2s1[9]
                       ), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx58464z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r12_8_ (.regout (x_r12[8]), .datain (x_r12_8n2s1[8]
                       ), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx58464z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r12_7_ (.regout (x_r12[7]), .datain (x_r12_8n2s1[7]
                       ), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx58464z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r12_6_ (.regout (x_r12[6]), .datain (x_r12_8n2s1[6]
                       ), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx58464z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r12_5_ (.regout (x_r12[5]), .datain (x_r12_8n2s1[5]
                       ), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx58464z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r12_4_ (.regout (x_r12[4]), .datain (x_r12_8n2s1[4]
                       ), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx58464z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r12_3_ (.regout (x_r12[3]), .datain (x_r12_8n2s1[3]
                       ), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx58464z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r12_2_ (.regout (x_r12[2]), .datain (x_r12_8n2s1[2]
                       ), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx58464z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r12_11_ (.regout (x_r12[11]), .datain (
                       x_r12_8n2s1[11]), .adatasdata (1'b0), .clk (i_clock_int)
                       , .ena (nx58464z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_x_r12_10_ (.regout (x_r12[10]), .datain (
                       x_r12_8n2s1[10]), .adatasdata (1'b0), .clk (i_clock_int)
                       , .ena (nx58464z1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_x_r12_1_ (.regout (x_r12[1]), .datain (x_r12_8n2s1[1]
                       ), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx58464z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r12_0_ (.regout (x_r12[0]), .datain (x_r12_8n2s1[0]
                       ), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx58464z1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r11_9_ (.regout (x_r11[9]), .datain (nx42030z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx42030z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r11_8_ (.regout (x_r11[8]), .datain (nx41033z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx42030z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r11_7_ (.regout (x_r11[7]), .datain (nx40036z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx42030z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r11_6_ (.regout (x_r11[6]), .datain (nx39039z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx42030z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r11_5_ (.regout (x_r11[5]), .datain (nx38042z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx42030z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r11_4_ (.regout (x_r11[4]), .datain (nx37045z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx42030z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r11_3_ (.regout (x_r11[3]), .datain (nx36048z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx42030z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r11_2_ (.regout (x_r11[2]), .datain (nx35051z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx42030z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r11_1_ (.regout (x_r11[1]), .datain (nx34054z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx42030z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_x_r11_0_ (.regout (x_r11[0]), .datain (nx33057z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx42030z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_validBit_8_ (.regout (o_valid_dup0), .datain (
                       validBit[7]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset_int), .sload (1'b0)
                       ) ;
    stratixii_lcell_ff reg_validBit_7__repl (.regout (validBit_7__repl), .datain (
                       validBit[6]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset_int), .sload (1'b0)
                       ) ;
    stratixii_lcell_ff reg_validBit_7_ (.regout (validBit[7]), .datain (
                       validBit[6]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset_int), .sload (1'b0)
                       ) ;
    stratixii_lcell_ff reg_validBit_6_ (.regout (validBit[6]), .datain (
                       validBit[5]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset_int), .sload (1'b0)
                       ) ;
    stratixii_lcell_ff reg_validBit_5_ (.regout (validBit[5]), .datain (
                       validBit[4]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset_int), .sload (1'b0)
                       ) ;
    stratixii_lcell_ff reg_validBit_4_ (.regout (validBit[4]), .datain (
                       validBit[3]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset_int), .sload (1'b0)
                       ) ;
    stratixii_lcell_ff reg_validBit_3__repl (.regout (validBit_3__repl), .datain (
                       validBit[2]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset_int), .sload (1'b0)
                       ) ;
    stratixii_lcell_ff reg_validBit_3_ (.regout (validBit[3]), .datain (
                       validBit[2]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset_int), .sload (1'b0)
                       ) ;
    stratixii_lcell_ff reg_validBit_2__repl (.regout (validBit_2__repl), .datain (
                       validBit[1]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset_int), .sload (1'b0)
                       ) ;
    stratixii_lcell_ff reg_validBit_2_ (.regout (validBit[2]), .datain (
                       validBit[1]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset_int), .sload (1'b0)
                       ) ;
    stratixii_lcell_ff reg_validBit_1__repl (.regout (validBit_1__repl), .datain (
                       validBit[0]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset_int), .sload (1'b0)
                       ) ;
    stratixii_lcell_ff reg_validBit_1_ (.regout (validBit[1]), .datain (
                       validBit[0]), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset_int), .sload (1'b0)
                       ) ;
    stratixii_lcell_ff reg_validBit_0__repl (.regout (validBit_0__repl), .datain (
                       nx20419z1), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_validBit_0_ (.regout (validBit[0]), .datain (
                       nx20419z1), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_vBit_2_ (.regout (vBit[2]), .datain (vBit[1]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_vBit_1_ (.regout (vBit[1]), .datain (i_valid_int), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_state_2_ (.regout (state[2]), .datain (nx27527z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       i_reset_int), .sload (1'b0)) ;
    stratixii_lcell_ff reg_state_1__repl (.regout (state_1__repl), .datain (
                       nx28524z1), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset_int), .sload (1'b0)
                       ) ;
    stratixii_lcell_ff reg_state_1_ (.regout (state[1]), .datain (nx28524z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       i_reset_int), .sload (1'b0)) ;
    stratixii_lcell_ff reg_state_0__repl (.regout (state_0__repl), .datain (
                       nx29521z1), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_state_0_ (.regout (state[0]), .datain (nx29521z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_stage1_wNw_2_ (.regout (stage1_wNw_2_), .datain (
                       nx6383z2), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx7380z2), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_stage1_wNw_0_ (.regout (stage1_wNw_0_), .datain (
                       nx15418z1), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx7380z2), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_stage1_sSw_2_ (.regout (stage1_sSw_2_), .datain (
                       nx64789z2), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx250z2), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_stage1_nNe_2_ (.regout (stage1_nNe_2_), .datain (
                       nx49445z2), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_0__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_stage1_eSe_2_ (.regout (stage1_eSe_2_), .datain (
                       nx28950z2), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx27953z2), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_second_cw_2_ (.regout (second_cw[2]), .datain (
                       nx64999z1), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx42030z2), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_second_cw_1_ (.regout (second_cw[1]), .datain (
                       nx33057z2), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx42030z2), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_second_cw_0_ (.regout (second_cw[0]), .datain (
                       second_cw_9n2ss1_0_), .adatasdata (1'b0), .clk (
                       i_clock_int), .ena (nx42030z2), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r9_8_ (.regout (r9[8]), .datain (r2_6n3s1[8]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_0__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r9_7_ (.regout (r9[7]), .datain (r2_6n3s1[7]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_0__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r9_6_ (.regout (r9[6]), .datain (r2_6n3s1[6]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_0__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r9_5_ (.regout (r9[5]), .datain (r2_6n3s1[5]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_0__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r9_4_ (.regout (r9[4]), .datain (r2_6n3s1[4]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_0__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r9_3_ (.regout (r9[3]), .datain (r2_6n3s1[3]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_0__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r9_2_ (.regout (r9[2]), .datain (r2_6n3s1[2]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_0__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r9_1_ (.regout (r9[1]), .datain (r2_6n3s1[1]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_0__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r9_0_ (.regout (r9[0]), .datain (r2_6n3s1[0]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_0__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r5_7_ (.regout (r5[7]), .datain (nx7380z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx7380z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r5_6_ (.regout (r5[6]), .datain (nx6383z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx7380z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r5_5_ (.regout (r5[5]), .datain (nx5386z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx7380z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r5_4_ (.regout (r5[4]), .datain (nx4389z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx7380z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r5_3_ (.regout (r5[3]), .datain (nx3392z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx7380z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r5_2_ (.regout (r5[2]), .datain (nx2395z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx7380z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r5_1_ (.regout (r5[1]), .datain (nx1398z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx7380z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r5_0_ (.regout (r5[0]), .datain (nx401z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx7380z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r2_8_ (.regout (r2[8]), .datain (r2_6n3s1[8]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx33634z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r2_7_ (.regout (r2[7]), .datain (r2_6n3s1[7]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx33634z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r2_6_ (.regout (r2[6]), .datain (r2_6n3s1[6]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx33634z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r2_5_ (.regout (r2[5]), .datain (r2_6n3s1[5]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx33634z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r2_4_ (.regout (r2[4]), .datain (r2_6n3s1[4]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx33634z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r2_3_ (.regout (r2[3]), .datain (r2_6n3s1[3]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx33634z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r2_2_ (.regout (r2[2]), .datain (r2_6n3s1[2]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx33634z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r2_1_ (.regout (r2[1]), .datain (r2_6n3s1[1]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx33634z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r2_0_ (.regout (r2[0]), .datain (r2_6n3s1[0]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx33634z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r18_9_ (.regout (r18[9]), .datain (nx17266z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx17266z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r18_8_ (.regout (r18[8]), .datain (nx16269z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx17266z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r18_7_ (.regout (r18[7]), .datain (nx15272z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx17266z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r18_6_ (.regout (r18[6]), .datain (nx14275z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx17266z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r18_5_ (.regout (r18[5]), .datain (nx13278z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx17266z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r18_4_ (.regout (r18[4]), .datain (nx12281z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx17266z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r18_3_ (.regout (r18[3]), .datain (nx11284z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx17266z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r18_2_ (.regout (r18[2]), .datain (nx10287z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx17266z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r18_1_ (.regout (r18[1]), .datain (nx9290z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx17266z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r18_0_ (.regout (r18[0]), .datain (nx8293z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx17266z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r17_9_ (.regout (r17_9_), .datain (r17_10n1s1_9_), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_7__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r17_8_ (.regout (r17_8_), .datain (r17_10n1s1_8_), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_7__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r17_7_ (.regout (r17_7_), .datain (r17_10n1s1_7_), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_7__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r17_12_ (.regout (r17_12_), .datain (r17_10n1s1_12_)
                       , .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_7__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_r17_11_ (.regout (r17_11_), .datain (r17_10n1s1_11_)
                       , .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_7__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_r17_10_ (.regout (r17_10_), .datain (r17_10n1s1_10_)
                       , .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_7__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_r16_9_ (.regout (r16[9]), .datain (r16_7n1s1[9]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx34104z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r16_8_ (.regout (r16[8]), .datain (r16_7n1s1[8]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx34104z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r16_7_ (.regout (r16[7]), .datain (r16_7n1s1[7]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx34104z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r16_6_ (.regout (r16[6]), .datain (r16_7n1s1[6]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx34104z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r16_5_ (.regout (r16[5]), .datain (r16_7n1s1[5]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx34104z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r16_4_ (.regout (r16[4]), .datain (r16_7n1s1[4]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx34104z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r16_3_ (.regout (r16[3]), .datain (r16_7n1s1[3]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx34104z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r16_2_ (.regout (r16[2]), .datain (r16_7n1s1[2]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx34104z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r16_1_ (.regout (r16[1]), .datain (r16_7n1s1[1]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx34104z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r16_0_ (.regout (r16[0]), .datain (r16_7n1s1[0]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx34104z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r15_9_ (.regout (r15[9]), .datain (nx23013z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_3__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r15_8_ (.regout (r15[8]), .datain (nx24010z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_3__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r15_7_ (.regout (r15[7]), .datain (nx25007z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_3__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r15_6_ (.regout (r15[6]), .datain (nx26004z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_3__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r15_5_ (.regout (r15[5]), .datain (nx27001z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_3__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r15_4_ (.regout (r15[4]), .datain (nx27998z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_3__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r15_3_ (.regout (r15[3]), .datain (nx28995z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_3__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r15_2_ (.regout (r15[2]), .datain (nx29992z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_3__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r15_1_ (.regout (r15[1]), .datain (nx30989z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_3__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r15_0_ (.regout (r15[0]), .datain (nx31986z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_3__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r14_9_ (.regout (r14[9]), .datain (r14_8n3s1[9]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx16422z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r14_8_ (.regout (r14[8]), .datain (r14_8n3s1[8]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx16422z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r14_7_ (.regout (r14[7]), .datain (r14_8n3s1[7]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx16422z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r14_6_ (.regout (r14[6]), .datain (r14_8n3s1[6]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx16422z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r14_5_ (.regout (r14[5]), .datain (r14_8n3s1[5]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx16422z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r14_4_ (.regout (r14[4]), .datain (r14_8n3s1[4]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx16422z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r14_3_ (.regout (r14[3]), .datain (r14_8n3s1[3]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx16422z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r14_2_ (.regout (r14[2]), .datain (r14_8n3s1[2]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx16422z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r14_10_ (.regout (r14[10]), .datain (r14_8n3s1[10]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (nx16422z1)
                       , .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r14_1_ (.regout (r14[1]), .datain (r14_8n3s1[1]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx16422z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r14_0_ (.regout (r14[0]), .datain (r14_8n3s1[0]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx16422z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r13_8_ (.regout (r13[8]), .datain (r2_6n3s1[8]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx250z2), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r13_7_ (.regout (r13[7]), .datain (r2_6n3s1[7]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx250z2), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r13_6_ (.regout (r13[6]), .datain (r2_6n3s1[6]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx250z2), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r13_5_ (.regout (r13[5]), .datain (r2_6n3s1[5]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx250z2), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r13_4_ (.regout (r13[4]), .datain (r2_6n3s1[4]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx250z2), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r13_3_ (.regout (r13[3]), .datain (r2_6n3s1[3]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx250z2), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r13_2_ (.regout (r13[2]), .datain (r2_6n3s1[2]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx250z2), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r13_1_ (.regout (r13[1]), .datain (r2_6n3s1[1]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx250z2), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r13_0_ (.regout (r13[0]), .datain (r2_6n3s1[0]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx250z2), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r12_7_ (.regout (r12[7]), .datain (nx250z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx250z2), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r12_6_ (.regout (r12[6]), .datain (nx64789z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx250z2), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r12_5_ (.regout (r12[5]), .datain (nx63792z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx250z2), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r12_4_ (.regout (r12[4]), .datain (nx62795z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx250z2), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r12_3_ (.regout (r12[3]), .datain (nx61798z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx250z2), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r12_2_ (.regout (r12[2]), .datain (nx60801z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx250z2), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r12_1_ (.regout (r12[1]), .datain (nx59804z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx250z2), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r12_0_ (.regout (r12[0]), .datain (nx58807z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx250z2), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r11_9_ (.regout (r11[9]), .datain (x_r3_7n3s1[9]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx54873z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r11_8_ (.regout (r11[8]), .datain (x_r3_7n3s1[8]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx54873z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r11_7_ (.regout (r11[7]), .datain (x_r3_7n3s1[7]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx54873z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r11_6_ (.regout (r11[6]), .datain (x_r3_7n3s1[6]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx54873z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r11_5_ (.regout (r11[5]), .datain (x_r3_7n3s1[5]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx54873z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r11_4_ (.regout (r11[4]), .datain (x_r3_7n3s1[4]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx54873z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r11_3_ (.regout (r11[3]), .datain (x_r3_7n3s1[3]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx54873z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r11_2_ (.regout (r11[2]), .datain (x_r3_7n3s1[2]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx54873z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r11_1_ (.regout (r11[1]), .datain (x_r3_7n3s1[1]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx54873z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r11_0_ (.regout (r11[0]), .datain (x_r3_7n3s1[0]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx54873z1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r10_7_ (.regout (r10[7]), .datain (nx48448z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_0__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r10_6_ (.regout (r10[6]), .datain (nx49445z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_0__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r10_5_ (.regout (r10[5]), .datain (nx50442z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_0__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r10_4_ (.regout (r10[4]), .datain (nx51439z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_0__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r10_3_ (.regout (r10[3]), .datain (nx52436z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_0__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r10_2_ (.regout (r10[2]), .datain (nx53433z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_0__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r10_1_ (.regout (r10[1]), .datain (nx54430z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_0__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_r10_0_ (.regout (r10[0]), .datain (nx55427z1), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (validBit_0__repl), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_out_signal_1_ (.regout (o_mode_dup0[1]), .datain (PWR
                       ), .adatasdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (i_reset_int), .sload (1'b0)) ;
    stratixii_lcell_ff reg_out_signal_0_ (.regout (o_mode_dup0[0]), .datain (
                       nx11673z1), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_i_7_ (.regout (i[7]), .datain (d[7]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_i_6_ (.regout (i[6]), .datain (d[6]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_i_5_ (.regout (i[5]), .datain (d[5]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_i_4_ (.regout (i[4]), .datain (d[4]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_i_3_ (.regout (i[3]), .datain (d[3]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_i_2_ (.regout (i[2]), .datain (d[2]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_i_1_ (.regout (i[1]), .datain (d[1]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_i_0_ (.regout (i[0]), .datain (d[0]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_h_7_ (.regout (h[7]), .datain (i[7]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_h_6_ (.regout (h[6]), .datain (i[6]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_h_5_ (.regout (h[5]), .datain (i[5]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_h_4_ (.regout (h[4]), .datain (i[4]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_h_3_ (.regout (h[3]), .datain (i[3]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_h_2_ (.regout (h[2]), .datain (i[2]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_h_1_ (.regout (h[1]), .datain (i[1]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_h_0_ (.regout (h[0]), .datain (i[0]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_g_7_ (.regout (g[7]), .datain (f[7]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_g_6_ (.regout (g[6]), .datain (f[6]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_g_5_ (.regout (g[5]), .datain (f[5]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_g_4_ (.regout (g[4]), .datain (f[4]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_g_3_ (.regout (g[3]), .datain (f[3]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_g_2_ (.regout (g[2]), .datain (f[2]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_g_1_ (.regout (g[1]), .datain (f[1]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_g_0_ (.regout (g[0]), .datain (f[0]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_first_cw_2_ (.regout (first_cw[2]), .datain (
                       nx47369z1), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_3__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_first_cw_1_ (.regout (first_cw[1]), .datain (
                       nx31986z2), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_3__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_first_cw_0_ (.regout (first_cw[0]), .datain (
                       first_cw_9n1ss1_0_), .adatasdata (1'b0), .clk (
                       i_clock_int), .ena (validBit_3__repl), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_final_dir_2_ (.regout (final_dir[2]), .datain (
                       nx35772z1), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx17266z2), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_final_dir_1_ (.regout (final_dir[1]), .datain (
                       nx36769z1), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx17266z2), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_final_dir_0_ (.regout (final_dir[0]), .datain (
                       nx37766z1), .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       nx17266z2), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_f_7_ (.regout (f[7]), .datain (e[7]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_f_6_ (.regout (f[6]), .datain (e[6]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_f_5_ (.regout (f[5]), .datain (e[5]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_f_4_ (.regout (f[4]), .datain (e[4]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_f_3_ (.regout (f[3]), .datain (e[3]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_f_2_ (.regout (f[2]), .datain (e[2]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_f_1_ (.regout (f[1]), .datain (e[1]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_f_0_ (.regout (f[0]), .datain (e[0]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_e_7_ (.regout (e[7]), .datain (i_pixel_int[7]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_e_6_ (.regout (e[6]), .datain (i_pixel_int[6]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_e_5_ (.regout (e[5]), .datain (i_pixel_int[5]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_e_4_ (.regout (e[4]), .datain (i_pixel_int[4]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_e_3_ (.regout (e[3]), .datain (i_pixel_int[3]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_e_2_ (.regout (e[2]), .datain (i_pixel_int[2]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_e_1_ (.regout (e[1]), .datain (i_pixel_int[1]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_e_0_ (.regout (e[0]), .datain (i_pixel_int[0]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_d_7_ (.regout (d[7]), .datain (nx36625z1), .adatasdata (
                       tempStorage_2_[7]), .clk (i_clock_int), .ena (nx36625z2)
                       , .aclr (1'b0), .sclr (1'b0), .sload (state_0__repl)) ;
    stratixii_lcell_ff reg_d_6_ (.regout (d[6]), .datain (nx35628z1), .adatasdata (
                       tempStorage_2_[6]), .clk (i_clock_int), .ena (nx36625z2)
                       , .aclr (1'b0), .sclr (1'b0), .sload (state_0__repl)) ;
    stratixii_lcell_ff reg_d_5_ (.regout (d[5]), .datain (nx34631z1), .adatasdata (
                       tempStorage_2_[5]), .clk (i_clock_int), .ena (nx36625z2)
                       , .aclr (1'b0), .sclr (1'b0), .sload (state_0__repl)) ;
    stratixii_lcell_ff reg_d_4_ (.regout (d[4]), .datain (nx33634z1), .adatasdata (
                       tempStorage_2_[4]), .clk (i_clock_int), .ena (nx36625z2)
                       , .aclr (1'b0), .sclr (1'b0), .sload (state_0__repl)) ;
    stratixii_lcell_ff reg_d_3_ (.regout (d[3]), .datain (nx32637z1), .adatasdata (
                       tempStorage_2_[3]), .clk (i_clock_int), .ena (nx36625z2)
                       , .aclr (1'b0), .sclr (1'b0), .sload (state_0__repl)) ;
    stratixii_lcell_ff reg_d_2_ (.regout (d[2]), .datain (nx31640z1), .adatasdata (
                       tempStorage_2_[2]), .clk (i_clock_int), .ena (nx36625z2)
                       , .aclr (1'b0), .sclr (1'b0), .sload (state_0__repl)) ;
    stratixii_lcell_ff reg_d_1_ (.regout (d[1]), .datain (nx30643z1), .adatasdata (
                       tempStorage_2_[1]), .clk (i_clock_int), .ena (nx36625z2)
                       , .aclr (1'b0), .sclr (1'b0), .sload (state_0__repl)) ;
    stratixii_lcell_ff reg_d_0_ (.regout (d[0]), .datain (nx29646z1), .adatasdata (
                       tempStorage_2_[0]), .clk (i_clock_int), .ena (nx36625z2)
                       , .aclr (1'b0), .sclr (1'b0), .sload (state_0__repl)) ;
    stratixii_lcell_ff reg_c_7_ (.regout (c[7]), .datain (nx20492z1), .adatasdata (
                       tempStorage_2_[7]), .clk (i_clock_int), .ena (nx36625z2)
                       , .aclr (1'b0), .sclr (1'b0), .sload (state_1__repl)) ;
    stratixii_lcell_ff reg_c_6_ (.regout (c[6]), .datain (nx21489z1), .adatasdata (
                       tempStorage_2_[6]), .clk (i_clock_int), .ena (nx36625z2)
                       , .aclr (1'b0), .sclr (1'b0), .sload (state_1__repl)) ;
    stratixii_lcell_ff reg_c_5_ (.regout (c[5]), .datain (nx22486z1), .adatasdata (
                       tempStorage_2_[5]), .clk (i_clock_int), .ena (nx36625z2)
                       , .aclr (1'b0), .sclr (1'b0), .sload (state_1__repl)) ;
    stratixii_lcell_ff reg_c_4_ (.regout (c[4]), .datain (nx23483z1), .adatasdata (
                       tempStorage_2_[4]), .clk (i_clock_int), .ena (nx36625z2)
                       , .aclr (1'b0), .sclr (1'b0), .sload (state_1__repl)) ;
    stratixii_lcell_ff reg_c_3_ (.regout (c[3]), .datain (nx24480z1), .adatasdata (
                       tempStorage_2_[3]), .clk (i_clock_int), .ena (nx36625z2)
                       , .aclr (1'b0), .sclr (1'b0), .sload (state_1__repl)) ;
    stratixii_lcell_ff reg_c_2_ (.regout (c[2]), .datain (nx25477z1), .adatasdata (
                       tempStorage_2_[2]), .clk (i_clock_int), .ena (nx36625z2)
                       , .aclr (1'b0), .sclr (1'b0), .sload (state_1__repl)) ;
    stratixii_lcell_ff reg_c_1_ (.regout (c[1]), .datain (nx26474z1), .adatasdata (
                       tempStorage_2_[1]), .clk (i_clock_int), .ena (nx36625z2)
                       , .aclr (1'b0), .sclr (1'b0), .sload (state_1__repl)) ;
    stratixii_lcell_ff reg_c_0_ (.regout (c[0]), .datain (nx27471z1), .adatasdata (
                       tempStorage_2_[0]), .clk (i_clock_int), .ena (nx36625z2)
                       , .aclr (1'b0), .sclr (1'b0), .sload (state_1__repl)) ;
    stratixii_lcell_ff reg_b_d1_9_ (.regout (b_d1[9]), .datain (b_d1_7n4s1[9]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_1__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_b_d1_8_ (.regout (b_d1[8]), .datain (b_d1_7n4s1[8]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_1__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_b_d1_7_ (.regout (b_d1[7]), .datain (b_d1_7n4s1[7]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_1__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_b_d1_6_ (.regout (b_d1[6]), .datain (b_d1_7n4s1[6]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_1__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_b_d1_5_ (.regout (b_d1[5]), .datain (b_d1_7n4s1[5]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_1__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_b_d1_4_ (.regout (b_d1[4]), .datain (b_d1_7n4s1[4]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_1__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_b_d1_3_ (.regout (b_d1[3]), .datain (b_d1_7n4s1[3]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_1__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_b_d1_2_ (.regout (b_d1[2]), .datain (b_d1_7n4s1[2]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_1__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_b_d1_1_ (.regout (b_d1[1]), .datain (b_d1_7n4s1[1]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_1__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_b_d1_0_ (.regout (b_d1[0]), .datain (b_d1_7n4s1[0]), 
                       .adatasdata (1'b0), .clk (i_clock_int), .ena (
                       validBit_1__repl), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    stratixii_lcell_ff reg_b_7_ (.regout (b[7]), .datain (c[7]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_b_6_ (.regout (b[6]), .datain (c[6]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_b_5_ (.regout (b[5]), .datain (c[5]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_b_4_ (.regout (b[4]), .datain (c[4]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_b_3_ (.regout (b[3]), .datain (c[3]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_b_2_ (.regout (b[2]), .datain (c[2]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_b_1_ (.regout (b[1]), .datain (c[1]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_b_0_ (.regout (b[0]), .datain (c[0]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_a_7_ (.regout (a[7]), .datain (b[7]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_a_6_ (.regout (a[6]), .datain (b[6]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_a_5_ (.regout (a[5]), .datain (b[5]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_a_4_ (.regout (a[4]), .datain (b[4]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_a_3_ (.regout (a[3]), .datain (b[3]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_a_2_ (.regout (a[2]), .datain (b[2]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_a_1_ (.regout (a[1]), .datain (b[1]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_lcell_ff reg_a_0_ (.regout (a[0]), .datain (b[0]), .adatasdata (
                       1'b0), .clk (i_clock_int), .ena (nx36625z2), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    stratixii_io o_valid_obuf (.padio (o_valid), .datain (o_valid_dup0), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_valid_obuf.operation_mode = "output";
                 
                 defparam o_valid_obuf.output_register_mode = "none";
                 
                 defparam o_valid_obuf.tie_off_output_clock_enable = "false";
                 
                 defparam o_valid_obuf.oe_register_mode = "none";
                 
                 defparam o_valid_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam o_valid_obuf.input_register_mode = "none";
    stratixii_io o_row_obuf_7_ (.padio (o_row[7]), .datain (o_row_dup0[7]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_row_obuf_7_.operation_mode = "output";
                 
                 defparam o_row_obuf_7_.output_register_mode = "none";
                 
                 defparam o_row_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam o_row_obuf_7_.oe_register_mode = "none";
                 
                 defparam o_row_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_row_obuf_7_.input_register_mode = "none";
    stratixii_io o_row_obuf_6_ (.padio (o_row[6]), .datain (o_row_dup0[6]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_row_obuf_6_.operation_mode = "output";
                 
                 defparam o_row_obuf_6_.output_register_mode = "none";
                 
                 defparam o_row_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam o_row_obuf_6_.oe_register_mode = "none";
                 
                 defparam o_row_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_row_obuf_6_.input_register_mode = "none";
    stratixii_io o_row_obuf_5_ (.padio (o_row[5]), .datain (o_row_dup0[5]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_row_obuf_5_.operation_mode = "output";
                 
                 defparam o_row_obuf_5_.output_register_mode = "none";
                 
                 defparam o_row_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam o_row_obuf_5_.oe_register_mode = "none";
                 
                 defparam o_row_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_row_obuf_5_.input_register_mode = "none";
    stratixii_io o_row_obuf_4_ (.padio (o_row[4]), .datain (o_row_dup0[4]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_row_obuf_4_.operation_mode = "output";
                 
                 defparam o_row_obuf_4_.output_register_mode = "none";
                 
                 defparam o_row_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam o_row_obuf_4_.oe_register_mode = "none";
                 
                 defparam o_row_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_row_obuf_4_.input_register_mode = "none";
    stratixii_io o_row_obuf_3_ (.padio (o_row[3]), .datain (o_row_dup0[3]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_row_obuf_3_.operation_mode = "output";
                 
                 defparam o_row_obuf_3_.output_register_mode = "none";
                 
                 defparam o_row_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam o_row_obuf_3_.oe_register_mode = "none";
                 
                 defparam o_row_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_row_obuf_3_.input_register_mode = "none";
    stratixii_io o_row_obuf_2_ (.padio (o_row[2]), .datain (o_row_dup0[2]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_row_obuf_2_.operation_mode = "output";
                 
                 defparam o_row_obuf_2_.output_register_mode = "none";
                 
                 defparam o_row_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_row_obuf_2_.oe_register_mode = "none";
                 
                 defparam o_row_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_row_obuf_2_.input_register_mode = "none";
    stratixii_io o_row_obuf_1_ (.padio (o_row[1]), .datain (o_row_dup0[1]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_row_obuf_1_.operation_mode = "output";
                 
                 defparam o_row_obuf_1_.output_register_mode = "none";
                 
                 defparam o_row_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_row_obuf_1_.oe_register_mode = "none";
                 
                 defparam o_row_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_row_obuf_1_.input_register_mode = "none";
    stratixii_io o_row_obuf_0_ (.padio (o_row[0]), .datain (o_row_dup0[0]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_row_obuf_0_.operation_mode = "output";
                 
                 defparam o_row_obuf_0_.output_register_mode = "none";
                 
                 defparam o_row_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_row_obuf_0_.oe_register_mode = "none";
                 
                 defparam o_row_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_row_obuf_0_.input_register_mode = "none";
    stratixii_io o_mode_obuf_1_ (.padio (o_mode[1]), .datain (o_mode_dup0[1]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_mode_obuf_1_.operation_mode = "output";
                 
                 defparam o_mode_obuf_1_.output_register_mode = "none";
                 
                 defparam o_mode_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_mode_obuf_1_.oe_register_mode = "none";
                 
                 defparam o_mode_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_mode_obuf_1_.input_register_mode = "none";
    stratixii_io o_mode_obuf_0_ (.padio (o_mode[0]), .datain (o_mode_dup0[0]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_mode_obuf_0_.operation_mode = "output";
                 
                 defparam o_mode_obuf_0_.output_register_mode = "none";
                 
                 defparam o_mode_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_mode_obuf_0_.oe_register_mode = "none";
                 
                 defparam o_mode_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_mode_obuf_0_.input_register_mode = "none";
    stratixii_io o_edge_obuf (.padio (o_edge), .datain (o_edge_dup0), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_edge_obuf.operation_mode = "output";
                 
                 defparam o_edge_obuf.output_register_mode = "none";
                 
                 defparam o_edge_obuf.tie_off_output_clock_enable = "false";
                 
                 defparam o_edge_obuf.oe_register_mode = "none";
                 
                 defparam o_edge_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam o_edge_obuf.input_register_mode = "none";
    stratixii_io o_dir_obuf_2_ (.padio (o_dir[2]), .datain (o_dir_dup0[2]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_dir_obuf_2_.operation_mode = "output";
                 
                 defparam o_dir_obuf_2_.output_register_mode = "none";
                 
                 defparam o_dir_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_dir_obuf_2_.oe_register_mode = "none";
                 
                 defparam o_dir_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_dir_obuf_2_.input_register_mode = "none";
    stratixii_io o_dir_obuf_1_ (.padio (o_dir[1]), .datain (o_dir_dup0[1]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_dir_obuf_1_.operation_mode = "output";
                 
                 defparam o_dir_obuf_1_.output_register_mode = "none";
                 
                 defparam o_dir_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_dir_obuf_1_.oe_register_mode = "none";
                 
                 defparam o_dir_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_dir_obuf_1_.input_register_mode = "none";
    stratixii_io o_dir_obuf_0_ (.padio (o_dir[0]), .datain (o_dir_dup0[0]), .ddiodatain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_dir_obuf_0_.operation_mode = "output";
                 
                 defparam o_dir_obuf_0_.output_register_mode = "none";
                 
                 defparam o_dir_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_dir_obuf_0_.oe_register_mode = "none";
                 
                 defparam o_dir_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_dir_obuf_0_.input_register_mode = "none";
    stratixii_lcell_comb ix17322z37202 (.combout (nx17322z2), .dataa (1'b1), .datab (
                         1'b1), .datac (col[4]), .datad (col[5]), .datae (col[6]
                         ), .dataf (col[7]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix17322z37202.lut_mask = 64'h000000000000000f;
    stratixii_lcell_comb ix20419z37208 (.combout (nx20419z8), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         o_row_dup0[3]), .dataf (o_row_dup0[4]), .datag (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix20419z37208.lut_mask = 64'hffffffffffff0000;
    stratixii_lcell_comb ix20419z37207 (.combout (nx20419z7), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         o_row_dup0[1]), .dataf (o_row_dup0[2]), .datag (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix20419z37207.lut_mask = 64'hffffffffffff0000;
    stratixii_lcell_comb ix20419z37205 (.combout (nx20419z5), .dataa (1'b1), .datab (
                         1'b1), .datac (i_valid_int), .datad (o_row_dup0[5]), .datae (
                         o_row_dup0[6]), .dataf (o_row_dup0[7]), .datag (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix20419z37205.lut_mask = 64'hf0f0f0f0f0f0f000;
    stratixii_lcell_comb ix20419z37206 (.combout (nx20419z6), .dataa (1'b1), .datab (
                         nx20419z7), .datac (nx20419z8), .datad (i_valid_int), .datae (
                         col[2]), .dataf (col[3]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix20419z37206.lut_mask = 64'hfc00fc00fc000000;
    stratixii_lcell_comb ix20419z37204 (.combout (nx20419z4), .dataa (nx20419z5)
                         , .datab (nx20419z6), .datac (col[2]), .datad (
                         i_valid_int), .datae (col[1]), .dataf (nx20419z8), .datag (
                         nx20419z7), .cin (1'b0)) ;
                         
                         defparam ix20419z37204.lut_mask = 64'hffeeececfeeeecec;
                         
                         defparam ix20419z37204.extended_lut = "on";
    stratixii_lcell_comb ix20419z37211 (.combout (nx20419z11), .dataa (nx20419z7
                         ), .datab (nx20419z8), .datac (nx20419z5), .datad (
                         i_valid_int), .datae (col[5]), .dataf (col[6]), .datag (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20419z37211.lut_mask = 64'hfef0f0f0fef00000;
    stratixii_lcell_comb ix20419z37210 (.combout (nx20419z10), .dataa (1'b1), .datab (
                         nx20419z7), .datac (nx20419z8), .datad (i_valid_int), .datae (
                         col[6]), .dataf (col[7]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix20419z37210.lut_mask = 64'hfc00fc00fc000000;
    stratixii_lcell_comb ix20419z37202 (.combout (nx20419z2), .dataa (col[7]), .datab (
                         i_valid_int), .datac (col[3]), .datad (nx20419z3), .datae (
                         col[4]), .dataf (nx20419z4), .datag (nx20419z9), .cin (
                         1'b0)) ;
                         
                         defparam ix20419z37202.lut_mask = 64'hffffffffccc0c800;
                         defparam ix20419z37202.extended_lut = "on";
    stratixii_lcell_comb ix20419z37209 (.combout (nx20419z9), .dataa (1'b1), .datab (
                         1'b1), .datac (o_row_dup0[1]), .datad (o_row_dup0[2]), 
                         .datae (o_row_dup0[3]), .dataf (o_row_dup0[4]), .datag (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix20419z37209.lut_mask = 64'hfffffffffffffff0;
    stratixii_lcell_comb ix20419z37203 (.combout (nx20419z3), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (o_row_dup0[5]), .datae (
                         o_row_dup0[6]), .dataf (o_row_dup0[7]), .datag (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix20419z37203.lut_mask = 64'hffffffffffffff00;
    stratixii_lcell_comb ix16269z37206 (.combout (nx16269z6), .dataa (1'b1), .datab (
                         1'b1), .datac (x_r11[0]), .datad (x_r11[1]), .datae (
                         r15[0]), .dataf (r15[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix16269z37206.lut_mask = 64'h0000f000ff00fff0;
    stratixii_lcell_comb ix16269z37205 (.combout (nx16269z5), .dataa (1'b1), .datab (
                         nx16269z6), .datac (x_r11[2]), .datad (x_r11[3]), .datae (
                         r15[2]), .dataf (r15[3]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix16269z37205.lut_mask = 64'hc000fc00ffc0fffc;
    stratixii_lcell_comb ix36874z37202 (.combout (nx36874z1), .dataa (1'b1), .datab (
                         r17_7_), .datac (r17_8_), .datad (r17_9_), .datae (
                         r17_10_), .dataf (r17_11_), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix36874z37202.lut_mask = 64'hffffffffffffffc0;
    stratixii_lcell_comb ix31986z37206 (.combout (nx31986z6), .dataa (1'b1), .datab (
                         1'b1), .datac (x_r3[0]), .datad (x_r3[1]), .datae (
                         b_d1[0]), .dataf (b_d1[1]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix31986z37206.lut_mask = 64'h0fff00ff000f0000;
    stratixii_lcell_comb ix33057z37206 (.combout (nx33057z6), .dataa (1'b1), .datab (
                         1'b1), .datac (r16[0]), .datad (r16[1]), .datae (r11[0]
                         ), .dataf (r11[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix33057z37206.lut_mask = 64'h0000f000ff00fff0;
    stratixii_lcell_comb ix33057z37205 (.combout (nx33057z5), .dataa (1'b1), .datab (
                         nx33057z6), .datac (r16[2]), .datad (r16[3]), .datae (
                         r11[2]), .dataf (r11[3]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix33057z37205.lut_mask = 64'hc000fc00ffc0fffc;
    stratixii_lcell_comb ix49445z37205 (.combout (nx49445z5), .dataa (1'b1), .datab (
                         1'b1), .datac (d[0]), .datad (d[1]), .datae (a[0]), .dataf (
                         a[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix49445z37205.lut_mask = 64'h0000f000ff00fff0;
    stratixii_lcell_comb ix6383z37205 (.combout (nx6383z5), .dataa (1'b1), .datab (
                         1'b1), .datac (g[0]), .datad (g[1]), .datae (b[0]), .dataf (
                         b[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix6383z37205.lut_mask = 64'h0fff00ff000f0000;
    stratixii_lcell_comb ix28950z37205 (.combout (nx28950z5), .dataa (1'b1), .datab (
                         1'b1), .datac (f[0]), .datad (f[1]), .datae (c[0]), .dataf (
                         c[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix28950z37205.lut_mask = 64'h0000f000ff00fff0;
    stratixii_lcell_comb ix64789z37205 (.combout (nx64789z5), .dataa (1'b1), .datab (
                         1'b1), .datac (h[0]), .datad (h[1]), .datae (e[0]), .dataf (
                         e[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix64789z37205.lut_mask = 64'h0000f000ff00fff0;
    stratixii_lcell_comb ix33057z37203 (.combout (nx33057z3), .dataa (1'b1), .datab (
                         nx33057z4), .datac (r16[6]), .datad (r16[7]), .datae (
                         r11[6]), .dataf (r11[7]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix33057z37203.lut_mask = 64'hc000fc00ffc0fffc;
    stratixii_lcell_comb ix16269z37203 (.combout (nx16269z3), .dataa (1'b1), .datab (
                         nx16269z4), .datac (x_r11[6]), .datad (x_r11[7]), .datae (
                         r15[6]), .dataf (r15[7]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix16269z37203.lut_mask = 64'hc000fc00ffc0fffc;
    stratixii_lcell_comb ix6383z37202 (.combout (nx6383z2), .dataa (1'b1), .datab (
                         nx6383z3), .datac (g[6]), .datad (g[7]), .datae (b[6])
                         , .dataf (b[7]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix6383z37202.lut_mask = 64'hcfff0cff00cf000c;
    stratixii_lcell_comb ix11673z37202 (.combout (nx11673z2), .dataa (1'b1), .datab (
                         nx17322z3), .datac (col[4]), .datad (col[5]), .datae (
                         col[6]), .dataf (col[7]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix11673z37202.lut_mask = 64'hfffffffffffffffc;
    stratixii_lcell_comb ix11673z37203 (.combout (nx11673z3), .dataa (
                         o_row_dup0[2]), .datab (o_row_dup0[3]), .datac (
                         o_row_dup0[4]), .datad (o_row_dup0[5]), .datae (
                         o_row_dup0[6]), .dataf (o_row_dup0[7]), .datag (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix11673z37203.lut_mask = 64'hfffffffffffffffe;
    stratixii_lcell_comb ix16269z37204 (.combout (nx16269z4), .dataa (1'b1), .datab (
                         nx16269z5), .datac (x_r11[4]), .datad (x_r11[5]), .datae (
                         r15[4]), .dataf (r15[5]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix16269z37204.lut_mask = 64'hc000fc00ffc0fffc;
    stratixii_lcell_comb ix31986z37205 (.combout (nx31986z5), .dataa (1'b1), .datab (
                         nx31986z6), .datac (x_r3[2]), .datad (x_r3[3]), .datae (
                         b_d1[2]), .dataf (b_d1[3]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix31986z37205.lut_mask = 64'hcfff0cff00cf000c;
    stratixii_lcell_comb ix31986z37204 (.combout (nx31986z4), .dataa (1'b1), .datab (
                         nx31986z5), .datac (x_r3[4]), .datad (x_r3[5]), .datae (
                         b_d1[4]), .dataf (b_d1[5]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix31986z37204.lut_mask = 64'hcfff0cff00cf000c;
    stratixii_lcell_comb ix31986z37203 (.combout (nx31986z3), .dataa (1'b1), .datab (
                         nx31986z4), .datac (x_r3[6]), .datad (x_r3[7]), .datae (
                         b_d1[6]), .dataf (b_d1[7]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix31986z37203.lut_mask = 64'hcfff0cff00cf000c;
    stratixii_lcell_comb ix33057z37204 (.combout (nx33057z4), .dataa (1'b1), .datab (
                         nx33057z5), .datac (r16[4]), .datad (r16[5]), .datae (
                         r11[4]), .dataf (r11[5]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix33057z37204.lut_mask = 64'hc000fc00ffc0fffc;
    stratixii_lcell_comb ix49445z37204 (.combout (nx49445z4), .dataa (1'b1), .datab (
                         nx49445z5), .datac (d[2]), .datad (d[3]), .datae (a[2])
                         , .dataf (a[3]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix49445z37204.lut_mask = 64'hc000fc00ffc0fffc;
    stratixii_lcell_comb ix49445z37203 (.combout (nx49445z3), .dataa (1'b1), .datab (
                         nx49445z4), .datac (d[4]), .datad (d[5]), .datae (a[4])
                         , .dataf (a[5]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix49445z37203.lut_mask = 64'hc000fc00ffc0fffc;
    stratixii_lcell_comb ix6383z37204 (.combout (nx6383z4), .dataa (1'b1), .datab (
                         nx6383z5), .datac (g[2]), .datad (g[3]), .datae (b[2])
                         , .dataf (b[3]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix6383z37204.lut_mask = 64'hcfff0cff00cf000c;
    stratixii_lcell_comb ix6383z37203 (.combout (nx6383z3), .dataa (1'b1), .datab (
                         nx6383z4), .datac (g[4]), .datad (g[5]), .datae (b[4])
                         , .dataf (b[5]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix6383z37203.lut_mask = 64'hcfff0cff00cf000c;
    stratixii_lcell_comb ix28950z37204 (.combout (nx28950z4), .dataa (1'b1), .datab (
                         nx28950z5), .datac (f[2]), .datad (f[3]), .datae (c[2])
                         , .dataf (c[3]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix28950z37204.lut_mask = 64'hc000fc00ffc0fffc;
    stratixii_lcell_comb ix28950z37203 (.combout (nx28950z3), .dataa (1'b1), .datab (
                         nx28950z4), .datac (f[4]), .datad (f[5]), .datae (c[4])
                         , .dataf (c[5]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix28950z37203.lut_mask = 64'hc000fc00ffc0fffc;
    stratixii_lcell_comb ix64789z37204 (.combout (nx64789z4), .dataa (1'b1), .datab (
                         nx64789z5), .datac (h[2]), .datad (h[3]), .datae (e[2])
                         , .dataf (e[3]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix64789z37204.lut_mask = 64'hc000fc00ffc0fffc;
    stratixii_lcell_comb ix64789z37203 (.combout (nx64789z3), .dataa (1'b1), .datab (
                         nx64789z4), .datac (h[4]), .datad (h[5]), .datae (e[4])
                         , .dataf (e[5]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix64789z37203.lut_mask = 64'hc000fc00ffc0fffc;
    stratixii_lcell_comb ix20419z37201 (.combout (nx20419z1), .dataa (1'b1), .datab (
                         1'b1), .datac (nx20419z2), .datad (nx20419z10), .datae (
                         nx20419z11), .dataf (i_reset_int), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20419z37201.lut_mask = 64'h00000000fffffff0;
    stratixii_lcell_comb ix11673z37201 (.combout (nx11673z1), .dataa (1'b1), .datab (
                         nx11673z2), .datac (nx11673z3), .datad (i_reset_int), .datae (
                         o_row_dup0[0]), .dataf (o_row_dup0[1]), .datag (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix11673z37201.lut_mask = 64'hffccffccffccffc0;
    stratixii_lcell_comb ix31986z37201 (.combout (nx31986z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx31986z2), .datae (
                         x_r3[0]), .dataf (b_d1[0]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix31986z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix30989z37201 (.combout (nx30989z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx31986z2), .datae (
                         x_r3[1]), .dataf (b_d1[1]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix30989z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix29992z37201 (.combout (nx29992z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx31986z2), .datae (
                         x_r3[2]), .dataf (b_d1[2]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix29992z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix28995z37201 (.combout (nx28995z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx31986z2), .datae (
                         x_r3[3]), .dataf (b_d1[3]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix28995z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix27998z37201 (.combout (nx27998z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx31986z2), .datae (
                         x_r3[4]), .dataf (b_d1[4]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix27998z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix27001z37201 (.combout (nx27001z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx31986z2), .datae (
                         x_r3[5]), .dataf (b_d1[5]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix27001z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix26004z37201 (.combout (nx26004z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx31986z2), .datae (
                         x_r3[6]), .dataf (b_d1[6]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix26004z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix25007z37201 (.combout (nx25007z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx31986z2), .datae (
                         x_r3[7]), .dataf (b_d1[7]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix25007z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix24010z37201 (.combout (nx24010z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx31986z2), .datae (
                         x_r3[8]), .dataf (b_d1[8]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix24010z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix23013z37201 (.combout (nx23013z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (x_r3[9]), 
                         .dataf (b_d1[9]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix23013z37201.lut_mask = 64'hffffffffffff0000;
    stratixii_lcell_comb ix47369z37201 (.combout (nx47369z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx31986z2), .datae (
                         stage1_nNe_2_), .dataf (stage1_wNw_2_), .datag (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix47369z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix33057z37201 (.combout (nx33057z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx33057z2), .datae (
                         r16[0]), .dataf (r11[0]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix33057z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix34054z37201 (.combout (nx34054z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx33057z2), .datae (
                         r16[1]), .dataf (r11[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix34054z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix35051z37201 (.combout (nx35051z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx33057z2), .datae (
                         r16[2]), .dataf (r11[2]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix35051z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix36048z37201 (.combout (nx36048z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx33057z2), .datae (
                         r16[3]), .dataf (r11[3]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix36048z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix37045z37201 (.combout (nx37045z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx33057z2), .datae (
                         r16[4]), .dataf (r11[4]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix37045z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix38042z37201 (.combout (nx38042z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx33057z2), .datae (
                         r16[5]), .dataf (r11[5]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix38042z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix39039z37201 (.combout (nx39039z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx33057z2), .datae (
                         r16[6]), .dataf (r11[6]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix39039z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix40036z37201 (.combout (nx40036z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx33057z2), .datae (
                         r16[7]), .dataf (r11[7]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix40036z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix41033z37201 (.combout (nx41033z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx33057z2), .datae (
                         r16[8]), .dataf (r11[8]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix41033z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix42030z37201 (.combout (nx42030z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (r16[9]), .dataf (
                         r11[9]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix42030z37201.lut_mask = 64'hffffffffffff0000;
    stratixii_lcell_comb ix64999z37201 (.combout (nx64999z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx33057z2), .datae (
                         stage1_sSw_2_), .dataf (stage1_eSe_2_), .datag (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix64999z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix8293z37201 (.combout (nx8293z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx16269z2), .datae (
                         x_r11[0]), .dataf (r15[0]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix8293z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix9290z37201 (.combout (nx9290z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx16269z2), .datae (
                         x_r11[1]), .dataf (r15[1]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix9290z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix10287z37201 (.combout (nx10287z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx16269z2), .datae (
                         x_r11[2]), .dataf (r15[2]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix10287z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix11284z37201 (.combout (nx11284z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx16269z2), .datae (
                         x_r11[3]), .dataf (r15[3]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix11284z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix12281z37201 (.combout (nx12281z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx16269z2), .datae (
                         x_r11[4]), .dataf (r15[4]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix12281z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix13278z37201 (.combout (nx13278z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx16269z2), .datae (
                         x_r11[5]), .dataf (r15[5]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix13278z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix14275z37201 (.combout (nx14275z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx16269z2), .datae (
                         x_r11[6]), .dataf (r15[6]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix14275z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix15272z37201 (.combout (nx15272z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx16269z2), .datae (
                         x_r11[7]), .dataf (r15[7]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix15272z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix16269z37201 (.combout (nx16269z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx16269z2), .datae (
                         x_r11[8]), .dataf (r15[8]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix16269z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix17266z37201 (.combout (nx17266z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (x_r11[9])
                         , .dataf (r15[9]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix17266z37201.lut_mask = 64'hffffffffffff0000;
    stratixii_lcell_comb ix37766z37201 (.combout (nx37766z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx16269z2), .datae (
                         first_cw[0]), .dataf (second_cw[0]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix37766z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix36769z37201 (.combout (nx36769z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx16269z2), .datae (
                         first_cw[1]), .dataf (second_cw[1]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix36769z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix35772z37201 (.combout (nx35772z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx16269z2), .datae (
                         first_cw[2]), .dataf (second_cw[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix35772z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix55427z37201 (.combout (nx55427z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx49445z2), .datae (d[0])
                         , .dataf (a[0]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix55427z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix54430z37201 (.combout (nx54430z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx49445z2), .datae (d[1])
                         , .dataf (a[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix54430z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix53433z37201 (.combout (nx53433z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx49445z2), .datae (d[2])
                         , .dataf (a[2]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix53433z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix52436z37201 (.combout (nx52436z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx49445z2), .datae (d[3])
                         , .dataf (a[3]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix52436z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix51439z37201 (.combout (nx51439z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx49445z2), .datae (d[4])
                         , .dataf (a[4]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix51439z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix50442z37201 (.combout (nx50442z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx49445z2), .datae (d[5])
                         , .dataf (a[5]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix50442z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix49445z37201 (.combout (nx49445z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx49445z2), .datae (d[6])
                         , .dataf (a[6]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix49445z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix48448z37201 (.combout (nx48448z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (d[7]), .dataf (
                         a[7]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix48448z37201.lut_mask = 64'hffffffffffff0000;
    stratixii_lcell_comb ix401z37201 (.combout (nx401z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx6383z2), .datae (g[0])
                         , .dataf (b[0]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix401z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix1398z37201 (.combout (nx1398z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx6383z2), .datae (g[1])
                         , .dataf (b[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix1398z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix2395z37201 (.combout (nx2395z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx6383z2), .datae (g[2])
                         , .dataf (b[2]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix2395z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix3392z37201 (.combout (nx3392z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx6383z2), .datae (g[3])
                         , .dataf (b[3]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix3392z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix4389z37201 (.combout (nx4389z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx6383z2), .datae (g[4])
                         , .dataf (b[4]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix4389z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix5386z37201 (.combout (nx5386z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx6383z2), .datae (g[5])
                         , .dataf (b[5]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix5386z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix6383z37201 (.combout (nx6383z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx6383z2), .datae (g[6])
                         , .dataf (b[6]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix6383z37201.lut_mask = 64'hffffff0000ff0000;
    stratixii_lcell_comb ix7380z37201 (.combout (nx7380z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (g[7]), .dataf (
                         b[7]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix7380z37201.lut_mask = 64'hffffffffffff0000;
    stratixii_lcell_comb ix34932z37201 (.combout (nx34932z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx28950z2), .datae (f[0])
                         , .dataf (c[0]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix34932z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix33935z37201 (.combout (nx33935z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx28950z2), .datae (f[1])
                         , .dataf (c[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix33935z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix32938z37201 (.combout (nx32938z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx28950z2), .datae (f[2])
                         , .dataf (c[2]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix32938z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix31941z37201 (.combout (nx31941z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx28950z2), .datae (f[3])
                         , .dataf (c[3]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix31941z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix30944z37201 (.combout (nx30944z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx28950z2), .datae (f[4])
                         , .dataf (c[4]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix30944z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix29947z37201 (.combout (nx29947z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx28950z2), .datae (f[5])
                         , .dataf (c[5]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix29947z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix28950z37201 (.combout (nx28950z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx28950z2), .datae (f[6])
                         , .dataf (c[6]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix28950z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix27953z37201 (.combout (nx27953z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (f[7]), .dataf (
                         c[7]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix27953z37201.lut_mask = 64'hffffffffffff0000;
    stratixii_lcell_comb ix58807z37201 (.combout (nx58807z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx64789z2), .datae (h[0])
                         , .dataf (e[0]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix58807z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix59804z37201 (.combout (nx59804z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx64789z2), .datae (h[1])
                         , .dataf (e[1]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix59804z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix60801z37201 (.combout (nx60801z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx64789z2), .datae (h[2])
                         , .dataf (e[2]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix60801z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix61798z37201 (.combout (nx61798z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx64789z2), .datae (h[3])
                         , .dataf (e[3]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix61798z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix62795z37201 (.combout (nx62795z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx64789z2), .datae (h[4])
                         , .dataf (e[4]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix62795z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix63792z37201 (.combout (nx63792z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx64789z2), .datae (h[5])
                         , .dataf (e[5]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix63792z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix64789z37201 (.combout (nx64789z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx64789z2), .datae (h[6])
                         , .dataf (e[6]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix64789z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix250z37201 (.combout (nx250z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (h[7]), .dataf (
                         e[7]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix250z37201.lut_mask = 64'hffffffffffff0000;
    stratixii_lcell_comb ix29521z37201 (.combout (nx29521z1), .dataa (1'b1), .datab (
                         1'b1), .datac (i_reset_int), .datad (nx17322z1), .datae (
                         state[0]), .dataf (state[2]), .datag (1'b1), .cin (1'b0
                         )) ;
                         
                         defparam ix29521z37201.lut_mask = 64'hfffffff0f0fff0f0;
    stratixii_lcell_comb ix17322z37203 (.combout (nx17322z3), .dataa (1'b1), .datab (
                         1'b1), .datac (col[0]), .datad (col[1]), .datae (col[2]
                         ), .dataf (col[3]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix17322z37203.lut_mask = 64'hfffffffffffffff0;
    stratixii_lcell_comb ix36625z37201 (.combout (nx36625z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (tempStorage_1_[7]), .datae (
                         tempStorage_0_[7]), .dataf (state[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix36625z37201.lut_mask = 64'hff00ff00ffff0000;
    stratixii_lcell_comb ix35628z37201 (.combout (nx35628z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (tempStorage_1_[6]), .datae (
                         tempStorage_0_[6]), .dataf (state[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix35628z37201.lut_mask = 64'hff00ff00ffff0000;
    stratixii_lcell_comb ix34631z37201 (.combout (nx34631z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (tempStorage_1_[5]), .datae (
                         tempStorage_0_[5]), .dataf (state[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix34631z37201.lut_mask = 64'hff00ff00ffff0000;
    stratixii_lcell_comb ix33634z37201 (.combout (nx33634z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (tempStorage_1_[4]), .datae (
                         tempStorage_0_[4]), .dataf (state[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix33634z37201.lut_mask = 64'hff00ff00ffff0000;
    stratixii_lcell_comb ix32637z37201 (.combout (nx32637z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (tempStorage_1_[3]), .datae (
                         tempStorage_0_[3]), .dataf (state[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix32637z37201.lut_mask = 64'hff00ff00ffff0000;
    stratixii_lcell_comb ix31640z37201 (.combout (nx31640z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (tempStorage_1_[2]), .datae (
                         tempStorage_0_[2]), .dataf (state[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix31640z37201.lut_mask = 64'hff00ff00ffff0000;
    stratixii_lcell_comb ix30643z37201 (.combout (nx30643z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (tempStorage_1_[1]), .datae (
                         tempStorage_0_[1]), .dataf (state[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix30643z37201.lut_mask = 64'hff00ff00ffff0000;
    stratixii_lcell_comb ix29646z37201 (.combout (nx29646z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (tempStorage_1_[0]), .datae (
                         tempStorage_0_[0]), .dataf (state[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix29646z37201.lut_mask = 64'hff00ff00ffff0000;
    stratixii_lcell_comb ix20492z37201 (.combout (nx20492z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (tempStorage_1_[7]), .datae (
                         tempStorage_0_[7]), .dataf (state[0]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix20492z37201.lut_mask = 64'hff00ff00ffff0000;
    stratixii_lcell_comb ix21489z37201 (.combout (nx21489z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (tempStorage_1_[6]), .datae (
                         tempStorage_0_[6]), .dataf (state[0]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix21489z37201.lut_mask = 64'hff00ff00ffff0000;
    stratixii_lcell_comb ix22486z37201 (.combout (nx22486z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (tempStorage_1_[5]), .datae (
                         tempStorage_0_[5]), .dataf (state[0]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix22486z37201.lut_mask = 64'hff00ff00ffff0000;
    stratixii_lcell_comb ix23483z37201 (.combout (nx23483z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (tempStorage_1_[4]), .datae (
                         tempStorage_0_[4]), .dataf (state[0]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix23483z37201.lut_mask = 64'hff00ff00ffff0000;
    stratixii_lcell_comb ix24480z37201 (.combout (nx24480z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (tempStorage_1_[3]), .datae (
                         tempStorage_0_[3]), .dataf (state[0]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix24480z37201.lut_mask = 64'hff00ff00ffff0000;
    stratixii_lcell_comb ix25477z37201 (.combout (nx25477z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (tempStorage_1_[2]), .datae (
                         tempStorage_0_[2]), .dataf (state[0]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix25477z37201.lut_mask = 64'hff00ff00ffff0000;
    stratixii_lcell_comb ix26474z37201 (.combout (nx26474z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (tempStorage_1_[1]), .datae (
                         tempStorage_0_[1]), .dataf (state[0]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix26474z37201.lut_mask = 64'hff00ff00ffff0000;
    stratixii_lcell_comb ix27471z37201 (.combout (nx27471z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (tempStorage_1_[0]), .datae (
                         tempStorage_0_[0]), .dataf (state[0]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix27471z37201.lut_mask = 64'hff00ff00ffff0000;
    stratixii_lcell_comb ix51677z37202 (.combout (b_0__dup_1325), .dataa (1'b1)
                         , .datab (1'b1), .datac (1'b1), .datad (validBit[0]), .datae (
                         validBit[1]), .dataf (validBit[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix51677z37202.lut_mask = 64'hff00ff00ff00ffff;
    stratixii_lcell_comb ix51677z37212 (.combout (nx51677z2), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (validBit[0]), .datae (
                         validBit[1]), .dataf (validBit[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix51677z37212.lut_mask = 64'h00ff000000ff00ff;
    stratixii_lcell_comb ix51677z37203 (.combout (nx51677z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (validBit[0]), .datae (
                         validBit[1]), .dataf (validBit[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix51677z37203.lut_mask = 64'hff00ffffff00ff00;
    stratixii_lcell_comb ix31986z37202 (.combout (nx31986z2), .dataa (1'b1), .datab (
                         nx31986z3), .datac (x_r3[8]), .datad (x_r3[9]), .datae (
                         b_d1[8]), .dataf (b_d1[9]), .datag (1'b1), .cin (1'b0)
                         ) ;
                         
                         defparam ix31986z37202.lut_mask = 64'hcfff0cff00cf000c;
    stratixii_lcell_comb ix33057z37202 (.combout (nx33057z2), .dataa (1'b1), .datab (
                         nx33057z3), .datac (r16[8]), .datad (r16[9]), .datae (
                         r11[8]), .dataf (r11[9]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix33057z37202.lut_mask = 64'hc000fc00ffc0fffc;
    stratixii_lcell_comb ix16269z37202 (.combout (nx16269z2), .dataa (1'b1), .datab (
                         nx16269z3), .datac (x_r11[8]), .datad (x_r11[9]), .datae (
                         r15[8]), .dataf (r15[9]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix16269z37202.lut_mask = 64'hc000fc00ffc0fffc;
    stratixii_lcell_comb ix49445z37202 (.combout (nx49445z2), .dataa (1'b1), .datab (
                         nx49445z3), .datac (d[6]), .datad (d[7]), .datae (a[6])
                         , .dataf (a[7]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix49445z37202.lut_mask = 64'hc000fc00ffc0fffc;
    stratixii_lcell_comb ix28950z37202 (.combout (nx28950z2), .dataa (1'b1), .datab (
                         nx28950z3), .datac (f[6]), .datad (f[7]), .datae (c[6])
                         , .dataf (c[7]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix28950z37202.lut_mask = 64'hc000fc00ffc0fffc;
    stratixii_lcell_comb ix64789z37202 (.combout (nx64789z2), .dataa (1'b1), .datab (
                         nx64789z3), .datac (h[6]), .datad (h[7]), .datae (e[6])
                         , .dataf (e[7]), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix64789z37202.lut_mask = 64'hc000fc00ffc0fffc;
    stratixii_lcell_comb ix51677z37219 (.combout (r2_6n3s1f2[0]), .dataa (
                         b_0__dup_1325), .datab (nx51677z2), .datac (g[0]), .datad (
                         e[0]), .datae (c[0]), .dataf (a[0]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix51677z37219.lut_mask = 64'hf7e6d5c4b3a29180;
    stratixii_lcell_comb ix51677z37218 (.combout (r2_6n3s1f2[1]), .dataa (
                         b_0__dup_1325), .datab (nx51677z2), .datac (g[1]), .datad (
                         e[1]), .datae (c[1]), .dataf (a[1]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix51677z37218.lut_mask = 64'hf7e6d5c4b3a29180;
    stratixii_lcell_comb ix51677z37217 (.combout (r2_6n3s1f2[2]), .dataa (
                         b_0__dup_1325), .datab (nx51677z2), .datac (g[2]), .datad (
                         e[2]), .datae (c[2]), .dataf (a[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix51677z37217.lut_mask = 64'hf7e6d5c4b3a29180;
    stratixii_lcell_comb ix51677z37216 (.combout (r2_6n3s1f2[3]), .dataa (
                         b_0__dup_1325), .datab (nx51677z2), .datac (g[3]), .datad (
                         e[3]), .datae (c[3]), .dataf (a[3]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix51677z37216.lut_mask = 64'hf7e6d5c4b3a29180;
    stratixii_lcell_comb ix51677z37215 (.combout (r2_6n3s1f2[4]), .dataa (
                         b_0__dup_1325), .datab (nx51677z2), .datac (g[4]), .datad (
                         e[4]), .datae (c[4]), .dataf (a[4]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix51677z37215.lut_mask = 64'hf7e6d5c4b3a29180;
    stratixii_lcell_comb ix51677z37214 (.combout (r2_6n3s1f2[5]), .dataa (
                         b_0__dup_1325), .datab (nx51677z2), .datac (g[5]), .datad (
                         e[5]), .datae (c[5]), .dataf (a[5]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix51677z37214.lut_mask = 64'hf7e6d5c4b3a29180;
    stratixii_lcell_comb ix51677z37213 (.combout (r2_6n3s1f2[6]), .dataa (
                         b_0__dup_1325), .datab (nx51677z2), .datac (g[6]), .datad (
                         e[6]), .datae (c[6]), .dataf (a[6]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix51677z37213.lut_mask = 64'hf7e6d5c4b3a29180;
    stratixii_lcell_comb ix51677z37211 (.combout (r2_6n3s1f2[7]), .dataa (
                         b_0__dup_1325), .datab (nx51677z2), .datac (g[7]), .datad (
                         e[7]), .datae (c[7]), .dataf (a[7]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix51677z37211.lut_mask = 64'hf7e6d5c4b3a29180;
    stratixii_lcell_comb ix51677z37210 (.combout (r2_6n3s1f1[0]), .dataa (
                         b_0__dup_1325), .datab (nx51677z1), .datac (h[0]), .datad (
                         f[0]), .datae (d[0]), .dataf (b[0]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix51677z37210.lut_mask = 64'hfedcba9876543210;
    stratixii_lcell_comb ix51677z37209 (.combout (r2_6n3s1f1[1]), .dataa (
                         b_0__dup_1325), .datab (nx51677z1), .datac (h[1]), .datad (
                         f[1]), .datae (d[1]), .dataf (b[1]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix51677z37209.lut_mask = 64'hfedcba9876543210;
    stratixii_lcell_comb ix51677z37208 (.combout (r2_6n3s1f1[2]), .dataa (
                         b_0__dup_1325), .datab (nx51677z1), .datac (h[2]), .datad (
                         f[2]), .datae (d[2]), .dataf (b[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix51677z37208.lut_mask = 64'hfedcba9876543210;
    stratixii_lcell_comb ix51677z37207 (.combout (r2_6n3s1f1[3]), .dataa (
                         b_0__dup_1325), .datab (nx51677z1), .datac (h[3]), .datad (
                         f[3]), .datae (d[3]), .dataf (b[3]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix51677z37207.lut_mask = 64'hfedcba9876543210;
    stratixii_lcell_comb ix51677z37206 (.combout (r2_6n3s1f1[4]), .dataa (
                         b_0__dup_1325), .datab (nx51677z1), .datac (h[4]), .datad (
                         f[4]), .datae (d[4]), .dataf (b[4]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix51677z37206.lut_mask = 64'hfedcba9876543210;
    stratixii_lcell_comb ix51677z37205 (.combout (r2_6n3s1f1[5]), .dataa (
                         b_0__dup_1325), .datab (nx51677z1), .datac (h[5]), .datad (
                         f[5]), .datae (d[5]), .dataf (b[5]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix51677z37205.lut_mask = 64'hfedcba9876543210;
    stratixii_lcell_comb ix51677z37204 (.combout (r2_6n3s1f1[6]), .dataa (
                         b_0__dup_1325), .datab (nx51677z1), .datac (h[6]), .datad (
                         f[6]), .datae (d[6]), .dataf (b[6]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix51677z37204.lut_mask = 64'hfedcba9876543210;
    stratixii_lcell_comb ix51677z37201 (.combout (r2_6n3s1f1[7]), .dataa (
                         b_0__dup_1325), .datab (nx51677z1), .datac (h[7]), .datad (
                         f[7]), .datae (d[7]), .dataf (b[7]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix51677z37201.lut_mask = 64'hfedcba9876543210;
    stratixii_lcell_comb ix28524z37201 (.combout (nx28524z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx17322z1), .datae (
                         state[0]), .dataf (state[1]), .datag (1'b1), .cin (1'b0
                         )) ;
                         
                         defparam ix28524z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix27527z37201 (.combout (nx27527z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx17322z1), .datae (
                         state[1]), .dataf (state[2]), .datag (1'b1), .cin (1'b0
                         )) ;
                         
                         defparam ix27527z37201.lut_mask = 64'hffff00ffff000000;
    stratixii_lcell_comb ix17266z37202 (.combout (nx17266z2), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (validBit[3]), .datae (
                         validBit[5]), .dataf (validBit[6]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix17266z37202.lut_mask = 64'h000000ff00000000;
    stratixii_lcell_comb ix42030z37202 (.combout (nx42030z2), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         validBit[3]), .dataf (validBit[5]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix42030z37202.lut_mask = 64'h0000ffff00000000;
    stratixii_lcell_comb ix1457z37201 (.combout (second_cw_9n2ss1_0_), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         nx33057z2), .dataf (stage1_eSe_2_), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix1457z37201.lut_mask = 64'hffffffffffff0000;
    stratixii_lcell_comb ix45375z37201 (.combout (first_cw_9n1ss1_0_), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         nx31986z2), .dataf (stage1_wNw_0_), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix45375z37201.lut_mask = 64'h0000ffff00000000;
    stratixii_lcell_comb ix65254z37201 (.combout (nx65254z1), .dataa (1'b1), .datab (
                         1'b1), .datac (validBit[2]), .datad (validBit[3]), .datae (
                         validBit[4]), .dataf (validBit[5]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix65254z37201.lut_mask = 64'h0000000f00000000;
    stratixii_lcell_comb ix58464z37201 (.combout (nx58464z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (validBit[2]), .datae (
                         validBit[3]), .dataf (validBit[4]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix58464z37201.lut_mask = 64'h000000ff00000000;
    stratixii_lcell_comb ix16422z37201 (.combout (nx16422z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         validBit[2]), .dataf (validBit[3]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix16422z37201.lut_mask = 64'h0000ffff00000000;
    stratixii_lcell_comb ix34104z37201 (.combout (nx34104z1), .dataa (1'b1), .datab (
                         1'b1), .datac (validBit[1]), .datad (validBit[2]), .datae (
                         validBit[3]), .dataf (validBit[4]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix34104z37201.lut_mask = 64'h0000000f00000000;
    stratixii_lcell_comb ix54873z37201 (.combout (nx54873z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (validBit[1]), .datae (
                         validBit[2]), .dataf (validBit[3]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix54873z37201.lut_mask = 64'h000000ff00000000;
    stratixii_lcell_comb ix56415z37201 (.combout (nx56415z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         validBit[1]), .dataf (validBit[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix56415z37201.lut_mask = 64'h0000ffff00000000;
    stratixii_lcell_comb ix7380z37202 (.combout (nx7380z2), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         validBit[0]), .dataf (validBit[1]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix7380z37202.lut_mask = 64'h0000ffff00000000;
    stratixii_lcell_comb ix27953z37202 (.combout (nx27953z2), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (validBit[0]), .datae (
                         validBit[1]), .dataf (validBit[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix27953z37202.lut_mask = 64'h000000ff00000000;
    stratixii_lcell_comb ix250z37202 (.combout (nx250z2), .dataa (1'b1), .datab (
                         1'b1), .datac (validBit[0]), .datad (validBit[1]), .datae (
                         validBit[2]), .dataf (validBit[3]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix250z37202.lut_mask = 64'h0000000f00000000;
    stratixii_lcell_comb ix33634z37204 (.combout (nx33634z2), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (validBit[0]), .datae (
                         validBit[1]), .dataf (validBit[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix33634z37204.lut_mask = 64'h00ff00ff00ff0000;
    stratixii_lcell_comb ix36625z37202 (.combout (nx36625z2), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         i_valid_int), .dataf (i_reset_int), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix36625z37202.lut_mask = 64'h00000000ffff0000;
    stratixii_lcell_comb ix17322z37201 (.combout (nx17322z1), .dataa (1'b1), .datab (
                         1'b1), .datac (nx17322z2), .datad (i_valid_int), .datae (
                         nx17322z3), .dataf (vBit[2]), .datag (1'b1), .cin (1'b0
                         )) ;
                         
                         defparam ix17322z37201.lut_mask = 64'h000000f000000000;
    stratixii_lcell_comb ix40914z37201 (.combout (nx40914z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         i_reset_int), .dataf (vBit[1]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix40914z37201.lut_mask = 64'hffffffffffff0000;
    stratixii_lcell_comb ix7740z37201 (.combout (we[0]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         i_valid_int), .dataf (state[0]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix7740z37201.lut_mask = 64'hffff000000000000;
    stratixii_lcell_comb ix62017z37201 (.combout (we[1]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         i_valid_int), .dataf (state[1]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix62017z37201.lut_mask = 64'hffff000000000000;
    stratixii_lcell_comb ix64834z37201 (.combout (we[2]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         i_valid_int), .dataf (state[2]), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix64834z37201.lut_mask = 64'hffff000000000000;
    stratixii_lcell_comb ix33603z37201 (.combout (o_dir_dup0[0]), .dataa (1'b1)
                         , .datab (1'b1), .datac (nx36874z1), .datad (r17_12_), 
                         .datae (final_dir[0]), .dataf (o_valid_dup0), .datag (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix33603z37201.lut_mask = 64'hfff0000000000000;
    stratixii_lcell_comb ix32606z37201 (.combout (o_dir_dup0[1]), .dataa (1'b1)
                         , .datab (1'b1), .datac (nx36874z1), .datad (r17_12_), 
                         .datae (final_dir[1]), .dataf (o_valid_dup0), .datag (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix32606z37201.lut_mask = 64'hfff0000000000000;
    stratixii_lcell_comb ix36874z37201 (.combout (o_edge_dup0), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx36874z1), .datae (
                         r17_12_), .dataf (o_valid_dup0), .datag (1'b1), .cin (
                         1'b0)) ;
                         
                         defparam ix36874z37201.lut_mask = 64'hffffff0000000000;
    stratixii_lcell_comb ix31609z37201 (.combout (o_dir_dup0[2]), .dataa (1'b1)
                         , .datab (1'b1), .datac (o_valid_dup0), .datad (r17_12_
                         ), .datae (nx36874z1), .dataf (final_dir[2]), .datag (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix31609z37201.lut_mask = 64'hf0f0f00000000000;
    stratixii_io i_valid_ibuf (.combout (i_valid_int), .padio (i_valid), .datain (
                 1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_valid_ibuf.operation_mode = "input";
                 defparam i_valid_ibuf.output_register_mode = "none";
                 
                 defparam i_valid_ibuf.tie_off_output_clock_enable = "false";
                 defparam i_valid_ibuf.oe_register_mode = "none";
                 
                 defparam i_valid_ibuf.tie_off_oe_clock_enable = "false";
                 defparam i_valid_ibuf.input_register_mode = "none";
    stratixii_io i_reset_ibuf (.combout (i_reset_int), .padio (i_reset), .datain (
                 1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_reset_ibuf.operation_mode = "input";
                 defparam i_reset_ibuf.output_register_mode = "none";
                 
                 defparam i_reset_ibuf.tie_off_output_clock_enable = "false";
                 defparam i_reset_ibuf.oe_register_mode = "none";
                 
                 defparam i_reset_ibuf.tie_off_oe_clock_enable = "false";
                 defparam i_reset_ibuf.input_register_mode = "none";
    stratixii_io i_pixel_ibuf_7_ (.combout (i_pixel_int[7]), .padio (i_pixel[7])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_pixel_ibuf_7_.operation_mode = "input";
                 
                 defparam i_pixel_ibuf_7_.output_register_mode = "none";
                 
                 defparam i_pixel_ibuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_7_.oe_register_mode = "none";
                 
                 defparam i_pixel_ibuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_7_.input_register_mode = "none";
    stratixii_io i_pixel_ibuf_6_ (.combout (i_pixel_int[6]), .padio (i_pixel[6])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_pixel_ibuf_6_.operation_mode = "input";
                 
                 defparam i_pixel_ibuf_6_.output_register_mode = "none";
                 
                 defparam i_pixel_ibuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_6_.oe_register_mode = "none";
                 
                 defparam i_pixel_ibuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_6_.input_register_mode = "none";
    stratixii_io i_pixel_ibuf_5_ (.combout (i_pixel_int[5]), .padio (i_pixel[5])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_pixel_ibuf_5_.operation_mode = "input";
                 
                 defparam i_pixel_ibuf_5_.output_register_mode = "none";
                 
                 defparam i_pixel_ibuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_5_.oe_register_mode = "none";
                 
                 defparam i_pixel_ibuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_5_.input_register_mode = "none";
    stratixii_io i_pixel_ibuf_4_ (.combout (i_pixel_int[4]), .padio (i_pixel[4])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_pixel_ibuf_4_.operation_mode = "input";
                 
                 defparam i_pixel_ibuf_4_.output_register_mode = "none";
                 
                 defparam i_pixel_ibuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_4_.oe_register_mode = "none";
                 
                 defparam i_pixel_ibuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_4_.input_register_mode = "none";
    stratixii_io i_pixel_ibuf_3_ (.combout (i_pixel_int[3]), .padio (i_pixel[3])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_pixel_ibuf_3_.operation_mode = "input";
                 
                 defparam i_pixel_ibuf_3_.output_register_mode = "none";
                 
                 defparam i_pixel_ibuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_3_.oe_register_mode = "none";
                 
                 defparam i_pixel_ibuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_3_.input_register_mode = "none";
    stratixii_io i_pixel_ibuf_2_ (.combout (i_pixel_int[2]), .padio (i_pixel[2])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_pixel_ibuf_2_.operation_mode = "input";
                 
                 defparam i_pixel_ibuf_2_.output_register_mode = "none";
                 
                 defparam i_pixel_ibuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_2_.oe_register_mode = "none";
                 
                 defparam i_pixel_ibuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_2_.input_register_mode = "none";
    stratixii_io i_pixel_ibuf_1_ (.combout (i_pixel_int[1]), .padio (i_pixel[1])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_pixel_ibuf_1_.operation_mode = "input";
                 
                 defparam i_pixel_ibuf_1_.output_register_mode = "none";
                 
                 defparam i_pixel_ibuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_1_.oe_register_mode = "none";
                 
                 defparam i_pixel_ibuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_1_.input_register_mode = "none";
    stratixii_io i_pixel_ibuf_0_ (.combout (i_pixel_int[0]), .padio (i_pixel[0])
                 , .datain (1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0
                 ), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam i_pixel_ibuf_0_.operation_mode = "input";
                 
                 defparam i_pixel_ibuf_0_.output_register_mode = "none";
                 
                 defparam i_pixel_ibuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_0_.oe_register_mode = "none";
                 
                 defparam i_pixel_ibuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_pixel_ibuf_0_.input_register_mode = "none";
    stratixii_io i_clock_ibuf (.combout (i_clock_int), .padio (i_clock), .datain (
                 1'b0), .ddiodatain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_clock_ibuf.operation_mode = "input";
                 defparam i_clock_ibuf.output_register_mode = "none";
                 
                 defparam i_clock_ibuf.tie_off_output_clock_enable = "false";
                 defparam i_clock_ibuf.oe_register_mode = "none";
                 
                 defparam i_clock_ibuf.tie_off_oe_clock_enable = "false";
                 defparam i_clock_ibuf.input_register_mode = "none";
    stratixii_io debug_num_5_triBus10_3_ (.padio (debug_num_5[3]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_5_triBus10_3_.operation_mode = "output";
                 
                 defparam debug_num_5_triBus10_3_.output_register_mode = "none";
                 
                 defparam debug_num_5_triBus10_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_triBus10_3_.oe_register_mode = "none";
                 
                 defparam debug_num_5_triBus10_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_triBus10_3_.input_register_mode = "none";
    stratixii_io debug_num_5_triBus10_2_ (.padio (debug_num_5[2]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_5_triBus10_2_.operation_mode = "output";
                 
                 defparam debug_num_5_triBus10_2_.output_register_mode = "none";
                 
                 defparam debug_num_5_triBus10_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_triBus10_2_.oe_register_mode = "none";
                 
                 defparam debug_num_5_triBus10_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_triBus10_2_.input_register_mode = "none";
    stratixii_io debug_num_5_triBus10_1_ (.padio (debug_num_5[1]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_5_triBus10_1_.operation_mode = "output";
                 
                 defparam debug_num_5_triBus10_1_.output_register_mode = "none";
                 
                 defparam debug_num_5_triBus10_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_triBus10_1_.oe_register_mode = "none";
                 
                 defparam debug_num_5_triBus10_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_triBus10_1_.input_register_mode = "none";
    stratixii_io debug_num_5_triBus10_0_ (.padio (debug_num_5[0]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_5_triBus10_0_.operation_mode = "output";
                 
                 defparam debug_num_5_triBus10_0_.output_register_mode = "none";
                 
                 defparam debug_num_5_triBus10_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_triBus10_0_.oe_register_mode = "none";
                 
                 defparam debug_num_5_triBus10_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_triBus10_0_.input_register_mode = "none";
    stratixii_io debug_num_4_triBus9_3_ (.padio (debug_num_4[3]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_4_triBus9_3_.operation_mode = "output";
                 
                 defparam debug_num_4_triBus9_3_.output_register_mode = "none";
                 
                 defparam debug_num_4_triBus9_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_triBus9_3_.oe_register_mode = "none";
                 
                 defparam debug_num_4_triBus9_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_triBus9_3_.input_register_mode = "none";
    stratixii_io debug_num_4_triBus9_2_ (.padio (debug_num_4[2]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_4_triBus9_2_.operation_mode = "output";
                 
                 defparam debug_num_4_triBus9_2_.output_register_mode = "none";
                 
                 defparam debug_num_4_triBus9_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_triBus9_2_.oe_register_mode = "none";
                 
                 defparam debug_num_4_triBus9_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_triBus9_2_.input_register_mode = "none";
    stratixii_io debug_num_4_triBus9_1_ (.padio (debug_num_4[1]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_4_triBus9_1_.operation_mode = "output";
                 
                 defparam debug_num_4_triBus9_1_.output_register_mode = "none";
                 
                 defparam debug_num_4_triBus9_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_triBus9_1_.oe_register_mode = "none";
                 
                 defparam debug_num_4_triBus9_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_triBus9_1_.input_register_mode = "none";
    stratixii_io debug_num_4_triBus9_0_ (.padio (debug_num_4[0]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_4_triBus9_0_.operation_mode = "output";
                 
                 defparam debug_num_4_triBus9_0_.output_register_mode = "none";
                 
                 defparam debug_num_4_triBus9_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_triBus9_0_.oe_register_mode = "none";
                 
                 defparam debug_num_4_triBus9_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_triBus9_0_.input_register_mode = "none";
    stratixii_io debug_num_3_triBus8_3_ (.padio (debug_num_3[3]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_3_triBus8_3_.operation_mode = "output";
                 
                 defparam debug_num_3_triBus8_3_.output_register_mode = "none";
                 
                 defparam debug_num_3_triBus8_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_triBus8_3_.oe_register_mode = "none";
                 
                 defparam debug_num_3_triBus8_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_triBus8_3_.input_register_mode = "none";
    stratixii_io debug_num_3_triBus8_2_ (.padio (debug_num_3[2]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_3_triBus8_2_.operation_mode = "output";
                 
                 defparam debug_num_3_triBus8_2_.output_register_mode = "none";
                 
                 defparam debug_num_3_triBus8_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_triBus8_2_.oe_register_mode = "none";
                 
                 defparam debug_num_3_triBus8_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_triBus8_2_.input_register_mode = "none";
    stratixii_io debug_num_3_triBus8_1_ (.padio (debug_num_3[1]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_3_triBus8_1_.operation_mode = "output";
                 
                 defparam debug_num_3_triBus8_1_.output_register_mode = "none";
                 
                 defparam debug_num_3_triBus8_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_triBus8_1_.oe_register_mode = "none";
                 
                 defparam debug_num_3_triBus8_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_triBus8_1_.input_register_mode = "none";
    stratixii_io debug_num_3_triBus8_0_ (.padio (debug_num_3[0]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_3_triBus8_0_.operation_mode = "output";
                 
                 defparam debug_num_3_triBus8_0_.output_register_mode = "none";
                 
                 defparam debug_num_3_triBus8_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_triBus8_0_.oe_register_mode = "none";
                 
                 defparam debug_num_3_triBus8_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_triBus8_0_.input_register_mode = "none";
    stratixii_io debug_num_2_triBus7_3_ (.padio (debug_num_2[3]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_triBus7_3_.operation_mode = "output";
                 
                 defparam debug_num_2_triBus7_3_.output_register_mode = "none";
                 
                 defparam debug_num_2_triBus7_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_triBus7_3_.oe_register_mode = "none";
                 
                 defparam debug_num_2_triBus7_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_triBus7_3_.input_register_mode = "none";
    stratixii_io debug_num_2_triBus7_2_ (.padio (debug_num_2[2]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_triBus7_2_.operation_mode = "output";
                 
                 defparam debug_num_2_triBus7_2_.output_register_mode = "none";
                 
                 defparam debug_num_2_triBus7_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_triBus7_2_.oe_register_mode = "none";
                 
                 defparam debug_num_2_triBus7_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_triBus7_2_.input_register_mode = "none";
    stratixii_io debug_num_2_triBus7_1_ (.padio (debug_num_2[1]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_triBus7_1_.operation_mode = "output";
                 
                 defparam debug_num_2_triBus7_1_.output_register_mode = "none";
                 
                 defparam debug_num_2_triBus7_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_triBus7_1_.oe_register_mode = "none";
                 
                 defparam debug_num_2_triBus7_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_triBus7_1_.input_register_mode = "none";
    stratixii_io debug_num_2_triBus7_0_ (.padio (debug_num_2[0]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_2_triBus7_0_.operation_mode = "output";
                 
                 defparam debug_num_2_triBus7_0_.output_register_mode = "none";
                 
                 defparam debug_num_2_triBus7_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_triBus7_0_.oe_register_mode = "none";
                 
                 defparam debug_num_2_triBus7_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_triBus7_0_.input_register_mode = "none";
    stratixii_io debug_num_1_triBus6_3_ (.padio (debug_num_1[3]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_1_triBus6_3_.operation_mode = "output";
                 
                 defparam debug_num_1_triBus6_3_.output_register_mode = "none";
                 
                 defparam debug_num_1_triBus6_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_triBus6_3_.oe_register_mode = "none";
                 
                 defparam debug_num_1_triBus6_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_triBus6_3_.input_register_mode = "none";
    stratixii_io debug_num_1_triBus6_2_ (.padio (debug_num_1[2]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_1_triBus6_2_.operation_mode = "output";
                 
                 defparam debug_num_1_triBus6_2_.output_register_mode = "none";
                 
                 defparam debug_num_1_triBus6_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_triBus6_2_.oe_register_mode = "none";
                 
                 defparam debug_num_1_triBus6_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_triBus6_2_.input_register_mode = "none";
    stratixii_io debug_num_1_triBus6_1_ (.padio (debug_num_1[1]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_1_triBus6_1_.operation_mode = "output";
                 
                 defparam debug_num_1_triBus6_1_.output_register_mode = "none";
                 
                 defparam debug_num_1_triBus6_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_triBus6_1_.oe_register_mode = "none";
                 
                 defparam debug_num_1_triBus6_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_triBus6_1_.input_register_mode = "none";
    stratixii_io debug_num_1_triBus6_0_ (.padio (debug_num_1[0]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_1_triBus6_0_.operation_mode = "output";
                 
                 defparam debug_num_1_triBus6_0_.output_register_mode = "none";
                 
                 defparam debug_num_1_triBus6_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_triBus6_0_.oe_register_mode = "none";
                 
                 defparam debug_num_1_triBus6_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_triBus6_0_.input_register_mode = "none";
    stratixii_io debug_num_0_triBus5_3_ (.padio (debug_num_0[3]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_0_triBus5_3_.operation_mode = "output";
                 
                 defparam debug_num_0_triBus5_3_.output_register_mode = "none";
                 
                 defparam debug_num_0_triBus5_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_triBus5_3_.oe_register_mode = "none";
                 
                 defparam debug_num_0_triBus5_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_triBus5_3_.input_register_mode = "none";
    stratixii_io debug_num_0_triBus5_2_ (.padio (debug_num_0[2]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_0_triBus5_2_.operation_mode = "output";
                 
                 defparam debug_num_0_triBus5_2_.output_register_mode = "none";
                 
                 defparam debug_num_0_triBus5_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_triBus5_2_.oe_register_mode = "none";
                 
                 defparam debug_num_0_triBus5_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_triBus5_2_.input_register_mode = "none";
    stratixii_io debug_num_0_triBus5_1_ (.padio (debug_num_0[1]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_0_triBus5_1_.operation_mode = "output";
                 
                 defparam debug_num_0_triBus5_1_.output_register_mode = "none";
                 
                 defparam debug_num_0_triBus5_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_triBus5_1_.oe_register_mode = "none";
                 
                 defparam debug_num_0_triBus5_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_triBus5_1_.input_register_mode = "none";
    stratixii_io debug_num_0_triBus5_0_ (.padio (debug_num_0[0]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_num_0_triBus5_0_.operation_mode = "output";
                 
                 defparam debug_num_0_triBus5_0_.output_register_mode = "none";
                 
                 defparam debug_num_0_triBus5_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_triBus5_0_.oe_register_mode = "none";
                 
                 defparam debug_num_0_triBus5_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_triBus5_0_.input_register_mode = "none";
    stratixii_io debug_led_red_triBus3_9_ (.padio (debug_led_red[9]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_triBus3_9_.operation_mode = "output";
                 
                 defparam debug_led_red_triBus3_9_.output_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_9_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_9_.oe_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_9_.input_register_mode = "none";
    stratixii_io debug_led_red_triBus3_8_ (.padio (debug_led_red[8]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_triBus3_8_.operation_mode = "output";
                 
                 defparam debug_led_red_triBus3_8_.output_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_8_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_8_.oe_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_8_.input_register_mode = "none";
    stratixii_io debug_led_red_triBus3_7_ (.padio (debug_led_red[7]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_triBus3_7_.operation_mode = "output";
                 
                 defparam debug_led_red_triBus3_7_.output_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_7_.oe_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_7_.input_register_mode = "none";
    stratixii_io debug_led_red_triBus3_6_ (.padio (debug_led_red[6]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_triBus3_6_.operation_mode = "output";
                 
                 defparam debug_led_red_triBus3_6_.output_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_6_.oe_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_6_.input_register_mode = "none";
    stratixii_io debug_led_red_triBus3_5_ (.padio (debug_led_red[5]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_triBus3_5_.operation_mode = "output";
                 
                 defparam debug_led_red_triBus3_5_.output_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_5_.oe_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_5_.input_register_mode = "none";
    stratixii_io debug_led_red_triBus3_4_ (.padio (debug_led_red[4]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_triBus3_4_.operation_mode = "output";
                 
                 defparam debug_led_red_triBus3_4_.output_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_4_.oe_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_4_.input_register_mode = "none";
    stratixii_io debug_led_red_triBus3_3_ (.padio (debug_led_red[3]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_triBus3_3_.operation_mode = "output";
                 
                 defparam debug_led_red_triBus3_3_.output_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_3_.oe_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_3_.input_register_mode = "none";
    stratixii_io debug_led_red_triBus3_2_ (.padio (debug_led_red[2]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_triBus3_2_.operation_mode = "output";
                 
                 defparam debug_led_red_triBus3_2_.output_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_2_.oe_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_2_.input_register_mode = "none";
    stratixii_io debug_led_red_triBus3_17_ (.padio (debug_led_red[17]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_triBus3_17_.operation_mode = "output";
                 
                 defparam debug_led_red_triBus3_17_.output_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_17_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_17_.oe_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_17_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_17_.input_register_mode = "none";
    stratixii_io debug_led_red_triBus3_16_ (.padio (debug_led_red[16]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_triBus3_16_.operation_mode = "output";
                 
                 defparam debug_led_red_triBus3_16_.output_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_16_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_16_.oe_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_16_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_16_.input_register_mode = "none";
    stratixii_io debug_led_red_triBus3_15_ (.padio (debug_led_red[15]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_triBus3_15_.operation_mode = "output";
                 
                 defparam debug_led_red_triBus3_15_.output_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_15_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_15_.oe_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_15_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_15_.input_register_mode = "none";
    stratixii_io debug_led_red_triBus3_14_ (.padio (debug_led_red[14]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_triBus3_14_.operation_mode = "output";
                 
                 defparam debug_led_red_triBus3_14_.output_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_14_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_14_.oe_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_14_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_14_.input_register_mode = "none";
    stratixii_io debug_led_red_triBus3_13_ (.padio (debug_led_red[13]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_triBus3_13_.operation_mode = "output";
                 
                 defparam debug_led_red_triBus3_13_.output_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_13_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_13_.oe_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_13_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_13_.input_register_mode = "none";
    stratixii_io debug_led_red_triBus3_12_ (.padio (debug_led_red[12]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_triBus3_12_.operation_mode = "output";
                 
                 defparam debug_led_red_triBus3_12_.output_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_12_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_12_.oe_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_12_.input_register_mode = "none";
    stratixii_io debug_led_red_triBus3_11_ (.padio (debug_led_red[11]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_triBus3_11_.operation_mode = "output";
                 
                 defparam debug_led_red_triBus3_11_.output_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_11_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_11_.oe_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_11_.input_register_mode = "none";
    stratixii_io debug_led_red_triBus3_10_ (.padio (debug_led_red[10]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_triBus3_10_.operation_mode = "output";
                 
                 defparam debug_led_red_triBus3_10_.output_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_10_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_10_.oe_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_10_.input_register_mode = "none";
    stratixii_io debug_led_red_triBus3_1_ (.padio (debug_led_red[1]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_triBus3_1_.operation_mode = "output";
                 
                 defparam debug_led_red_triBus3_1_.output_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_1_.oe_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_1_.input_register_mode = "none";
    stratixii_io debug_led_red_triBus3_0_ (.padio (debug_led_red[0]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_red_triBus3_0_.operation_mode = "output";
                 
                 defparam debug_led_red_triBus3_0_.output_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_0_.oe_register_mode = "none";
                 
                 defparam debug_led_red_triBus3_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_triBus3_0_.input_register_mode = "none";
    stratixii_io debug_led_grn_triBus4_5_ (.padio (debug_led_grn[5]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_grn_triBus4_5_.operation_mode = "output";
                 
                 defparam debug_led_grn_triBus4_5_.output_register_mode = "none";
                 
                 defparam debug_led_grn_triBus4_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_triBus4_5_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_triBus4_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_triBus4_5_.input_register_mode = "none";
    stratixii_io debug_led_grn_triBus4_4_ (.padio (debug_led_grn[4]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_grn_triBus4_4_.operation_mode = "output";
                 
                 defparam debug_led_grn_triBus4_4_.output_register_mode = "none";
                 
                 defparam debug_led_grn_triBus4_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_triBus4_4_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_triBus4_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_triBus4_4_.input_register_mode = "none";
    stratixii_io debug_led_grn_triBus4_3_ (.padio (debug_led_grn[3]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_grn_triBus4_3_.operation_mode = "output";
                 
                 defparam debug_led_grn_triBus4_3_.output_register_mode = "none";
                 
                 defparam debug_led_grn_triBus4_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_triBus4_3_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_triBus4_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_triBus4_3_.input_register_mode = "none";
    stratixii_io debug_led_grn_triBus4_2_ (.padio (debug_led_grn[2]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_grn_triBus4_2_.operation_mode = "output";
                 
                 defparam debug_led_grn_triBus4_2_.output_register_mode = "none";
                 
                 defparam debug_led_grn_triBus4_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_triBus4_2_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_triBus4_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_triBus4_2_.input_register_mode = "none";
    stratixii_io debug_led_grn_triBus4_1_ (.padio (debug_led_grn[1]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_grn_triBus4_1_.operation_mode = "output";
                 
                 defparam debug_led_grn_triBus4_1_.output_register_mode = "none";
                 
                 defparam debug_led_grn_triBus4_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_triBus4_1_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_triBus4_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_triBus4_1_.input_register_mode = "none";
    stratixii_io debug_led_grn_triBus4_0_ (.padio (debug_led_grn[0]), .datain (
                 _MGC0390_MGC039), .ddiodatain (1'b0), .oe (_MGC0390_MGC039), .outclk (
                 1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam debug_led_grn_triBus4_0_.operation_mode = "output";
                 
                 defparam debug_led_grn_triBus4_0_.output_register_mode = "none";
                 
                 defparam debug_led_grn_triBus4_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_triBus4_0_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_triBus4_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_triBus4_0_.input_register_mode = "none";
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

    wire ena1_rename704;



    altsyncram ix64056z29483 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename704), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
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
    assign ena1_rename704 = 1 ;
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

    wire ena1_rename674;



    altsyncram ix64056z29482 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename674), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
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
    assign ena1_rename674 = 1 ;
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

    wire ena1_rename644;



    altsyncram ix64056z29481 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename644), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
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
    assign ena1_rename644 = 1 ;
endmodule


module sub_12_0 ( cin, a, b, d, cout, p_x_r22_0_ ) ;

    input cin ;
    input [11:0]a ;
    input [11:0]b ;
    output [11:0]d ;
    output cout ;
    input p_x_r22_0_ ;

    wire nx1524z1, NOT_b_1_, nx11426z2, nx11426z3, nx11426z1, nx41160z1, 
         nx41160z2, nx37326z1, nx37326z2, nx15260z1, nx15260z2, nx41091z1, 
         nx41091z2, nx37395z1, nx37395z2, nx61156z1, nx61156z2, nx17330z1, 
         nx17330z2, nx35256z1, nx35256z2, nx43230z1, nx43230z2, nx9356z1, 
         nx9356z2;
    wire [79:0] xmplr_dummy ;




    assign nx1524z1 = 0 ;
    assign NOT_b_1_ = ~b[1] ;
    assign nx11426z1 = 0 ;
    stratixii_lcell_comb ix97_dup_0 (.cout (nx41091z1), .shareout (nx41091z2), .dataa (
                         1'b1), .datab (1'b1), .datac (b[4]), .datad (a[4]), .datae (
                         1'b1), .dataf (1'b1), .datag (1'b1), .cin (nx15260z1), 
                         .sharein (nx15260z2)) ;
                         
                         defparam ix97_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix97_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix86_dup_0 (.cout (nx15260z1), .shareout (nx15260z2), .dataa (
                         1'b1), .datab (1'b1), .datac (b[3]), .datad (a[3]), .datae (
                         1'b1), .dataf (1'b1), .datag (1'b1), .cin (nx37326z1), 
                         .sharein (nx37326z2)) ;
                         
                         defparam ix86_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix86_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix75_dup_0 (.cout (nx37326z1), .shareout (nx37326z2), .dataa (
                         1'b1), .datab (1'b1), .datac (b[2]), .datad (a[2]), .datae (
                         1'b1), .dataf (1'b1), .datag (1'b1), .cin (nx41160z1), 
                         .sharein (nx41160z2)) ;
                         
                         defparam ix75_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix75_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix64_dup_0 (.cout (nx41160z1), .shareout (nx41160z2), .dataa (
                         1'b1), .datab (1'b1), .datac (nx11426z1), .datad (
                         NOT_b_1_), .datae (1'b1), .dataf (1'b1), .datag (1'b1)
                         , .cin (nx11426z2), .sharein (nx11426z3)) ;
                         
                         defparam ix64_dup_0.lut_mask = 64'h0000f0f00000ff00;
                         
                         defparam ix64_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix53_dup_0 (.cout (nx11426z2), .shareout (nx11426z3), .dataa (
                         1'b1), .datab (1'b1), .datac (p_x_r22_0_), .datad (b[0]
                         ), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx1524z1), .sharein (nx1524z1)) ;
                         
                         defparam ix53_dup_0.lut_mask = 64'h0000000f00000ff0;
                         
                         defparam ix53_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix174_dup_0 (.sumout (d[11]), .dataa (1'b1), .datab (
                         1'b1), .datac (b[11]), .datad (a[11]), .datae (1'b1), .dataf (
                         1'b1), .datag (1'b1), .cin (nx9356z1), .sharein (
                         nx9356z2)) ;
                         
                         defparam ix174_dup_0.lut_mask = 64'h000000000000f00f;
                         defparam ix174_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix163_dup_0 (.sumout (d[10]), .cout (nx9356z1), .shareout (
                         nx9356z2), .dataa (1'b1), .datab (1'b1), .datac (b[10])
                         , .datad (a[10]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx43230z1), .sharein (nx43230z2)) ;
                         
                         defparam ix163_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix163_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix152_dup_0 (.sumout (d[9]), .cout (nx43230z1), .shareout (
                         nx43230z2), .dataa (1'b1), .datab (1'b1), .datac (b[9])
                         , .datad (a[9]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx35256z1), .sharein (nx35256z2)) ;
                         
                         defparam ix152_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix152_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix141_dup_0 (.sumout (d[8]), .cout (nx35256z1), .shareout (
                         nx35256z2), .dataa (1'b1), .datab (1'b1), .datac (b[8])
                         , .datad (a[8]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx17330z1), .sharein (nx17330z2)) ;
                         
                         defparam ix141_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix141_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix130_dup_0 (.sumout (d[7]), .cout (nx17330z1), .shareout (
                         nx17330z2), .dataa (1'b1), .datab (1'b1), .datac (b[7])
                         , .datad (a[7]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx61156z1), .sharein (nx61156z2)) ;
                         
                         defparam ix130_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix130_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix119_dup_0 (.sumout (d[6]), .cout (nx61156z1), .shareout (
                         nx61156z2), .dataa (1'b1), .datab (1'b1), .datac (b[6])
                         , .datad (a[6]), .datae (1'b1), .dataf (1'b1), .datag (
                         1'b1), .cin (nx37395z1), .sharein (nx37395z2)) ;
                         
                         defparam ix119_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix119_dup_0.shared_arith = "on";
    stratixii_lcell_comb ix108_dup_0 (.cout (nx37395z1), .shareout (nx37395z2), 
                         .dataa (1'b1), .datab (1'b1), .datac (b[5]), .datad (
                         a[5]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx41091z1), .sharein (nx41091z2)) ;
                         
                         defparam ix108_dup_0.lut_mask = 64'h00000f000000f00f;
                         
                         defparam ix108_dup_0.shared_arith = "on";
endmodule


module add_12_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [11:0]a ;
    input [11:0]b ;
    output [11:0]d ;
    output cout ;

    wire nx63795z26, nx63795z24, nx63795z22, nx63795z20, nx63795z18, nx63795z16, 
         nx63795z14, nx63795z12, nx63795z10, nx63795z8, nx63795z6, nx63795z4, 
         nx63795z3;
    wire [96:0] xmplr_dummy ;




    assign nx63795z26 = 0 ;
    assign nx63795z3 = 0 ;
    stratixii_lcell_comb ix63795z37206 (.sumout (d[7]), .cout (nx63795z10), .dataa (
                         a[6]), .datab (1'b1), .datac (1'b1), .datad (a[7]), .datae (
                         1'b1), .dataf (1'b1), .datag (1'b1), .cin (nx63795z12)
                         ) ;
                         
                         defparam ix63795z37206.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix63795z37207 (.sumout (d[6]), .cout (nx63795z12), .dataa (
                         a[6]), .datab (1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         1'b1), .dataf (a[5]), .datag (1'b1), .cin (nx63795z14)
                         ) ;
                         
                         defparam ix63795z37207.lut_mask = 64'h000000ff0000aaaa;
    stratixii_lcell_comb ix63795z37208 (.sumout (d[5]), .cout (nx63795z14), .dataa (
                         a[4]), .datab (1'b1), .datac (1'b1), .datad (a[5]), .datae (
                         1'b1), .dataf (1'b1), .datag (1'b1), .cin (nx63795z16)
                         ) ;
                         
                         defparam ix63795z37208.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix63795z37209 (.sumout (d[4]), .cout (nx63795z16), .dataa (
                         a[4]), .datab (1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         1'b1), .dataf (a[3]), .datag (1'b1), .cin (nx63795z18)
                         ) ;
                         
                         defparam ix63795z37209.lut_mask = 64'h000000ff0000aaaa;
    stratixii_lcell_comb ix63795z37210 (.sumout (d[3]), .cout (nx63795z18), .dataa (
                         a[2]), .datab (1'b1), .datac (1'b1), .datad (a[3]), .datae (
                         1'b1), .dataf (1'b1), .datag (1'b1), .cin (nx63795z20)
                         ) ;
                         
                         defparam ix63795z37210.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix63795z37211 (.sumout (d[2]), .cout (nx63795z20), .dataa (
                         a[2]), .datab (1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         1'b1), .dataf (a[1]), .datag (1'b1), .cin (nx63795z22)
                         ) ;
                         
                         defparam ix63795z37211.lut_mask = 64'h000000ff0000aaaa;
    stratixii_lcell_comb ix63795z37212 (.sumout (d[1]), .cout (nx63795z22), .dataa (
                         a[0]), .datab (1'b1), .datac (1'b1), .datad (a[1]), .datae (
                         1'b1), .dataf (1'b1), .datag (1'b1), .cin (nx63795z24)
                         ) ;
                         
                         defparam ix63795z37212.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix63795z37213 (.sumout (d[0]), .cout (nx63795z24), .dataa (
                         a[0]), .datab (1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         1'b1), .dataf (b[0]), .datag (1'b1), .cin (nx63795z26)
                         ) ;
                         
                         defparam ix63795z37213.lut_mask = 64'h000000ff0000aaaa;
    stratixii_lcell_comb ix63795z37201 (.sumout (d[11]), .dataa (a[10]), .datab (
                         1'b1), .datac (1'b1), .datad (nx63795z3), .datae (1'b1)
                         , .dataf (1'b1), .datag (1'b1), .cin (nx63795z4)) ;
                         
                         defparam ix63795z37201.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix63795z37203 (.sumout (d[10]), .cout (nx63795z4), .dataa (
                         a[10]), .datab (1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         1'b1), .dataf (a[9]), .datag (1'b1), .cin (nx63795z6)
                         ) ;
                         
                         defparam ix63795z37203.lut_mask = 64'h000000ff0000aaaa;
    stratixii_lcell_comb ix63795z37204 (.sumout (d[9]), .cout (nx63795z6), .dataa (
                         a[8]), .datab (1'b1), .datac (1'b1), .datad (a[9]), .datae (
                         1'b1), .dataf (1'b1), .datag (1'b1), .cin (nx63795z8)
                         ) ;
                         
                         defparam ix63795z37204.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix63795z37205 (.sumout (d[8]), .cout (nx63795z8), .dataa (
                         a[8]), .datab (1'b1), .datac (1'b1), .datad (1'b1), .datae (
                         1'b1), .dataf (a[7]), .datag (1'b1), .cin (nx63795z10)
                         ) ;
                         
                         defparam ix63795z37205.lut_mask = 64'h000000ff0000aaaa;
endmodule


module add_11_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [10:0]a ;
    input [10:0]b ;
    output [10:0]d ;
    output cout ;

    wire nx62798z33, nx62798z30, nx62798z27, nx62798z24, nx62798z21, nx62798z18, 
         nx62798z15, nx62798z12, nx62798z9, nx62798z6, nx62798z4, nx62798z2, 
         nx59393z2, nx59393z1;
    wire [97:0] xmplr_dummy ;




    assign nx62798z33 = 0 ;
    assign nx62798z2 = 0 ;
    assign nx59393z1 = 0 ;
    stratixii_lcell_comb ix62798z37206 (.sumout (d[6]), .cout (nx62798z12), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[6]), .datae (
                         1'b1), .dataf (b[6]), .datag (1'b1), .cin (nx62798z15)
                         ) ;
                         
                         defparam ix62798z37206.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix62798z37207 (.sumout (d[5]), .cout (nx62798z15), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[5]), .datae (
                         1'b1), .dataf (b[5]), .datag (1'b1), .cin (nx62798z18)
                         ) ;
                         
                         defparam ix62798z37207.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix62798z37208 (.sumout (d[4]), .cout (nx62798z18), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[4]), .datae (
                         1'b1), .dataf (b[4]), .datag (1'b1), .cin (nx62798z21)
                         ) ;
                         
                         defparam ix62798z37208.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix62798z37209 (.sumout (d[3]), .cout (nx62798z21), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[3]), .datae (
                         1'b1), .dataf (b[3]), .datag (1'b1), .cin (nx62798z24)
                         ) ;
                         
                         defparam ix62798z37209.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix62798z37210 (.sumout (d[2]), .cout (nx62798z24), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[2]), .datae (
                         1'b1), .dataf (b[2]), .datag (1'b1), .cin (nx62798z27)
                         ) ;
                         
                         defparam ix62798z37210.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix62798z37211 (.sumout (d[1]), .cout (nx62798z27), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[1]), .datae (
                         1'b1), .dataf (b[1]), .datag (1'b1), .cin (nx62798z30)
                         ) ;
                         
                         defparam ix62798z37211.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix62798z37212 (.sumout (d[0]), .cout (nx62798z30), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[0]), .datae (
                         1'b1), .dataf (b[0]), .datag (1'b1), .cin (nx62798z33)
                         ) ;
                         
                         defparam ix62798z37212.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix132_buf (.sumout (cout), .dataa (1'b1), .datab (1'b1)
                         , .datac (nx59393z1), .datad (1'b1), .datae (1'b1), .dataf (
                         1'b1), .datag (1'b1), .cin (nx59393z2)) ;
                         
                         defparam ix132_buf.lut_mask = 64'h00000f0f0000f0f0;
    stratixii_lcell_comb ix62798z37201 (.sumout (d[10]), .cout (nx59393z2), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (nx62798z2)
                         , .datae (1'b1), .dataf (b[10]), .datag (1'b1), .cin (
                         nx62798z4)) ;
                         
                         defparam ix62798z37201.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix62798z37203 (.sumout (d[9]), .cout (nx62798z4), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (nx62798z2)
                         , .datae (1'b1), .dataf (b[9]), .datag (1'b1), .cin (
                         nx62798z6)) ;
                         
                         defparam ix62798z37203.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix62798z37204 (.sumout (d[8]), .cout (nx62798z6), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[8]), .datae (
                         1'b1), .dataf (b[8]), .datag (1'b1), .cin (nx62798z9)
                         ) ;
                         
                         defparam ix62798z37204.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix62798z37205 (.sumout (d[7]), .cout (nx62798z9), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[7]), .datae (
                         1'b1), .dataf (b[7]), .datag (1'b1), .cin (nx62798z12)
                         ) ;
                         
                         defparam ix62798z37205.lut_mask = 64'h000000ff0000ff00;
endmodule


module add_10_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [9:0]a ;
    input [9:0]b ;
    output [9:0]d ;
    output cout ;

    wire nx46946z31, nx46946z28, nx46946z25, nx46946z22, nx46946z19, nx46946z16, 
         nx46946z13, nx46946z10, nx46946z7, nx46946z4, nx46946z2, nx46471z2, 
         nx46471z1;
    wire [89:0] xmplr_dummy ;




    assign nx46946z31 = 0 ;
    assign nx46946z2 = 0 ;
    assign nx46471z1 = 0 ;
    stratixii_lcell_comb ix46946z37205 (.sumout (d[6]), .cout (nx46946z10), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[6]), .datae (
                         1'b1), .dataf (b[6]), .datag (1'b1), .cin (nx46946z13)
                         ) ;
                         
                         defparam ix46946z37205.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix46946z37206 (.sumout (d[5]), .cout (nx46946z13), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[5]), .datae (
                         1'b1), .dataf (b[5]), .datag (1'b1), .cin (nx46946z16)
                         ) ;
                         
                         defparam ix46946z37206.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix46946z37207 (.sumout (d[4]), .cout (nx46946z16), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[4]), .datae (
                         1'b1), .dataf (b[4]), .datag (1'b1), .cin (nx46946z19)
                         ) ;
                         
                         defparam ix46946z37207.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix46946z37208 (.sumout (d[3]), .cout (nx46946z19), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[3]), .datae (
                         1'b1), .dataf (b[3]), .datag (1'b1), .cin (nx46946z22)
                         ) ;
                         
                         defparam ix46946z37208.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix46946z37209 (.sumout (d[2]), .cout (nx46946z22), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[2]), .datae (
                         1'b1), .dataf (b[2]), .datag (1'b1), .cin (nx46946z25)
                         ) ;
                         
                         defparam ix46946z37209.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix46946z37210 (.sumout (d[1]), .cout (nx46946z25), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[1]), .datae (
                         1'b1), .dataf (b[1]), .datag (1'b1), .cin (nx46946z28)
                         ) ;
                         
                         defparam ix46946z37210.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix46946z37211 (.sumout (d[0]), .cout (nx46946z28), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[0]), .datae (
                         1'b1), .dataf (b[0]), .datag (1'b1), .cin (nx46946z31)
                         ) ;
                         
                         defparam ix46946z37211.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix121_buf (.sumout (cout), .dataa (1'b1), .datab (1'b1)
                         , .datac (nx46471z1), .datad (1'b1), .datae (1'b1), .dataf (
                         1'b1), .datag (1'b1), .cin (nx46471z2)) ;
                         
                         defparam ix121_buf.lut_mask = 64'h00000f0f0000f0f0;
    stratixii_lcell_comb ix46946z37201 (.sumout (d[9]), .cout (nx46471z2), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (nx46946z2)
                         , .datae (1'b1), .dataf (b[9]), .datag (1'b1), .cin (
                         nx46946z4)) ;
                         
                         defparam ix46946z37201.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix46946z37203 (.sumout (d[8]), .cout (nx46946z4), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[8]), .datae (
                         1'b1), .dataf (b[8]), .datag (1'b1), .cin (nx46946z7)
                         ) ;
                         
                         defparam ix46946z37203.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix46946z37204 (.sumout (d[7]), .cout (nx46946z7), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[7]), .datae (
                         1'b1), .dataf (b[7]), .datag (1'b1), .cin (nx46946z10)
                         ) ;
                         
                         defparam ix46946z37204.lut_mask = 64'h000000ff0000ff00;
endmodule


module add_9_3 ( cin, a, b, d, cout ) ;

    input cin ;
    input [8:0]a ;
    input [8:0]b ;
    output [8:0]d ;
    output cout ;

    wire nx45949z28, nx45949z25, nx45949z22, nx45949z19, nx45949z16, nx45949z13, 
         nx45949z10, nx45949z7, nx45949z4, nx31987z2, nx31987z1;
    wire [81:0] xmplr_dummy ;




    assign nx45949z28 = 0 ;
    assign nx31987z1 = 0 ;
    stratixii_lcell_comb ix45949z37203 (.sumout (d[6]), .cout (nx45949z7), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[6]), .datae (
                         1'b1), .dataf (b[6]), .datag (1'b1), .cin (nx45949z10)
                         ) ;
                         
                         defparam ix45949z37203.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix45949z37204 (.sumout (d[5]), .cout (nx45949z10), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[5]), .datae (
                         1'b1), .dataf (b[5]), .datag (1'b1), .cin (nx45949z13)
                         ) ;
                         
                         defparam ix45949z37204.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix45949z37205 (.sumout (d[4]), .cout (nx45949z13), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[4]), .datae (
                         1'b1), .dataf (b[4]), .datag (1'b1), .cin (nx45949z16)
                         ) ;
                         
                         defparam ix45949z37205.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix45949z37206 (.sumout (d[3]), .cout (nx45949z16), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[3]), .datae (
                         1'b1), .dataf (b[3]), .datag (1'b1), .cin (nx45949z19)
                         ) ;
                         
                         defparam ix45949z37206.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix45949z37207 (.sumout (d[2]), .cout (nx45949z19), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[2]), .datae (
                         1'b1), .dataf (b[2]), .datag (1'b1), .cin (nx45949z22)
                         ) ;
                         
                         defparam ix45949z37207.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix45949z37208 (.sumout (d[1]), .cout (nx45949z22), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[1]), .datae (
                         1'b1), .dataf (b[1]), .datag (1'b1), .cin (nx45949z25)
                         ) ;
                         
                         defparam ix45949z37208.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix45949z37209 (.sumout (d[0]), .cout (nx45949z25), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[0]), .datae (
                         1'b1), .dataf (b[0]), .datag (1'b1), .cin (nx45949z28)
                         ) ;
                         
                         defparam ix45949z37209.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix110_buf (.sumout (cout), .dataa (1'b1), .datab (1'b1)
                         , .datac (nx31987z1), .datad (1'b1), .datae (1'b1), .dataf (
                         1'b1), .datag (1'b1), .cin (nx31987z2)) ;
                         
                         defparam ix110_buf.lut_mask = 64'h00000f0f0000f0f0;
    stratixii_lcell_comb ix45949z37201 (.sumout (d[8]), .cout (nx31987z2), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[8]), .datae (
                         1'b1), .dataf (b[8]), .datag (1'b1), .cin (nx45949z4)
                         ) ;
                         
                         defparam ix45949z37201.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix45949z37202 (.sumout (d[7]), .cout (nx45949z4), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[7]), .datae (
                         1'b1), .dataf (b[7]), .datag (1'b1), .cin (nx45949z7)
                         ) ;
                         
                         defparam ix45949z37202.lut_mask = 64'h000000ff0000ff00;
endmodule


module add_9_2 ( cin, a, b, d, cout ) ;

    input cin ;
    input [8:0]a ;
    input [8:0]b ;
    output [8:0]d ;
    output cout ;

    wire nx45949z28, nx45949z25, nx45949z22, nx45949z19, nx45949z16, nx45949z13, 
         nx45949z10, nx45949z7, nx45949z4, nx45949z2, nx6441z2, nx6441z1;
    wire [81:0] xmplr_dummy ;




    assign nx45949z28 = 0 ;
    assign nx45949z2 = 0 ;
    assign nx6441z1 = 0 ;
    stratixii_lcell_comb ix45949z37204 (.sumout (d[6]), .cout (nx45949z7), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[6]), .datae (
                         1'b1), .dataf (b[6]), .datag (1'b1), .cin (nx45949z10)
                         ) ;
                         
                         defparam ix45949z37204.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix45949z37205 (.sumout (d[5]), .cout (nx45949z10), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[5]), .datae (
                         1'b1), .dataf (b[5]), .datag (1'b1), .cin (nx45949z13)
                         ) ;
                         
                         defparam ix45949z37205.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix45949z37206 (.sumout (d[4]), .cout (nx45949z13), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[4]), .datae (
                         1'b1), .dataf (b[4]), .datag (1'b1), .cin (nx45949z16)
                         ) ;
                         
                         defparam ix45949z37206.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix45949z37207 (.sumout (d[3]), .cout (nx45949z16), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[3]), .datae (
                         1'b1), .dataf (b[3]), .datag (1'b1), .cin (nx45949z19)
                         ) ;
                         
                         defparam ix45949z37207.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix45949z37208 (.sumout (d[2]), .cout (nx45949z19), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[2]), .datae (
                         1'b1), .dataf (b[2]), .datag (1'b1), .cin (nx45949z22)
                         ) ;
                         
                         defparam ix45949z37208.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix45949z37209 (.sumout (d[1]), .cout (nx45949z22), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[1]), .datae (
                         1'b1), .dataf (b[1]), .datag (1'b1), .cin (nx45949z25)
                         ) ;
                         
                         defparam ix45949z37209.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix45949z37210 (.sumout (d[0]), .cout (nx45949z25), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[0]), .datae (
                         1'b1), .dataf (b[0]), .datag (1'b1), .cin (nx45949z28)
                         ) ;
                         
                         defparam ix45949z37210.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix109_buf (.sumout (cout), .dataa (1'b1), .datab (1'b1)
                         , .datac (nx6441z1), .datad (1'b1), .datae (1'b1), .dataf (
                         1'b1), .datag (1'b1), .cin (nx6441z2)) ;
                         
                         defparam ix109_buf.lut_mask = 64'h00000f0f0000f0f0;
    stratixii_lcell_comb ix45949z37201 (.sumout (d[8]), .cout (nx6441z2), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (nx45949z2)
                         , .datae (1'b1), .dataf (b[8]), .datag (1'b1), .cin (
                         nx45949z4)) ;
                         
                         defparam ix45949z37201.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix45949z37203 (.sumout (d[7]), .cout (nx45949z4), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[7]), .datae (
                         1'b1), .dataf (b[7]), .datag (1'b1), .cin (nx45949z7)
                         ) ;
                         
                         defparam ix45949z37203.lut_mask = 64'h000000ff0000ff00;
endmodule


module add_9_1 ( cin, a, b, d, cout ) ;

    input cin ;
    input [8:0]a ;
    input [8:0]b ;
    output [8:0]d ;
    output cout ;

    wire nx45949z28, nx45949z25, nx45949z22, nx45949z19, nx45949z16, nx45949z13, 
         nx45949z10, nx45949z7, nx45949z4, nx45949z3, nx6441z2, nx6441z1;
    wire [81:0] xmplr_dummy ;




    assign nx45949z28 = 0 ;
    assign nx45949z3 = 0 ;
    assign nx6441z1 = 0 ;
    stratixii_lcell_comb ix45949z37204 (.sumout (d[6]), .cout (nx45949z7), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[6]), .datae (
                         1'b1), .dataf (b[6]), .datag (1'b1), .cin (nx45949z10)
                         ) ;
                         
                         defparam ix45949z37204.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix45949z37205 (.sumout (d[5]), .cout (nx45949z10), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[5]), .datae (
                         1'b1), .dataf (b[5]), .datag (1'b1), .cin (nx45949z13)
                         ) ;
                         
                         defparam ix45949z37205.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix45949z37206 (.sumout (d[4]), .cout (nx45949z13), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[4]), .datae (
                         1'b1), .dataf (b[4]), .datag (1'b1), .cin (nx45949z16)
                         ) ;
                         
                         defparam ix45949z37206.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix45949z37207 (.sumout (d[3]), .cout (nx45949z16), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[3]), .datae (
                         1'b1), .dataf (b[3]), .datag (1'b1), .cin (nx45949z19)
                         ) ;
                         
                         defparam ix45949z37207.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix45949z37208 (.sumout (d[2]), .cout (nx45949z19), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[2]), .datae (
                         1'b1), .dataf (b[2]), .datag (1'b1), .cin (nx45949z22)
                         ) ;
                         
                         defparam ix45949z37208.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix45949z37209 (.sumout (d[1]), .cout (nx45949z22), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[1]), .datae (
                         1'b1), .dataf (b[1]), .datag (1'b1), .cin (nx45949z25)
                         ) ;
                         
                         defparam ix45949z37209.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix45949z37210 (.sumout (d[0]), .cout (nx45949z25), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[0]), .datae (
                         1'b1), .dataf (b[0]), .datag (1'b1), .cin (nx45949z28)
                         ) ;
                         
                         defparam ix45949z37210.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix109_buf (.sumout (cout), .dataa (1'b1), .datab (1'b1)
                         , .datac (nx6441z1), .datad (1'b1), .datae (1'b1), .dataf (
                         1'b1), .datag (1'b1), .cin (nx6441z2)) ;
                         
                         defparam ix109_buf.lut_mask = 64'h00000f0f0000f0f0;
    stratixii_lcell_comb ix45949z37201 (.sumout (d[8]), .cout (nx6441z2), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[8]), .datae (
                         1'b1), .dataf (nx45949z3), .datag (1'b1), .cin (
                         nx45949z4)) ;
                         
                         defparam ix45949z37201.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix45949z37203 (.sumout (d[7]), .cout (nx45949z4), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[7]), .datae (
                         1'b1), .dataf (b[7]), .datag (1'b1), .cin (nx45949z7)
                         ) ;
                         
                         defparam ix45949z37203.lut_mask = 64'h000000ff0000ff00;
endmodule


module add_9_0 ( cin, a, b, d, cout, p_r5_7_, p_x_r5_7_, p_validBit_2_, p_r5_6_, 
                 p_x_r5_6_, p_r5_5_, p_x_r5_5_, p_r5_4_, p_x_r5_4_, p_r5_3_, 
                 p_x_r5_3_, p_r5_2_, p_x_r5_2_, p_r5_1_, p_x_r5_1_, p_r5_0_, 
                 p_x_r5_0_ ) ;

    input cin ;
    input [8:0]a ;
    input [8:0]b ;
    output [8:0]d ;
    output cout ;
    input p_r5_7_ ;
    input p_x_r5_7_ ;
    input p_validBit_2_ ;
    input p_r5_6_ ;
    input p_x_r5_6_ ;
    input p_r5_5_ ;
    input p_x_r5_5_ ;
    input p_r5_4_ ;
    input p_x_r5_4_ ;
    input p_r5_3_ ;
    input p_x_r5_3_ ;
    input p_r5_2_ ;
    input p_x_r5_2_ ;
    input p_r5_1_ ;
    input p_x_r5_1_ ;
    input p_r5_0_ ;
    input p_x_r5_0_ ;

    wire nx45949z20, nx45949z18, nx45949z16, nx45949z14, nx45949z12, nx45949z10, 
         nx45949z8, nx45949z6, nx45949z4, nx45949z3, nx6441z2, nx6441z1;
    wire [65:0] xmplr_dummy ;




    assign nx45949z20 = 0 ;
    assign nx45949z3 = 0 ;
    assign nx6441z1 = 0 ;
    stratixii_lcell_comb ix45949z37204 (.sumout (d[6]), .cout (nx45949z6), .dataa (
                         p_validBit_2_), .datab (1'b1), .datac (p_r5_6_), .datad (
                         a[6]), .datae (1'b1), .dataf (p_x_r5_6_), .datag (1'b1)
                         , .cin (nx45949z8)) ;
                         
                         defparam ix45949z37204.lut_mask = 64'h00000a5f0000ff00;
    stratixii_lcell_comb ix45949z37205 (.sumout (d[5]), .cout (nx45949z8), .dataa (
                         p_validBit_2_), .datab (1'b1), .datac (p_r5_5_), .datad (
                         a[5]), .datae (1'b1), .dataf (p_x_r5_5_), .datag (1'b1)
                         , .cin (nx45949z10)) ;
                         
                         defparam ix45949z37205.lut_mask = 64'h00000a5f0000ff00;
    stratixii_lcell_comb ix45949z37206 (.sumout (d[4]), .cout (nx45949z10), .dataa (
                         p_validBit_2_), .datab (1'b1), .datac (p_r5_4_), .datad (
                         a[4]), .datae (1'b1), .dataf (p_x_r5_4_), .datag (1'b1)
                         , .cin (nx45949z12)) ;
                         
                         defparam ix45949z37206.lut_mask = 64'h00000a5f0000ff00;
    stratixii_lcell_comb ix45949z37207 (.sumout (d[3]), .cout (nx45949z12), .dataa (
                         p_validBit_2_), .datab (1'b1), .datac (p_r5_3_), .datad (
                         a[3]), .datae (1'b1), .dataf (p_x_r5_3_), .datag (1'b1)
                         , .cin (nx45949z14)) ;
                         
                         defparam ix45949z37207.lut_mask = 64'h00000a5f0000ff00;
    stratixii_lcell_comb ix45949z37208 (.sumout (d[2]), .cout (nx45949z14), .dataa (
                         p_validBit_2_), .datab (1'b1), .datac (p_r5_2_), .datad (
                         a[2]), .datae (1'b1), .dataf (p_x_r5_2_), .datag (1'b1)
                         , .cin (nx45949z16)) ;
                         
                         defparam ix45949z37208.lut_mask = 64'h00000a5f0000ff00;
    stratixii_lcell_comb ix45949z37209 (.sumout (d[1]), .cout (nx45949z16), .dataa (
                         p_validBit_2_), .datab (1'b1), .datac (p_r5_1_), .datad (
                         a[1]), .datae (1'b1), .dataf (p_x_r5_1_), .datag (1'b1)
                         , .cin (nx45949z18)) ;
                         
                         defparam ix45949z37209.lut_mask = 64'h00000a5f0000ff00;
    stratixii_lcell_comb ix45949z37210 (.sumout (d[0]), .cout (nx45949z18), .dataa (
                         p_validBit_2_), .datab (1'b1), .datac (p_r5_0_), .datad (
                         a[0]), .datae (1'b1), .dataf (p_x_r5_0_), .datag (1'b1)
                         , .cin (nx45949z20)) ;
                         
                         defparam ix45949z37210.lut_mask = 64'h00000a5f0000ff00;
    stratixii_lcell_comb ix109_buf (.sumout (cout), .dataa (1'b1), .datab (1'b1)
                         , .datac (nx6441z1), .datad (1'b1), .datae (1'b1), .dataf (
                         1'b1), .datag (1'b1), .cin (nx6441z2)) ;
                         
                         defparam ix109_buf.lut_mask = 64'h00000f0f0000f0f0;
    stratixii_lcell_comb ix45949z37201 (.sumout (d[8]), .cout (nx6441z2), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[8]), .datae (
                         1'b1), .dataf (nx45949z3), .datag (1'b1), .cin (
                         nx45949z4)) ;
                         
                         defparam ix45949z37201.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix45949z37203 (.sumout (d[7]), .cout (nx45949z4), .dataa (
                         p_validBit_2_), .datab (1'b1), .datac (p_r5_7_), .datad (
                         a[7]), .datae (1'b1), .dataf (p_x_r5_7_), .datag (1'b1)
                         , .cin (nx45949z6)) ;
                         
                         defparam ix45949z37203.lut_mask = 64'h00000a5f0000ff00;
endmodule


module add_8_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [7:0]a ;
    input [7:0]b ;
    output [7:0]d ;
    output cout ;

    wire nx44952z25, nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, 
         nx44952z7, nx44952z4, nx25450z2, nx25450z1;
    wire [73:0] xmplr_dummy ;




    assign nx44952z25 = 0 ;
    assign nx25450z1 = 0 ;
    stratixii_lcell_comb ix98_buf (.sumout (cout), .dataa (1'b1), .datab (1'b1)
                         , .datac (nx25450z1), .datad (1'b1), .datae (1'b1), .dataf (
                         1'b1), .datag (1'b1), .cin (nx25450z2)) ;
                         
                         defparam ix98_buf.lut_mask = 64'h00000f0f0000f0f0;
    stratixii_lcell_comb ix44952z37201 (.sumout (d[7]), .cout (nx25450z2), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[7]), .datae (
                         1'b1), .dataf (b[7]), .datag (1'b1), .cin (nx44952z4)
                         ) ;
                         
                         defparam ix44952z37201.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix44952z37202 (.sumout (d[6]), .cout (nx44952z4), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[6]), .datae (
                         1'b1), .dataf (b[6]), .datag (1'b1), .cin (nx44952z7)
                         ) ;
                         
                         defparam ix44952z37202.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix44952z37203 (.sumout (d[5]), .cout (nx44952z7), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[5]), .datae (
                         1'b1), .dataf (b[5]), .datag (1'b1), .cin (nx44952z10)
                         ) ;
                         
                         defparam ix44952z37203.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix44952z37204 (.sumout (d[4]), .cout (nx44952z10), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[4]), .datae (
                         1'b1), .dataf (b[4]), .datag (1'b1), .cin (nx44952z13)
                         ) ;
                         
                         defparam ix44952z37204.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix44952z37205 (.sumout (d[3]), .cout (nx44952z13), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[3]), .datae (
                         1'b1), .dataf (b[3]), .datag (1'b1), .cin (nx44952z16)
                         ) ;
                         
                         defparam ix44952z37205.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix44952z37206 (.sumout (d[2]), .cout (nx44952z16), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[2]), .datae (
                         1'b1), .dataf (b[2]), .datag (1'b1), .cin (nx44952z19)
                         ) ;
                         
                         defparam ix44952z37206.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix44952z37207 (.sumout (d[1]), .cout (nx44952z19), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[1]), .datae (
                         1'b1), .dataf (b[1]), .datag (1'b1), .cin (nx44952z22)
                         ) ;
                         
                         defparam ix44952z37207.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix44952z37208 (.sumout (d[0]), .cout (nx44952z22), .dataa (
                         1'b1), .datab (1'b1), .datac (1'b1), .datad (a[0]), .datae (
                         1'b1), .dataf (b[0]), .datag (1'b1), .cin (nx44952z25)
                         ) ;
                         
                         defparam ix44952z37208.lut_mask = 64'h000000ff0000ff00;
endmodule


module modgen_counter_8_1 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
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

    wire GND, nx57253z3, nx58250z1, nx57253z1, nx56256z1, nx55259z1, nx54262z1, 
         nx53265z1, nx52268z1, nx51271z1, nx58250z17, nx58250z15, nx58250z13, 
         nx58250z11, nx58250z9, nx58250z7, nx58250z5, nx58250z3, nx58250z2, 
         nx58250z18, nx58250z19;
    wire [115:0] xmplr_dummy ;




    assign GND = 0 ;
    assign nx58250z2 = 0 ;
    assign nx58250z18 = 1 ;
    assign nx58250z19 = 1 ;
    stratixii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .adatasdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    stratixii_lcell_comb ix57253z37201 (.combout (nx57253z3), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (1'b1), .datae (sclear), .dataf (
                         cnt_en), .datag (1'b1), .cin (1'b0)) ;
                         
                         defparam ix57253z37201.lut_mask = 64'hffffffffffff0000;
    stratixii_lcell_comb ix58250z37202 (.sumout (nx57253z1), .cout (nx58250z3), 
                         .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[6]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z5)) ;
                         
                         defparam ix58250z37202.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37203 (.sumout (nx56256z1), .cout (nx58250z5), 
                         .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[5]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z7)) ;
                         
                         defparam ix58250z37203.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37204 (.sumout (nx55259z1), .cout (nx58250z7), 
                         .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[4]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z9)) ;
                         
                         defparam ix58250z37204.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37205 (.sumout (nx54262z1), .cout (nx58250z9), 
                         .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[3]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z11)) ;
                         
                         defparam ix58250z37205.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37206 (.sumout (nx53265z1), .cout (nx58250z11)
                         , .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[2]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z13)) ;
                         
                         defparam ix58250z37206.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37207 (.sumout (nx52268z1), .cout (nx58250z13)
                         , .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[1]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z15)) ;
                         
                         defparam ix58250z37207.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37209 (.cout (nx58250z17), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx58250z18), .datae (1'b1
                         ), .dataf (nx58250z19), .datag (1'b1), .cin (GND)) ;
                         
                         defparam ix58250z37209.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix58250z37208 (.sumout (nx51271z1), .cout (nx58250z15)
                         , .dataa (1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         q[0]), .datae (1'b1), .dataf (nx58250z2), .datag (1'b1)
                         , .cin (nx58250z17)) ;
                         
                         defparam ix58250z37208.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix58250z37201 (.sumout (nx58250z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (q[7]), .datae (1'b1), .dataf (
                         nx58250z2), .datag (1'b1), .cin (nx58250z3)) ;
                         
                         defparam ix58250z37201.lut_mask = 64'h000000ff0000ff00;
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

    wire GND, nx58250z1, nx57253z1, nx56256z1, nx55259z1, nx54262z1, nx53265z1, 
         nx52268z1, nx51271z1, nx58250z17, nx58250z15, nx58250z13, nx58250z11, 
         nx58250z9, nx58250z7, nx58250z5, nx58250z3, nx58250z2, nx58250z18, 
         nx58250z19;
    wire [105:0] xmplr_dummy ;




    assign GND = 0 ;
    assign nx58250z2 = 0 ;
    assign nx58250z18 = 1 ;
    assign nx58250z19 = 1 ;
    stratixii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .adatasdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .adatasdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .adatasdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .adatasdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .adatasdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .adatasdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .adatasdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    stratixii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .adatasdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    stratixii_lcell_comb ix58250z37202 (.sumout (nx57253z1), .cout (nx58250z3), 
                         .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[6]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z5)) ;
                         
                         defparam ix58250z37202.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37203 (.sumout (nx56256z1), .cout (nx58250z5), 
                         .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[5]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z7)) ;
                         
                         defparam ix58250z37203.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37204 (.sumout (nx55259z1), .cout (nx58250z7), 
                         .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[4]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z9)) ;
                         
                         defparam ix58250z37204.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37205 (.sumout (nx54262z1), .cout (nx58250z9), 
                         .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[3]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z11)) ;
                         
                         defparam ix58250z37205.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37206 (.sumout (nx53265z1), .cout (nx58250z11)
                         , .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[2]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z13)) ;
                         
                         defparam ix58250z37206.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37207 (.sumout (nx52268z1), .cout (nx58250z13)
                         , .dataa (nx58250z2), .datab (1'b1), .datac (1'b1), .datad (
                         q[1]), .datae (1'b1), .dataf (1'b1), .datag (1'b1), .cin (
                         nx58250z15)) ;
                         
                         defparam ix58250z37207.lut_mask = 64'h000055550000ff00;
    stratixii_lcell_comb ix58250z37209 (.cout (nx58250z17), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx58250z18), .datae (1'b1
                         ), .dataf (nx58250z19), .datag (1'b1), .cin (GND)) ;
                         
                         defparam ix58250z37209.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix58250z37208 (.sumout (nx51271z1), .cout (nx58250z15)
                         , .dataa (1'b1), .datab (1'b1), .datac (1'b1), .datad (
                         q[0]), .datae (1'b1), .dataf (nx58250z2), .datag (1'b1)
                         , .cin (nx58250z17)) ;
                         
                         defparam ix58250z37208.lut_mask = 64'h000000ff0000ff00;
    stratixii_lcell_comb ix58250z37201 (.sumout (nx58250z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (q[7]), .datae (1'b1), .dataf (
                         nx58250z2), .datag (1'b1), .cin (nx58250z3)) ;
                         
                         defparam ix58250z37201.lut_mask = 64'h000000ff0000ff00;
endmodule

