VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL RA_OUT(1:0)
        SIGNAL XLXN_122(1:0)
        SIGNAL XLXN_47(3:0)
        SIGNAL XLXN_124
        SIGNAL WB_OP
        SIGNAL WB_DATA_OUT(7:0)
        SIGNAL XLXN_127(7:0)
        SIGNAL XLXN_93(1:0)
        SIGNAL XLXN_129(1:0)
        SIGNAL XLXN_94(1:0)
        SIGNAL XLXN_131(1:0)
        SIGNAL RD_DATA_1(7:0)
        SIGNAL RD_DATA_2(7:0)
        SIGNAL XLXN_134(7:0)
        SIGNAL ALU_MODE(2:0)
        SIGNAL ALU_IN_2(7:0)
        SIGNAL XLXN_103(1:0)
        SIGNAL XLXN_138(1:0)
        SIGNAL INSTR(7:0)
        SIGNAL XLXN_140
        SIGNAL XLXN_141
        SIGNAL XLXN_142
        SIGNAL CLK
        SIGNAL RST
        SIGNAL XLXN_109(7:0)
        SIGNAL INPUT_PORT(7:0)
        SIGNAL OUTPUT_PORT(7:0)
        SIGNAL ALU_IN_1(7:0)
        SIGNAL FWD(7:0)
        SIGNAL XLXN_150(7:0)
        SIGNAL XLXN_114(7:0)
        SIGNAL XLXN_152(7:0)
        SIGNAL XLXN_120
        SIGNAL WB_OP_INBETWEEN
        SIGNAL XLXN_115
        SIGNAL XLXN_156
        SIGNAL XLXN_157
        SIGNAL PC_OUT(7:0)
        SIGNAL XLXN_160
        PORT Output RA_OUT(1:0)
        PORT Output WB_OP
        PORT Output WB_DATA_OUT(7:0)
        PORT Output RD_DATA_1(7:0)
        PORT Output RD_DATA_2(7:0)
        PORT Output ALU_MODE(2:0)
        PORT Output ALU_IN_2(7:0)
        PORT Input INSTR(7:0)
        PORT Input CLK
        PORT Input RST
        PORT Input INPUT_PORT(7:0)
        PORT Output OUTPUT_PORT(7:0)
        PORT Output ALU_IN_1(7:0)
        PORT Output FWD(7:0)
        PORT Output PC_OUT(7:0)
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2014 2 19 0 56 49
            RECTANGLE N 64 -320 320 0 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -288 384 -288 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF ID_EX_Buffer
            TIMESTAMP 2014 3 5 0 19 24
            LINE N 448 -352 512 -352 
            RECTANGLE N 448 -28 512 -4 
            LINE N 448 -16 512 -16 
            RECTANGLE N 448 36 512 60 
            LINE N 448 48 512 48 
            LINE N 64 576 0 576 
            RECTANGLE N 0 100 64 124 
            LINE N 64 112 0 112 
            RECTANGLE N 0 36 64 60 
            LINE N 64 48 0 48 
            RECTANGLE N 0 -28 64 -4 
            LINE N 64 -16 0 -16 
            RECTANGLE N 0 -204 64 -180 
            LINE N 64 -192 0 -192 
            RECTANGLE N 448 196 512 220 
            LINE N 448 208 512 208 
            RECTANGLE N 448 100 512 124 
            LINE N 448 112 512 112 
            RECTANGLE N 0 -252 64 -228 
            LINE N 64 -240 0 -240 
            RECTANGLE N 64 -384 448 608 
            LINE N 448 336 512 336 
            RECTANGLE N 0 452 64 476 
            LINE N 64 464 0 464 
            RECTANGLE N 0 164 64 188 
            LINE N 64 176 0 176 
            LINE N 448 -304 512 -304 
            LINE N 448 -256 512 -256 
        END BLOCKDEF
        BEGIN BLOCKDEF register_file
            TIMESTAMP 2014 2 18 22 43 43
            RECTANGLE N 64 -448 400 0 
            LINE N 64 -416 0 -416 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 400 -428 464 -404 
            LINE N 400 -416 464 -416 
            RECTANGLE N 400 -44 464 -20 
            LINE N 400 -32 464 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF IF_ID_Buffer
            TIMESTAMP 2014 2 26 0 10 55
            RECTANGLE N 0 20 64 44 
            LINE N 64 32 0 32 
            LINE N 64 400 0 400 
            RECTANGLE N 320 148 384 172 
            LINE N 320 160 384 160 
            RECTANGLE N 320 100 384 124 
            LINE N 320 112 384 112 
            RECTANGLE N 320 -92 384 -68 
            LINE N 320 -80 384 -80 
            RECTANGLE N 64 -256 320 464 
            RECTANGLE N 0 -252 64 -228 
            LINE N 64 -240 0 -240 
            LINE N 316 -208 380 -208 
            RECTANGLE N 320 -220 384 -196 
        END BLOCKDEF
        BEGIN BLOCKDEF EX_MEM_Buffer
            TIMESTAMP 2014 3 4 23 28 23
            RECTANGLE N 0 84 64 108 
            LINE N 64 96 0 96 
            LINE N 64 -112 0 -112 
            LINE N 64 512 0 512 
            RECTANGLE N 0 244 64 268 
            LINE N 64 256 0 256 
            RECTANGLE N 400 244 464 268 
            LINE N 400 256 464 256 
            RECTANGLE N 400 84 464 108 
            LINE N 400 96 464 96 
            LINE N 400 -112 464 -112 
            LINE N 64 -208 0 -208 
            RECTANGLE N 64 -256 400 632 
            RECTANGLE N 400 -220 464 -196 
            LINE N 400 -208 464 -208 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2_8bit
            TIMESTAMP 2014 3 5 0 54 29
            LINE N 64 -240 64 -48 
            LINE N 64 -240 224 -208 
            LINE N 64 -48 224 -80 
            RECTANGLE N 0 -204 64 -180 
            LINE N 64 -192 0 -192 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 224 -156 288 -132 
            LINE N 224 -144 288 -144 
            LINE N 224 -208 224 -80 
            LINE N 144 -64 144 0 
        END BLOCKDEF
        BEGIN BLOCKDEF PC
            TIMESTAMP 2014 3 5 1 59 2
            RECTANGLE N 64 -576 352 0 
            RECTANGLE N 352 -332 416 -308 
            LINE N 416 -320 352 -320 
            LINE N 64 -32 0 -32 
            LINE N 64 -544 0 -544 
            LINE N 64 -176 0 -176 
            LINE N 64 -112 0 -112 
            LINE N 64 -336 0 -336 
            LINE N 64 -272 0 -272 
            RECTANGLE N 0 -412 64 -388 
            LINE N 64 -400 0 -400 
            LINE N 64 -464 0 -464 
        END BLOCKDEF
        BEGIN BLOCK XLXI_19 PC
            PIN PC_OUT(7:0) PC_OUT(7:0)
            PIN clk CLK
            PIN rst RST
            PIN EN
            PIN DIS
            PIN LR_goto
            PIN LR_rtrn
            PIN PC_IN(7:0)
            PIN BR
        END BLOCK
        BEGIN BLOCK XLXI_11 register_file
            PIN wr_enable WB_OP
            PIN clk CLK
            PIN rst RST
            PIN rd_index1(1:0) XLXN_94(1:0)
            PIN rd_index2(1:0) XLXN_93(1:0)
            PIN wr_index(1:0) RA_OUT(1:0)
            PIN wr_data(7:0) WB_DATA_OUT(7:0)
            PIN rd_data1(7:0) RD_DATA_1(7:0)
            PIN rd_data2(7:0) RD_DATA_2(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_10 ID_EX_Buffer
            PIN clk CLK
            PIN opcode_in(3:0) XLXN_47(3:0)
            PIN data1_in(7:0) RD_DATA_1(7:0)
            PIN data2_in(7:0) RD_DATA_2(7:0)
            PIN ra_in(1:0) XLXN_94(1:0)
            PIN input_port_in(7:0) XLXN_109(7:0)
            PIN mem_op
            PIN data1_out(7:0) ALU_IN_1(7:0)
            PIN data2_out(7:0) ALU_IN_2(7:0)
            PIN ra_out(1:0) XLXN_103(1:0)
            PIN alu_mode_out(2:0) ALU_MODE(2:0)
            PIN use_memory XLXN_115
            PIN FWD_IN(7:0) FWD(7:0)
            PIN rb_in(1:0) XLXN_93(1:0)
            PIN io_op XLXN_120
            PIN wb_op WB_OP_INBETWEEN
        END BLOCK
        BEGIN BLOCK XLXI_13 IF_ID_Buffer
            PIN clk CLK
            PIN instr_in(7:0) INSTR(7:0)
            PIN ra(1:0) XLXN_94(1:0)
            PIN rb(1:0) XLXN_93(1:0)
            PIN opcode(3:0) XLXN_47(3:0)
            PIN input_port(7:0) INPUT_PORT(7:0)
            PIN input_port_out(7:0) XLXN_109(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_9 ALU
            PIN clk CLK
            PIN rst RST
            PIN in1(7:0) ALU_IN_1(7:0)
            PIN in2(7:0) ALU_IN_2(7:0)
            PIN alu_mode(2:0) ALU_MODE(2:0)
            PIN z_flag
            PIN n_flag
            PIN result(7:0) XLXN_114(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_14 EX_MEM_Buffer
            PIN wb_op_in WB_OP_INBETWEEN
            PIN io_op_in XLXN_120
            PIN clk CLK
            PIN result_in(7:0) FWD(7:0)
            PIN ra_in(1:0) XLXN_103(1:0)
            PIN wb_op_out WB_OP
            PIN result_out(7:0) WB_DATA_OUT(7:0)
            PIN ra_out(1:0) RA_OUT(1:0)
            PIN output_port(7:0) OUTPUT_PORT(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_18 MUX2_8bit
            PIN in0(7:0) XLXN_114(7:0)
            PIN in1(7:0)
            PIN o(7:0) FWD(7:0)
            PIN s XLXN_115
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN BRANCH RA_OUT(1:0)
            WIRE 1808 2208 1856 2208
            WIRE 1808 2208 1808 2720
            WIRE 1808 2720 4896 2720
            WIRE 4896 2720 5040 2720
            WIRE 4816 2048 4896 2048
            WIRE 4896 2048 4896 2720
        END BRANCH
        BEGIN INSTANCE XLXI_11 1856 2304 R0
        END INSTANCE
        BEGIN BRANCH XLXN_47(3:0)
            WIRE 1472 1840 2624 1840
            WIRE 2624 1808 2624 1840
            WIRE 2624 1808 2704 1808
        END BRANCH
        BEGIN BRANCH WB_OP
            WIRE 1776 1888 1856 1888
            WIRE 1776 1888 1776 2752
            WIRE 1776 2752 4976 2752
            WIRE 4976 2752 4976 2832
            WIRE 4816 1680 4976 1680
            WIRE 4976 1680 4976 2752
        END BRANCH
        BEGIN BRANCH WB_DATA_OUT(7:0)
            WIRE 1840 2272 1856 2272
            WIRE 1840 2272 1840 2688
            WIRE 1840 2688 4944 2688
            WIRE 4816 1888 4944 1888
            WIRE 4944 1888 4944 2640
            WIRE 4944 2640 4944 2688
            WIRE 4944 2640 5040 2640
        END BRANCH
        BEGIN INSTANCE XLXI_10 2704 2000 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_13 1088 1920 R0
        END INSTANCE
        BEGIN BRANCH XLXN_93(1:0)
            WIRE 1472 2080 1552 2080
            WIRE 1552 2080 1552 2144
            WIRE 1552 2144 1856 2144
            WIRE 1552 2144 1552 2416
            WIRE 1552 2416 2640 2416
            WIRE 2640 2176 2704 2176
            WIRE 2640 2176 2640 2416
        END BRANCH
        BEGIN BRANCH XLXN_94(1:0)
            WIRE 1472 2032 1680 2032
            WIRE 1680 2032 1680 2080
            WIRE 1680 2080 1856 2080
            WIRE 1680 2080 1680 2368
            WIRE 1680 2368 2560 2368
            WIRE 2560 2112 2704 2112
            WIRE 2560 2112 2560 2368
        END BRANCH
        BEGIN BRANCH RD_DATA_1(7:0)
            WIRE 2320 1888 2384 1888
            WIRE 2384 1888 2512 1888
            WIRE 2512 1888 2512 1984
            WIRE 2512 1984 2704 1984
            WIRE 2384 1600 2384 1888
        END BRANCH
        BEGIN BRANCH RD_DATA_2(7:0)
            WIRE 2320 2272 2512 2272
            WIRE 2464 1616 2480 1616
            WIRE 2464 1616 2464 2048
            WIRE 2464 2048 2512 2048
            WIRE 2512 2048 2512 2272
            WIRE 2512 2048 2704 2048
        END BRANCH
        BEGIN BRANCH ALU_MODE(2:0)
            WIRE 3216 2112 3376 2112
            WIRE 3376 2112 3424 2112
            WIRE 3376 2112 3376 2176
            WIRE 3376 2176 3392 2176
        END BRANCH
        BEGIN BRANCH ALU_IN_2(7:0)
            WIRE 3216 2048 3392 2048
            WIRE 3392 2048 3424 2048
            WIRE 3392 1328 3392 2048
        END BRANCH
        BEGIN INSTANCE XLXI_9 3424 2144 R0
        END INSTANCE
        BEGIN BRANCH XLXN_103(1:0)
            WIRE 3216 2208 4288 2208
            WIRE 4288 2048 4352 2048
            WIRE 4288 2048 4288 2208
        END BRANCH
        BEGIN BRANCH INSTR(7:0)
            WIRE 1056 1952 1088 1952
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 176 2576 208 2576
            WIRE 208 2576 1072 2576
            WIRE 1072 2576 1632 2576
            WIRE 1632 2576 2688 2576
            WIRE 2688 2576 2704 2576
            WIRE 2688 2576 2688 2656
            WIRE 2688 2656 3280 2656
            WIRE 3280 2656 4352 2656
            WIRE 208 2224 208 2560
            WIRE 208 2560 208 2576
            WIRE 1072 2320 1088 2320
            WIRE 1072 2320 1072 2576
            WIRE 1632 1952 1856 1952
            WIRE 1632 1952 1632 2576
            WIRE 3280 1856 3424 1856
            WIRE 3280 1856 3280 2656
            WIRE 4352 2304 4352 2656
        END BRANCH
        BEGIN BRANCH RST
            WIRE 112 1424 144 1424
            WIRE 144 1424 1728 1424
            WIRE 1728 1424 1728 2016
            WIRE 1728 2016 1856 2016
            WIRE 1728 1424 3424 1424
            WIRE 3424 1424 3424 1920
            WIRE 144 1424 144 1712
            WIRE 144 1712 208 1712
        END BRANCH
        BEGIN BRANCH XLXN_109(7:0)
            WIRE 1472 1712 2624 1712
            WIRE 2624 1712 2624 1760
            WIRE 2624 1760 2704 1760
        END BRANCH
        BEGIN BRANCH INPUT_PORT(7:0)
            WIRE 1056 1680 1088 1680
        END BRANCH
        BEGIN BRANCH OUTPUT_PORT(7:0)
            WIRE 4816 1584 4832 1584
            WIRE 4832 1584 4992 1584
        END BRANCH
        BEGIN INSTANCE XLXI_14 4352 1792 R0
        END INSTANCE
        BEGIN BRANCH ALU_IN_1(7:0)
            WIRE 3216 1984 3248 1984
            WIRE 3248 1984 3424 1984
            WIRE 3248 1328 3248 1984
        END BRANCH
        BEGIN BRANCH FWD(7:0)
            WIRE 2608 2464 2704 2464
            WIRE 2608 2464 2608 2896
            WIRE 2608 2896 4240 2896
            WIRE 4240 2896 4288 2896
            WIRE 4176 1888 4240 1888
            WIRE 4240 1888 4352 1888
            WIRE 4240 1888 4240 2896
        END BRANCH
        BEGIN BRANCH XLXN_114(7:0)
            WIRE 3808 2112 3824 2112
            WIRE 3824 1840 3888 1840
            WIRE 3824 1840 3824 2112
        END BRANCH
        BEGIN BRANCH XLXN_120
            WIRE 3216 1696 3568 1696
            WIRE 3568 1584 3568 1696
            WIRE 3568 1584 4352 1584
        END BRANCH
        BEGIN BRANCH WB_OP_INBETWEEN
            WIRE 3216 1744 3792 1744
            WIRE 3792 1680 3792 1744
            WIRE 3792 1680 4352 1680
        END BRANCH
        BEGIN INSTANCE XLXI_18 3888 2032 R0
        END INSTANCE
        BEGIN BRANCH XLXN_115
            WIRE 3216 2336 3360 2336
            WIRE 3360 2336 4032 2336
            WIRE 4032 2032 4032 2336
        END BRANCH
        IOMARKER 1056 1952 INSTR(7:0) R180 28
        IOMARKER 2384 1600 RD_DATA_1(7:0) R270 28
        IOMARKER 1056 1680 INPUT_PORT(7:0) R180 28
        IOMARKER 3392 2176 ALU_MODE(2:0) R0 28
        IOMARKER 3248 1328 ALU_IN_1(7:0) R270 28
        IOMARKER 3392 1328 ALU_IN_2(7:0) R270 28
        IOMARKER 4288 2896 FWD(7:0) R0 28
        IOMARKER 2480 1616 RD_DATA_2(7:0) R0 28
        IOMARKER 5040 2640 WB_DATA_OUT(7:0) R0 28
        IOMARKER 4976 2832 WB_OP R90 28
        IOMARKER 5040 2720 RA_OUT(1:0) R0 28
        IOMARKER 4992 1584 OUTPUT_PORT(7:0) R0 28
        BEGIN INSTANCE XLXI_19 208 2256 R0
        END INSTANCE
        IOMARKER 112 1424 RST R180 28
        IOMARKER 176 2576 CLK R180 28
        BEGIN BRANCH PC_OUT(7:0)
            WIRE 624 1936 640 1936
            WIRE 640 1936 688 1936
            WIRE 688 1776 688 1936
        END BRANCH
        IOMARKER 688 1776 PC_OUT(7:0) R270 28
    END SHEET
END SCHEMATIC
