VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL CE
        SIGNAL CLK
        SIGNAL RST
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_11(7:0)
        SIGNAL XLXN_12(7:0)
        SIGNAL OUT_MEM(7:0)
        PORT Input CE
        PORT Input CLK
        PORT Input RST
        PORT Output OUT_MEM(7:0)
        BEGIN BLOCKDEF cb8re
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -192 320 -192 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 0 -32 64 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 384 -256 320 -256 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -128 320 -128 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF ibuf
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
            LINE N 224 -32 128 -32 
            LINE N 0 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF ibufg
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
            LINE N 224 -32 128 -32 
            LINE N 0 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF Memory
            TIMESTAMP 2014 1 28 23 33 3
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF obuf8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
            LINE N 224 -32 128 -32 
            RECTANGLE N 0 -44 64 -20 
            RECTANGLE N 128 -44 224 -20 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 cb8re
            PIN C XLXN_9
            PIN CE XLXN_8
            PIN R XLXN_10
            PIN CEO
            PIN Q(7:0) XLXN_11(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_3 ibuf
            PIN I CE
            PIN O XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_4 ibuf
            PIN I RST
            PIN O XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_5 ibufg
            PIN I CLK
            PIN O XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_6 Memory
            PIN addr(7:0) XLXN_11(7:0)
            PIN dout(7:0) XLXN_12(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_7 obuf8
            PIN I(7:0) XLXN_12(7:0)
            PIN O(7:0) OUT_MEM(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1792 1264 R0
        INSTANCE XLXI_3 528 1152 R0
        INSTANCE XLXI_4 512 1408 R0
        INSTANCE XLXI_5 544 1280 R0
        BEGIN BRANCH CE
            WIRE 496 1120 528 1120
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 512 1248 544 1248
        END BRANCH
        BEGIN BRANCH RST
            WIRE 480 1376 512 1376
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 752 1120 1264 1120
            WIRE 1264 1072 1264 1120
            WIRE 1264 1072 1792 1072
        END BRANCH
        BEGIN BRANCH XLXN_9
            WIRE 768 1248 1280 1248
            WIRE 1280 1136 1280 1248
            WIRE 1280 1136 1792 1136
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 736 1376 1792 1376
            WIRE 1792 1232 1792 1376
        END BRANCH
        BEGIN INSTANCE XLXI_6 2432 1040 R0
        END INSTANCE
        BEGIN BRANCH XLXN_11(7:0)
            WIRE 2176 1008 2432 1008
        END BRANCH
        INSTANCE XLXI_7 2864 1040 R0
        BEGIN BRANCH XLXN_12(7:0)
            WIRE 2816 1008 2864 1008
        END BRANCH
        BEGIN BRANCH OUT_MEM(7:0)
            WIRE 3088 1008 3120 1008
        END BRANCH
        IOMARKER 496 1120 CE R180 28
        IOMARKER 512 1248 CLK R180 28
        IOMARKER 480 1376 RST R180 28
        IOMARKER 3120 1008 OUT_MEM(7:0) R0 28
    END SHEET
END SCHEMATIC
