VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL OPCODE(3:0)
        SIGNAL WB_EN
        SIGNAL WB_DATA(7:0)
        SIGNAL ra_in(1:0)
        SIGNAL REG_RD_1(7:0)
        SIGNAL ALU_MODE(2:0)
        SIGNAL DATA_2(7:0)
        SIGNAL XLXN_103(1:0)
        SIGNAL INSTR(7:0)
        SIGNAL CLK
        SIGNAL XLXN_109(7:0)
        SIGNAL INPUT_PORT(7:0)
        SIGNAL OUTPUT_PORT(7:0)
        SIGNAL DATA_1(7:0)
        SIGNAL EX_RESULT(7:0)
        SIGNAL XLXN_114(7:0)
        SIGNAL XLXN_120
        SIGNAL WB_OP_INBETWEEN
        SIGNAL XLXN_115
        SIGNAL PC_OUT(7:0)
        SIGNAL XLXN_199(1:0)
        SIGNAL REG_RD_2(7:0)
        SIGNAL PC_DIS
        SIGNAL PC_LR_RTRN
        SIGNAL RST
        SIGNAL XLXN_208
        SIGNAL XLXN_209
        SIGNAL XLXN_212
        SIGNAL PC_LR_GOTO
        SIGNAL PC_EN
        SIGNAL WB_REG(1:0)
        SIGNAL PC_BR
        PORT Output OPCODE(3:0)
        PORT Output WB_EN
        PORT Output WB_DATA(7:0)
        PORT Output ra_in(1:0)
        PORT Output REG_RD_1(7:0)
        PORT Output ALU_MODE(2:0)
        PORT Output DATA_2(7:0)
        PORT Output INSTR(7:0)
        PORT Input CLK
        PORT Input INPUT_PORT(7:0)
        PORT Output OUTPUT_PORT(7:0)
        PORT Output DATA_1(7:0)
        PORT Output EX_RESULT(7:0)
        PORT Output PC_OUT(7:0)
        PORT Output REG_RD_2(7:0)
        PORT Output PC_DIS
        PORT Output PC_LR_RTRN
        PORT Input RST
        PORT Output PC_LR_GOTO
        PORT Output PC_EN
        PORT Output WB_REG(1:0)
        PORT Output PC_BR
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2014 3 12 0 16 47
            RECTANGLE N 64 -320 320 36 
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
            LINE N 64 -304 0 -304 
            LINE N 64 16 0 16 
        END BLOCKDEF
        BEGIN BLOCKDEF ID_EX_Buffer
            TIMESTAMP 2014 3 12 0 18 54
            LINE N 64 624 0 624 
            LINE N 64 672 0 672 
            LINE N 448 624 512 624 
            LINE N 448 672 512 672 
            LINE N 448 720 512 720 
            LINE N 448 -352 512 -352 
            RECTANGLE N 448 -28 512 -4 
            LINE N 448 -16 512 -16 
            RECTANGLE N 448 36 512 60 
            LINE N 448 48 512 48 
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
            LINE N 448 336 512 336 
            RECTANGLE N 0 452 64 476 
            LINE N 64 464 0 464 
            RECTANGLE N 0 164 64 188 
            LINE N 64 176 0 176 
            LINE N 448 -304 512 -304 
            LINE N 448 -256 512 -256 
            RECTANGLE N 64 -384 448 752 
            LINE N 64 -352 0 -352 
            LINE N 64 736 0 736 
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
            TIMESTAMP 2014 3 11 22 40 6
            LINE N 320 448 384 448 
            RECTANGLE N 0 20 64 44 
            LINE N 64 32 0 32 
            LINE N 64 400 0 400 
            RECTANGLE N 320 148 384 172 
            LINE N 320 160 384 160 
            RECTANGLE N 320 100 384 124 
            LINE N 320 112 384 112 
            RECTANGLE N 320 -92 384 -68 
            LINE N 320 -80 384 -80 
            RECTANGLE N 0 -252 64 -228 
            LINE N 64 -240 0 -240 
            LINE N 316 -208 380 -208 
            RECTANGLE N 320 -220 384 -196 
            RECTANGLE N 64 -256 320 480 
            LINE N 320 336 384 336 
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
            TIMESTAMP 2014 3 11 22 41 54
            RECTANGLE N 64 -576 352 0 
            RECTANGLE N 352 -332 416 -308 
            LINE N 416 -320 352 -320 
            LINE N 64 -32 0 -32 
            LINE N 64 -544 0 -544 
            LINE N 64 -112 0 -112 
            LINE N 64 -336 0 -336 
            RECTANGLE N 0 -412 64 -388 
            LINE N 64 -400 0 -400 
            LINE N 64 -464 0 -464 
            LINE N 64 -176 0 -176 
            LINE N 64 -256 0 -256 
        END BLOCKDEF
        BEGIN BLOCKDEF Memory
            TIMESTAMP 2014 3 11 22 9 4
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_19 PC
            PIN PC_OUT(7:0) PC_OUT(7:0)
            PIN clk CLK
            PIN rst RST
            PIN DIS PC_DIS
            PIN LR_goto PC_LR_GOTO
            PIN PC_IN(7:0) DATA_2(7:0)
            PIN BR PC_BR
            PIN LR_rtrn PC_LR_RTRN
            PIN EN PC_EN
        END BLOCK
        BEGIN BLOCK XLXI_11 register_file
            PIN wr_enable WB_EN
            PIN clk CLK
            PIN rst RST
            PIN rd_index1(1:0) ra_in(1:0)
            PIN rd_index2(1:0) XLXN_199(1:0)
            PIN wr_index(1:0) WB_REG(1:0)
            PIN wr_data(7:0) WB_DATA(7:0)
            PIN rd_data1(7:0) REG_RD_1(7:0)
            PIN rd_data2(7:0) REG_RD_2(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_10 ID_EX_Buffer
            PIN opcode_in(3:0) OPCODE(3:0)
            PIN data1_in(7:0) REG_RD_1(7:0)
            PIN data2_in(7:0) REG_RD_2(7:0)
            PIN ra_in(1:0) ra_in(1:0)
            PIN rb_in(1:0) XLXN_199(1:0)
            PIN input_port_in(7:0) XLXN_109(7:0)
            PIN FWD_IN(7:0) EX_RESULT(7:0)
            PIN mem_op
            PIN io_op XLXN_120
            PIN wb_op WB_OP_INBETWEEN
            PIN use_memory XLXN_115
            PIN data1_out(7:0) DATA_1(7:0)
            PIN data2_out(7:0) DATA_2(7:0)
            PIN ra_out(1:0) XLXN_103(1:0)
            PIN alu_mode_out(2:0) ALU_MODE(2:0)
            PIN z_in XLXN_208
            PIN n_in XLXN_209
            PIN br PC_BR
            PIN lr_goto PC_LR_GOTO
            PIN pc_en PC_EN
            PIN rst RST
            PIN clk CLK
        END BLOCK
        BEGIN BLOCK XLXI_13 IF_ID_Buffer
            PIN clk CLK
            PIN instr_in(7:0) INSTR(7:0)
            PIN input_port(7:0) INPUT_PORT(7:0)
            PIN DIS PC_DIS
            PIN ra(1:0) ra_in(1:0)
            PIN rb(1:0) XLXN_199(1:0)
            PIN opcode(3:0) OPCODE(3:0)
            PIN input_port_out(7:0) XLXN_109(7:0)
            PIN lr_rtrn PC_LR_RTRN
        END BLOCK
        BEGIN BLOCK XLXI_9 ALU
            PIN in1(7:0) DATA_1(7:0)
            PIN in2(7:0) DATA_2(7:0)
            PIN alu_mode(2:0) ALU_MODE(2:0)
            PIN z_flag XLXN_208
            PIN n_flag XLXN_209
            PIN result(7:0) XLXN_114(7:0)
            PIN rst RST
            PIN clk CLK
        END BLOCK
        BEGIN BLOCK XLXI_14 EX_MEM_Buffer
            PIN wb_op_in WB_OP_INBETWEEN
            PIN io_op_in XLXN_120
            PIN clk CLK
            PIN result_in(7:0) EX_RESULT(7:0)
            PIN ra_in(1:0) XLXN_103(1:0)
            PIN wb_op_out WB_EN
            PIN result_out(7:0) WB_DATA(7:0)
            PIN ra_out(1:0) WB_REG(1:0)
            PIN output_port(7:0) OUTPUT_PORT(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_18 MUX2_8bit
            PIN in0(7:0) XLXN_114(7:0)
            PIN in1(7:0)
            PIN o(7:0) EX_RESULT(7:0)
            PIN s XLXN_115
        END BLOCK
        BEGIN BLOCK XLXI_20 Memory
            PIN addr(7:0) PC_OUT(7:0)
            PIN dout(7:0) INSTR(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN INSTANCE XLXI_11 1856 2304 R0
        END INSTANCE
        BEGIN BRANCH OPCODE(3:0)
            WIRE 1472 1840 2224 1840
            WIRE 2192 1072 2224 1072
            WIRE 2224 1072 2224 1808
            WIRE 2224 1808 2704 1808
            WIRE 2224 1808 2224 1840
        END BRANCH
        BEGIN BRANCH WB_DATA(7:0)
            WIRE 1840 2272 1856 2272
            WIRE 1840 2272 1840 3168
            WIRE 1840 3168 5328 3168
            WIRE 5024 1888 5328 1888
            WIRE 5328 1888 5328 2624
            WIRE 5328 2624 5328 3168
            WIRE 5280 2624 5328 2624
            WIRE 5280 2624 5280 2640
        END BRANCH
        BEGIN INSTANCE XLXI_10 2704 2000 R0
        END INSTANCE
        BEGIN BRANCH ra_in(1:0)
            WIRE 1472 2032 1680 2032
            WIRE 1680 2032 1680 2080
            WIRE 1680 2080 1856 2080
            WIRE 1680 2080 1680 2368
            WIRE 1680 2368 2560 2368
            WIRE 2560 1264 2560 2112
            WIRE 2560 2112 2704 2112
            WIRE 2560 2112 2560 2368
            WIRE 2560 1264 2656 1264
        END BRANCH
        BEGIN BRANCH REG_RD_1(7:0)
            WIRE 2320 1888 2384 1888
            WIRE 2384 1888 2512 1888
            WIRE 2512 1888 2512 1984
            WIRE 2512 1984 2704 1984
            WIRE 2384 1152 2384 1888
        END BRANCH
        BEGIN BRANCH ALU_MODE(2:0)
            WIRE 3216 2112 3360 2112
            WIRE 3360 2112 3360 2288
            WIRE 3360 2288 3376 2288
            WIRE 3360 2112 3424 2112
        END BRANCH
        BEGIN BRANCH DATA_2(7:0)
            WIRE 16 1360 16 1872
            WIRE 16 1872 192 1872
            WIRE 16 1360 3392 1360
            WIRE 3392 1360 3392 2048
            WIRE 3392 2048 3424 2048
            WIRE 3216 2048 3392 2048
            WIRE 3392 1328 3392 1360
        END BRANCH
        BEGIN INSTANCE XLXI_9 3424 2144 R0
        END INSTANCE
        BEGIN BRANCH XLXN_103(1:0)
            WIRE 3216 2208 3232 2208
            WIRE 3232 2208 3232 2416
            WIRE 3232 2416 4512 2416
            WIRE 4512 2048 4560 2048
            WIRE 4512 2048 4512 2416
        END BRANCH
        BEGIN BRANCH INSTR(7:0)
            WIRE 752 1616 752 1840
            WIRE 752 1840 1072 1840
            WIRE 1072 1840 1072 1952
            WIRE 1072 1952 1088 1952
            WIRE 1056 1952 1072 1952
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
            WIRE 5024 1584 5072 1584
        END BRANCH
        BEGIN BRANCH DATA_1(7:0)
            WIRE 3216 1984 3296 1984
            WIRE 3296 1984 3424 1984
            WIRE 3296 1328 3296 1984
        END BRANCH
        BEGIN BRANCH EX_RESULT(7:0)
            WIRE 2608 2464 2704 2464
            WIRE 2608 2464 2608 3072
            WIRE 2608 3072 4240 3072
            WIRE 4208 2096 4240 2096
            WIRE 4240 2096 4240 2896
            WIRE 4240 2896 4288 2896
            WIRE 4240 2896 4240 3072
            WIRE 4240 1888 4560 1888
            WIRE 4240 1888 4240 2096
        END BRANCH
        BEGIN BRANCH XLXN_114(7:0)
            WIRE 3808 2112 3824 2112
            WIRE 3824 2048 3824 2112
            WIRE 3824 2048 3920 2048
        END BRANCH
        BEGIN BRANCH WB_OP_INBETWEEN
            WIRE 3216 1744 3504 1744
            WIRE 3504 1680 3504 1744
            WIRE 3504 1680 4560 1680
        END BRANCH
        BEGIN BRANCH XLXN_115
            WIRE 3216 2336 4064 2336
            WIRE 4064 2240 4064 2336
        END BRANCH
        IOMARKER 1056 1680 INPUT_PORT(7:0) R180 28
        IOMARKER 3392 1328 DATA_2(7:0) R270 28
        IOMARKER 4288 2896 EX_RESULT(7:0) R0 28
        BEGIN INSTANCE XLXI_20 672 1984 R0
        END INSTANCE
        BEGIN BRANCH PC_OUT(7:0)
            WIRE 608 1952 640 1952
            WIRE 640 1952 672 1952
            WIRE 640 1808 640 1952
        END BRANCH
        BEGIN INSTANCE XLXI_19 192 2272 R0
        END INSTANCE
        IOMARKER 640 1808 PC_OUT(7:0) R270 28
        IOMARKER 752 1616 INSTR(7:0) R270 28
        BEGIN INSTANCE XLXI_18 3920 2240 R0
        END INSTANCE
        IOMARKER 2656 1264 ra_in(1:0) R0 28
        BEGIN BRANCH CLK
            WIRE 192 2240 192 2576
            WIRE 192 2576 544 2576
            WIRE 544 2576 1072 2576
            WIRE 1072 2576 1632 2576
            WIRE 1632 2576 1632 2912
            WIRE 1632 2912 2704 2912
            WIRE 2704 2912 3392 2912
            WIRE 3392 2912 3920 2912
            WIRE 544 2576 544 2672
            WIRE 480 2672 544 2672
            WIRE 1072 2320 1072 2576
            WIRE 1072 2320 1088 2320
            WIRE 1632 1952 1856 1952
            WIRE 1632 1952 1632 2576
            WIRE 2704 2736 2704 2912
            WIRE 3392 2160 3424 2160
            WIRE 3392 2160 3392 2912
            WIRE 3920 2304 3920 2912
            WIRE 3920 2304 4560 2304
        END BRANCH
        BEGIN INSTANCE XLXI_13 1088 1920 R0
        END INSTANCE
        BEGIN BRANCH XLXN_199(1:0)
            WIRE 1472 2080 1648 2080
            WIRE 1648 2080 1648 2144
            WIRE 1648 2144 1648 2432
            WIRE 1648 2432 2592 2432
            WIRE 1648 2144 1856 2144
            WIRE 2592 2176 2704 2176
            WIRE 2592 2176 2592 2432
        END BRANCH
        BEGIN BRANCH REG_RD_2(7:0)
            WIRE 2320 2272 2464 2272
            WIRE 2464 1152 2464 2048
            WIRE 2464 2048 2464 2272
            WIRE 2464 2048 2704 2048
            WIRE 2464 1152 2528 1152
        END BRANCH
        IOMARKER 2528 1152 REG_RD_2(7:0) R0 28
        BEGIN BRANCH PC_DIS
            WIRE 176 2160 192 2160
            WIRE 176 2160 176 2480
            WIRE 176 2480 448 2480
            WIRE 448 2480 1472 2480
            WIRE 448 2384 464 2384
            WIRE 448 2384 448 2480
            WIRE 1472 2368 1472 2480
        END BRANCH
        IOMARKER 464 2384 PC_DIS R0 28
        BEGIN BRANCH PC_LR_RTRN
            WIRE 64 2096 64 2544
            WIRE 64 2544 832 2544
            WIRE 832 2544 1536 2544
            WIRE 832 2544 832 2672
            WIRE 832 2672 896 2672
            WIRE 64 2096 192 2096
            WIRE 1472 2256 1536 2256
            WIRE 1536 2256 1536 2544
        END BRANCH
        IOMARKER 3376 2288 ALU_MODE(2:0) R0 28
        BEGIN BRANCH WB_EN
            WIRE 1776 1888 1856 1888
            WIRE 1776 1888 1776 3136
            WIRE 1776 3136 5392 3136
            WIRE 5392 3136 5392 3216
            WIRE 5024 1680 5392 1680
            WIRE 5392 1680 5392 3136
        END BRANCH
        BEGIN BRANCH RST
            WIRE 176 1408 192 1408
            WIRE 192 1408 1760 1408
            WIRE 1760 1408 1760 2016
            WIRE 1760 2016 1856 2016
            WIRE 1760 1408 2688 1408
            WIRE 2688 1408 2688 1648
            WIRE 2688 1648 2704 1648
            WIRE 2688 1408 3424 1408
            WIRE 3424 1408 3424 1840
            WIRE 192 1408 192 1728
        END BRANCH
        BEGIN BRANCH XLXN_208
            WIRE 2640 2624 2704 2624
            WIRE 2640 2624 2640 2816
            WIRE 2640 2816 3888 2816
            WIRE 3808 1856 3888 1856
            WIRE 3888 1856 3888 2816
        END BRANCH
        BEGIN BRANCH XLXN_209
            WIRE 2656 2672 2704 2672
            WIRE 2656 2672 2656 2800
            WIRE 2656 2800 3904 2800
            WIRE 3808 1984 3904 1984
            WIRE 3904 1984 3904 2800
        END BRANCH
        BEGIN BRANCH PC_LR_GOTO
            WIRE 128 1936 192 1936
            WIRE 128 1936 128 2992
            WIRE 128 2992 848 2992
            WIRE 848 2992 3872 2992
            WIRE 848 2992 848 3072
            WIRE 848 3072 896 3072
            WIRE 3216 2672 3872 2672
            WIRE 3872 2672 3872 2992
        END BRANCH
        BEGIN BRANCH PC_EN
            WIRE 160 2016 192 2016
            WIRE 160 2016 160 2832
            WIRE 160 2832 160 2960
            WIRE 160 2960 3264 2960
            WIRE 160 2832 240 2832
            WIRE 3216 2720 3264 2720
            WIRE 3264 2720 3264 2960
        END BRANCH
        IOMARKER 5072 1584 OUTPUT_PORT(7:0) R0 28
        BEGIN INSTANCE XLXI_14 4560 1792 R0
        END INSTANCE
        BEGIN BRANCH XLXN_120
            WIRE 3216 1696 3472 1696
            WIRE 3472 1584 4560 1584
            WIRE 3472 1584 3472 1696
        END BRANCH
        IOMARKER 5392 3216 WB_EN R90 28
        IOMARKER 480 2672 CLK R180 28
        IOMARKER 240 2832 PC_EN R0 28
        IOMARKER 2384 1152 REG_RD_1(7:0) R270 28
        IOMARKER 3296 1328 DATA_1(7:0) R270 28
        IOMARKER 176 1408 RST R180 28
        IOMARKER 2192 1072 OPCODE(3:0) R180 28
        BEGIN BRANCH WB_REG(1:0)
            WIRE 1808 2208 1856 2208
            WIRE 1808 2208 1808 3104
            WIRE 1808 3104 5216 3104
            WIRE 5024 2048 5216 2048
            WIRE 5216 2048 5216 2624
            WIRE 5216 2624 5216 3104
            WIRE 5168 2624 5216 2624
            WIRE 5168 2624 5168 2656
        END BRANCH
        IOMARKER 5280 2640 WB_DATA(7:0) R90 28
        IOMARKER 5168 2656 WB_REG(1:0) R90 28
        BEGIN BRANCH PC_BR
            WIRE 96 1808 192 1808
            WIRE 96 1808 96 3024
            WIRE 96 3024 512 3024
            WIRE 512 3024 3296 3024
            WIRE 512 3024 512 3072
            WIRE 512 3072 544 3072
            WIRE 3216 2624 3296 2624
            WIRE 3296 2624 3296 3024
        END BRANCH
        IOMARKER 544 3072 PC_BR R0 28
        IOMARKER 896 3072 PC_LR_GOTO R0 28
        IOMARKER 896 2672 PC_LR_RTRN R0 28
    END SHEET
END SCHEMATIC
