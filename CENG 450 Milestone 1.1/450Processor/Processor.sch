VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_38
        SIGNAL WB_OP
        SIGNAL WB_DATA_OUT(7:0)
        SIGNAL RA_OUT(1:0)
        SIGNAL XLXN_27
        SIGNAL XLXN_47(3:0)
        SIGNAL XLXN_93(1:0)
        SIGNAL XLXN_94(1:0)
        SIGNAL RD_DATA_1(7:0)
        SIGNAL RD_DATA_2(7:0)
        SIGNAL ALU_MODE(2:0)
        SIGNAL ALU_IN_1(7:0)
        SIGNAL ALU_IN_2(7:0)
        SIGNAL XLXN_100
        SIGNAL ALU_Out(7:0)
        SIGNAL XLXN_103(1:0)
        SIGNAL XLXN_104
        SIGNAL XLXN_105(7:0)
        SIGNAL XLXN_106(1:0)
        SIGNAL INSTR(7:0)
        SIGNAL CLK
        SIGNAL RST
        SIGNAL XLXN_107
        SIGNAL XLXN_108
        SIGNAL XLXN_109(7:0)
        SIGNAL INPUT_PORT(7:0)
        SIGNAL OUTPUT_PORT(7:0)
        PORT Output WB_OP
        PORT Output WB_DATA_OUT(7:0)
        PORT Output RA_OUT(1:0)
        PORT Output RD_DATA_1(7:0)
        PORT Output RD_DATA_2(7:0)
        PORT Output ALU_MODE(2:0)
        PORT Output ALU_IN_1(7:0)
        PORT Output ALU_IN_2(7:0)
        PORT Output ALU_Out(7:0)
        PORT Input INSTR(7:0)
        PORT Input CLK
        PORT Input RST
        PORT Input INPUT_PORT(7:0)
        PORT Output OUTPUT_PORT(7:0)
        BEGIN BLOCKDEF MEM_WB_Buffer
            TIMESTAMP 2014 2 26 0 13 18
            LINE N 64 -224 0 -224 
            RECTANGLE N 464 -140 528 -116 
            LINE N 464 -128 528 -128 
            LINE N 64 560 0 560 
            RECTANGLE N 0 84 64 108 
            LINE N 64 96 0 96 
            RECTANGLE N 0 148 64 172 
            LINE N 64 160 0 160 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 448 148 512 172 
            LINE N 448 160 512 160 
            LINE N 64 -176 0 -176 
            LINE N 464 -176 528 -176 
            RECTANGLE N 64 -320 464 628 
            LINE N 64 -272 0 -272 
            RECTANGLE N 464 -284 528 -260 
            LINE N 464 -272 528 -272 
        END BLOCKDEF
        BEGIN BLOCKDEF EX_MEM_Buffer
            TIMESTAMP 2014 2 26 0 13 47
            LINE N 64 -160 0 -160 
            LINE N 400 -160 464 -160 
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
            RECTANGLE N 64 -256 400 584 
            LINE N 64 -208 0 -208 
            LINE N 400 -208 464 -208 
        END BLOCKDEF
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
            TIMESTAMP 2014 2 26 0 12 41
            LINE N 448 -352 512 -352 
            LINE N 448 -288 512 -288 
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
            RECTANGLE N 64 -384 448 596 
            RECTANGLE N 0 -252 64 -228 
            LINE N 64 -240 0 -240 
            LINE N 448 -240 512 -240 
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
        BEGIN BLOCK XLXI_7 MEM_WB_Buffer
            PIN wb_op_in XLXN_104
            PIN mem_op_in XLXN_38
            PIN clk CLK
            PIN result_in(7:0) XLXN_105(7:0)
            PIN ra_in(1:0) XLXN_106(1:0)
            PIN mem_data_in(7:0)
            PIN wb_op_out WB_OP
            PIN wb_data_out(7:0) WB_DATA_OUT(7:0)
            PIN ra_out(1:0) RA_OUT(1:0)
            PIN io_op_in XLXN_108
            PIN output_port(7:0) OUTPUT_PORT(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_8 EX_MEM_Buffer
            PIN wb_op_in XLXN_100
            PIN mem_op_in XLXN_27
            PIN clk CLK
            PIN result_in(7:0) ALU_Out(7:0)
            PIN ra_in(1:0) XLXN_103(1:0)
            PIN wb_op_out XLXN_104
            PIN mem_op_out XLXN_38
            PIN result_out(7:0) XLXN_105(7:0)
            PIN ra_out(1:0) XLXN_106(1:0)
            PIN io_op_in XLXN_107
            PIN io_op_out XLXN_108
        END BLOCK
        BEGIN BLOCK XLXI_9 ALU
            PIN clk CLK
            PIN rst RST
            PIN in1(7:0) ALU_IN_1(7:0)
            PIN in2(7:0) ALU_IN_2(7:0)
            PIN alu_mode(2:0) ALU_MODE(2:0)
            PIN z_flag
            PIN n_flag
            PIN result(7:0) ALU_Out(7:0)
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
            PIN mem_op XLXN_27
            PIN wb_op XLXN_100
            PIN data1_out(7:0) ALU_IN_1(7:0)
            PIN data2_out(7:0) ALU_IN_2(7:0)
            PIN ra_out(1:0) XLXN_103(1:0)
            PIN alu_mode_out(2:0) ALU_MODE(2:0)
            PIN input_port_in(7:0) XLXN_109(7:0)
            PIN io_op XLXN_107
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
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN BRANCH XLXN_38
            WIRE 3856 976 4192 976
        END BRANCH
        BEGIN BRANCH RA_OUT(1:0)
            WIRE 1264 1536 1312 1536
            WIRE 1264 1536 1264 2048
            WIRE 1264 2048 4720 2048
            WIRE 4720 2048 4992 2048
            WIRE 4704 1360 4720 1360
            WIRE 4720 1360 4720 2048
        END BRANCH
        BEGIN INSTANCE XLXI_11 1312 1632 R0
        END INSTANCE
        BEGIN BRANCH XLXN_47(3:0)
            WIRE 928 1168 2080 1168
            WIRE 2080 1136 2080 1168
            WIRE 2080 1136 2160 1136
        END BRANCH
        BEGIN BRANCH WB_OP
            WIRE 1232 1216 1312 1216
            WIRE 1232 1216 1232 2080
            WIRE 1232 2080 4784 2080
            WIRE 4784 2080 4784 2112
            WIRE 4720 1024 4784 1024
            WIRE 4784 1024 4784 2080
        END BRANCH
        BEGIN BRANCH WB_DATA_OUT(7:0)
            WIRE 1296 1600 1312 1600
            WIRE 1296 1600 1296 2016
            WIRE 1296 2016 4752 2016
            WIRE 4720 1072 4752 1072
            WIRE 4752 1072 4752 1968
            WIRE 4752 1968 4752 2016
            WIRE 4752 1968 4944 1968
        END BRANCH
        BEGIN INSTANCE XLXI_10 2160 1328 R0
        END INSTANCE
        BEGIN BRANCH XLXN_27
            WIRE 2672 976 3392 976
        END BRANCH
        BEGIN INSTANCE XLXI_13 544 1248 R0
        END INSTANCE
        BEGIN BRANCH XLXN_93(1:0)
            WIRE 928 1408 944 1408
            WIRE 944 1408 1008 1408
            WIRE 1008 1408 1008 1472
            WIRE 1008 1472 1312 1472
        END BRANCH
        BEGIN BRANCH XLXN_94(1:0)
            WIRE 928 1360 1136 1360
            WIRE 1136 1360 1136 1408
            WIRE 1136 1408 1312 1408
            WIRE 1136 1408 1136 1696
            WIRE 1136 1696 2016 1696
            WIRE 2016 1440 2160 1440
            WIRE 2016 1440 2016 1696
        END BRANCH
        BEGIN BRANCH RD_DATA_1(7:0)
            WIRE 1776 1216 1840 1216
            WIRE 1840 1216 1968 1216
            WIRE 1968 1216 1968 1312
            WIRE 1968 1312 2160 1312
            WIRE 1840 928 1840 1216
        END BRANCH
        BEGIN BRANCH RD_DATA_2(7:0)
            WIRE 1776 1600 1968 1600
            WIRE 1952 928 1968 928
            WIRE 1952 928 1952 1376
            WIRE 1952 1376 1968 1376
            WIRE 1968 1376 1968 1600
            WIRE 1968 1376 2160 1376
        END BRANCH
        BEGIN BRANCH ALU_MODE(2:0)
            WIRE 2672 1440 2832 1440
            WIRE 2832 1440 2880 1440
            WIRE 2832 432 2848 432
            WIRE 2832 432 2832 1440
        END BRANCH
        BEGIN BRANCH ALU_IN_1(7:0)
            WIRE 2672 1312 2688 1312
            WIRE 2688 1312 2880 1312
            WIRE 2688 400 2688 1312
        END BRANCH
        BEGIN BRANCH ALU_IN_2(7:0)
            WIRE 2672 1376 2784 1376
            WIRE 2784 1376 2880 1376
            WIRE 2784 400 2784 1376
        END BRANCH
        BEGIN INSTANCE XLXI_9 2880 1472 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 3392 1136 R0
        END INSTANCE
        BEGIN BRANCH XLXN_100
            WIRE 2672 1040 3024 1040
            WIRE 3024 1024 3024 1040
            WIRE 3024 1024 3392 1024
        END BRANCH
        BEGIN BRANCH ALU_Out(7:0)
            WIRE 3264 1440 3312 1440
            WIRE 3312 624 3312 1232
            WIRE 3312 1232 3392 1232
            WIRE 3312 1232 3312 1440
        END BRANCH
        BEGIN BRANCH XLXN_103(1:0)
            WIRE 2672 1536 3360 1536
            WIRE 3360 1392 3360 1536
            WIRE 3360 1392 3392 1392
        END BRANCH
        BEGIN INSTANCE XLXI_7 4192 1200 R0
        END INSTANCE
        BEGIN BRANCH XLXN_104
            WIRE 3856 1024 4192 1024
        END BRANCH
        BEGIN BRANCH XLXN_105(7:0)
            WIRE 3856 1232 4016 1232
            WIRE 4016 1232 4016 1296
            WIRE 4016 1296 4192 1296
        END BRANCH
        BEGIN BRANCH XLXN_106(1:0)
            WIRE 3856 1392 4016 1392
            WIRE 4016 1360 4016 1392
            WIRE 4016 1360 4192 1360
        END BRANCH
        BEGIN BRANCH INSTR(7:0)
            WIRE 512 1280 544 1280
        END BRANCH
        IOMARKER 512 1280 INSTR(7:0) R180 28
        BEGIN BRANCH CLK
            WIRE 384 1904 528 1904
            WIRE 528 1904 1088 1904
            WIRE 1088 1904 2144 1904
            WIRE 2144 1904 2160 1904
            WIRE 2144 1904 2144 1984
            WIRE 2144 1984 2736 1984
            WIRE 2736 1984 3376 1984
            WIRE 3376 1984 4176 1984
            WIRE 528 1648 544 1648
            WIRE 528 1648 528 1904
            WIRE 1088 1280 1312 1280
            WIRE 1088 1280 1088 1904
            WIRE 2736 1184 2880 1184
            WIRE 2736 1184 2736 1984
            WIRE 3376 1648 3392 1648
            WIRE 3376 1648 3376 1984
            WIRE 4176 1760 4192 1760
            WIRE 4176 1760 4176 1984
        END BRANCH
        IOMARKER 384 1904 CLK R180 28
        BEGIN BRANCH RST
            WIRE 416 752 1312 752
            WIRE 1312 752 2880 752
            WIRE 2880 752 2880 1248
            WIRE 1312 752 1312 1344
        END BRANCH
        IOMARKER 416 752 RST R180 28
        IOMARKER 3312 624 ALU_Out(7:0) R270 28
        IOMARKER 2688 400 ALU_IN_1(7:0) R270 28
        IOMARKER 2784 400 ALU_IN_2(7:0) R270 28
        IOMARKER 2848 432 ALU_MODE(2:0) R0 28
        IOMARKER 1840 928 RD_DATA_1(7:0) R270 28
        IOMARKER 1968 928 RD_DATA_2(7:0) R0 28
        BEGIN BRANCH XLXN_107
            WIRE 2672 1088 3008 1088
            WIRE 3008 928 3008 1088
            WIRE 3008 928 3392 928
        END BRANCH
        BEGIN BRANCH XLXN_108
            WIRE 3856 928 4192 928
        END BRANCH
        BEGIN BRANCH XLXN_109(7:0)
            WIRE 928 1040 2080 1040
            WIRE 2080 1040 2080 1088
            WIRE 2080 1088 2160 1088
        END BRANCH
        BEGIN BRANCH INPUT_PORT(7:0)
            WIRE 512 1008 544 1008
        END BRANCH
        BEGIN BRANCH OUTPUT_PORT(7:0)
            WIRE 4720 928 4848 928
        END BRANCH
        IOMARKER 4848 928 OUTPUT_PORT(7:0) R0 28
        IOMARKER 512 1008 INPUT_PORT(7:0) R180 28
        IOMARKER 4992 2048 RA_OUT(1:0) R0 28
        IOMARKER 4784 2112 WB_OP R90 28
        IOMARKER 4944 1968 WB_DATA_OUT(7:0) R0 28
    END SHEET
END SCHEMATIC
