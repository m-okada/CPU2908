// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Sat Jan 04 15:04:39 2020
//
// Verilog Description of module top
//

module top (dataBus, nCS, clk, gclk1, nReset, nIRQ, nTSC, bootMode, 
            addrOut, clkQ, clkE, nRD, nAltRD, nWR, nAltWR, nIRQA, 
            IRQH, S, SPI_CLK, SPI_MISO, SPI_MOSI, SPI_CS, TxD, 
            RxD, nRTS, nCTS, SerialClock, monitor_sel, UM) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(1[8:11])
    inout [7:0]dataBus;   // v:/cpu2908/fpga/machxo2/top.v(2[19:26])
    output [3:0]nCS;   // v:/cpu2908/fpga/machxo2/top.v(3[20:23])
    input clk;   // v:/cpu2908/fpga/machxo2/top.v(4[13:16])
    input gclk1;   // v:/cpu2908/fpga/machxo2/top.v(5[13:18])
    input nReset;   // v:/cpu2908/fpga/machxo2/top.v(7[13:19])
    input nIRQ;   // v:/cpu2908/fpga/machxo2/top.v(8[13:17])
    input nTSC;   // v:/cpu2908/fpga/machxo2/top.v(9[13:17])
    input bootMode;   // v:/cpu2908/fpga/machxo2/top.v(11[13:21])
    output [19:0]addrOut;   // v:/cpu2908/fpga/machxo2/top.v(13[21:28])
    output clkQ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    output clkE;   // v:/cpu2908/fpga/machxo2/top.v(15[14:18])
    output nRD;   // v:/cpu2908/fpga/machxo2/top.v(17[14:17])
    output nAltRD;   // v:/cpu2908/fpga/machxo2/top.v(17[18:24])
    output nWR;   // v:/cpu2908/fpga/machxo2/top.v(18[14:17])
    output nAltWR;   // v:/cpu2908/fpga/machxo2/top.v(18[18:24])
    output nIRQA;   // v:/cpu2908/fpga/machxo2/top.v(19[14:19])
    output IRQH;   // v:/cpu2908/fpga/machxo2/top.v(20[14:18])
    output [1:0]S;   // v:/cpu2908/fpga/machxo2/top.v(22[19:20])
    output SPI_CLK;   // v:/cpu2908/fpga/machxo2/top.v(25[14:21])
    output SPI_MISO;   // v:/cpu2908/fpga/machxo2/top.v(26[14:22])
    output SPI_MOSI;   // v:/cpu2908/fpga/machxo2/top.v(27[14:22])
    output [5:0]SPI_CS;   // v:/cpu2908/fpga/machxo2/top.v(28[19:25])
    output TxD;   // v:/cpu2908/fpga/machxo2/top.v(30[14:17])
    input RxD;   // v:/cpu2908/fpga/machxo2/top.v(31[13:16])
    output nRTS;   // v:/cpu2908/fpga/machxo2/top.v(32[14:18])
    input nCTS;   // v:/cpu2908/fpga/machxo2/top.v(33[13:17])
    output SerialClock;   // v:/cpu2908/fpga/machxo2/top.v(34[14:25])
    input [3:0]monitor_sel;   // v:/cpu2908/fpga/machxo2/top.v(36[18:29])
    output [7:0]UM;   // v:/cpu2908/fpga/machxo2/top.v(37[19:21])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(4[13:16])
    wire clkQ_c /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    wire clkE_c /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(15[14:18])
    wire RxD_c /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(31[13:16])
    wire SerialClock2 /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(59[6:18])
    wire iclk /* synthesis is_clock=1, SET_AS_NETWORK=iclk */ ;   // v:/cpu2908/fpga/machxo2/top.v(61[6:10])
    wire nRDRxD /* synthesis is_clock=1, SET_AS_NETWORK=nRDRxD */ ;   // v:/cpu2908/fpga/machxo2/top.v(123[6:12])
    wire nWRTxD /* synthesis is_clock=1, SET_AS_NETWORK=nWRTxD */ ;   // v:/cpu2908/fpga/machxo2/top.v(124[6:12])
    wire clkE_N_18 /* synthesis is_inv_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    wire clkQ_c__inv /* synthesis is_inv_clock=1, is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    
    wire GND_net, VCC_net, nCS_c_1, nCS_c_0, nReset_c, nIRQ_c, nTSC_c, 
        n534, n537, n541, n545, n549, n553, n557, n561, n565, 
        n569, n573, n577, n581, n585, n589, n593, IRQH_c, S_c_1, 
        S_c_0, n615, n614, n613, TxD_c, nRTS_c, SerialClock_c_7;
    wire [127:0]sig;   // v:/cpu2908/fpga/machxo2/top.v(40[13:16])
    wire [7:0]ExDataIn;   // v:/cpu2908/fpga/machxo2/top.v(43[11:19])
    wire [7:0]ExDataOut;   // v:/cpu2908/fpga/machxo2/top.v(44[11:20])
    
    wire n612, n611, clk3, nReset1, nReset2;
    wire [7:0]bootROM_data;   // v:/cpu2908/fpga/machxo2/top.v(90[11:23])
    wire [7:0]sramData;   // v:/cpu2908/fpga/machxo2/top.v(92[11:19])
    wire [7:0]TxBuff;   // v:/cpu2908/fpga/machxo2/top.v(121[10:16])
    
    wire RxDclr, RxBusy, TxRdy, n610, sramWE, nReset2_N_20, nReset_N_22, 
        n307, n308, n309, n310, n311, n312, n313, n314;
    wire [7:0]ExDataIn_7__N_23;
    wire [7:0]ExDataIn_7__N_6;
    wire [15:0]subPort;   // v:/cpu2908/fpga/machxo2/register.v(100[20:27])
    
    wire n31, n972, n5386;
    wire [15:0]subPort_adj_589;   // v:/cpu2908/fpga/machxo2/register.v(100[20:27])
    
    wire R, R_adj_564, R_adj_565, ocea_enable_1;
    wire [7:0]subPort_adj_599;   // v:/cpu2908/fpga/machxo2/register.v(74[19:26])
    
    wire n865, n531, n5382, n616, n4970, n31_adj_574, UM_c, n4, 
        n929, n921, n3115, n4869, n4907, n5398, n4793, n22, 
        n20, n18, n5742, n14, n10;
    
    VHI i2 (.Z(VCC_net));
    INV i4931 (.A(clkQ_c), .Z(clkQ_c__inv));
    FD1P3DX clkQ_I_0_89 (.D(clkE_N_18), .SP(VCC_net), .CK(iclk), .CD(nReset2_N_20), 
            .Q(clkQ_c)) /* synthesis syn_instantiated=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(80[9:72])
    defparam clkQ_I_0_89.GSR = "DISABLED";
    FD1P3DX dff03 (.D(n5742), .SP(VCC_net), .CK(clk_c), .CD(nReset_N_22), 
            .Q(nReset1)) /* synthesis syn_instantiated=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(82[9:77])
    defparam dff03.GSR = "DISABLED";
    FD1P3DX nReset2_I_0_87 (.D(nReset1), .SP(VCC_net), .CK(clk_c), .CD(nReset_N_22), 
            .Q(nReset2)) /* synthesis syn_instantiated=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(83[9:80])
    defparam nReset2_I_0_87.GSR = "DISABLED";
    FD1P3DX dff05 (.D(nReset2), .SP(VCC_net), .CK(clk_c), .CD(nReset_N_22), 
            .Q(clk3)) /* synthesis syn_instantiated=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(84[9:77])
    defparam dff05.GSR = "DISABLED";
    FD1P3DX dff06 (.D(SerialClock_c_7), .SP(VCC_net), .CK(clkQ_c__inv), 
            .CD(nReset_N_22), .Q(SerialClock2)) /* synthesis syn_instantiated=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(152[9:86])
    defparam dff06.GSR = "DISABLED";
    LUT4 mux_76_i6_3_lut (.A(sramData[5]), .B(n612), .C(ocea_enable_1), 
         .Z(n309)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // v:/cpu2908/fpga/machxo2/top.v(191[2] 192[9])
    defparam mux_76_i6_3_lut.init = 16'hacac;
    FD1P3DX dff07 (.D(n5742), .SP(VCC_net), .CK(nRDRxD), .CD(clkQ_c__inv), 
            .Q(RxDclr)) /* synthesis syn_instantiated=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(154[9:72])
    defparam dff07.GSR = "DISABLED";
    FD1P3DX clkE_I_0_88 (.D(clkQ_c), .SP(VCC_net), .CK(iclk), .CD(nReset2_N_20), 
            .Q(clkE_c)) /* synthesis syn_instantiated=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(79[9:71])
    defparam clkE_I_0_88.GSR = "DISABLED";
    sram sramData_7__I_0 (.clkQ_c__inv(clkQ_c__inv), .ocea_enable_1(ocea_enable_1), 
         .nReset2_N_20(nReset2_N_20), .sramWE(sramWE), .n569(n569), .n573(n573), 
         .n577(n577), .n581(n581), .n585(n585), .n589(n589), .n593(n593), 
         .ExDataOut({ExDataOut}), .sramData({sramData}), .GND_net(GND_net), 
         .VCC_net(VCC_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(183[6] 184[33])
    core nWR_I_0_84 (.clkQ_c(clkQ_c), .clkE_c(clkE_c), .R(R_adj_564), 
         .nReset2_N_20(nReset2_N_20), .R_adj_121(R), .R_adj_122(R_adj_565), 
         .nReset2(nReset2), .clkQ_c__inv(clkQ_c__inv), .ExDataOut({ExDataOut}), 
         .nTSC_c(nTSC_c), .n865(n865), .nWRTxD(nWRTxD), .ocea_enable_1(ocea_enable_1), 
         .sramWE(sramWE), .subPort({subPort_adj_589}), .n549(n549), .nRDRxD(nRDRxD), 
         .n553(n553), .n929(n929), .nCS_c_0(nCS_c_0), .n4907(n4907), 
         .n5386(n5386), .n561(n561), .n5398(n5398), .n4869(n4869), .n972(n972), 
         .n4(n4), .n31(n31), .n589(n589), .n545(n545), .n557(n557), 
         .n541(n541), .n537(n537), .n534(n534), .n573(n573), .n569(n569), 
         .n585(n585), .n581(n581), .n577(n577), .n593(n593), .n565(n565), 
         .nCS_c_1(nCS_c_1), .ExDataIn({ExDataIn}), .IRQH_c(IRQH_c), .S_c_1(S_c_1), 
         .S_c_0(S_c_0), .nIRQ_c(nIRQ_c), .VCC_net(VCC_net), .clkE_N_18(clkE_N_18), 
         .nReset1(nReset1), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(97[6] 117[2])
    serialRxD rxd01 (.SerialClock2(SerialClock2), .\sig[40] (sig[40]), .GND_net(GND_net), 
            .VCC_net(VCC_net), .RxBusy(RxBusy), .n5742(n5742), .RxD_c(RxD_c), 
            .subPort({subPort_adj_599}), .RxDclr(RxDclr)) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(156[11] 159[66])
    FD1S3AX TxBuff_i0 (.D(ExDataOut[0]), .CK(nWRTxD), .Q(TxBuff[0]));   // v:/cpu2908/fpga/machxo2/top.v(126[8] 128[4])
    defparam TxBuff_i0.GSR = "DISABLED";
    serialTxD txd01 (.TxRdy(TxRdy), .TxD_c(TxD_c), .VCC_net(VCC_net), 
            .SerialClock2(SerialClock2), .n5742(n5742), .TxBuff({TxBuff}), 
            .nWRTxD(nWRTxD)) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(163[11:97])
    bootROM rom0 (.n577(n577), .n581(n581), .n585(n585), .n589(n589), 
            .n593(n593), .bootROM_data({bootROM_data})) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(175[9:52])
    LUT4 ExDataIn_7__I_0_i5_4_lut (.A(bootROM_data[4]), .B(ExDataIn_7__N_23[4]), 
         .C(n5382), .D(n31), .Z(ExDataIn[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // v:/cpu2908/fpga/machxo2/top.v(187[2] 192[9])
    defparam ExDataIn_7__I_0_i5_4_lut.init = 16'hca0a;
    LUT4 mux_77_i5_3_lut (.A(subPort_adj_599[3]), .B(n310), .C(n31_adj_574), 
         .Z(ExDataIn_7__N_23[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/top.v(190[2] 192[9])
    defparam mux_77_i5_3_lut.init = 16'hcaca;
    LUT4 mux_76_i5_3_lut (.A(sramData[4]), .B(n613), .C(ocea_enable_1), 
         .Z(n310)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // v:/cpu2908/fpga/machxo2/top.v(191[2] 192[9])
    defparam mux_76_i5_3_lut.init = 16'hacac;
    LUT4 ExDataIn_7__I_0_i3_4_lut (.A(bootROM_data[2]), .B(ExDataIn_7__N_23[2]), 
         .C(n5382), .D(n31), .Z(ExDataIn[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // v:/cpu2908/fpga/machxo2/top.v(187[2] 192[9])
    defparam ExDataIn_7__I_0_i3_4_lut.init = 16'hca0a;
    register16_U18 ioaddr_reg (.subPort({subPort}), .clkQ_c__inv(clkQ_c__inv), 
            .n593(n593), .n534(n534), .n537(n537), .n541(n541), .n545(n545), 
            .n549(n549), .n553(n553), .n557(n557), .n561(n561), .n565(n565), 
            .n569(n569), .n573(n573), .n577(n577), .n581(n581), .n585(n585), 
            .n589(n589)) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(146[12:82])
    PFUMX ExDataIn_7__I_0_i4 (.BLUT(n311), .ALUT(ExDataIn_7__N_6[3]), .C0(n4970), 
          .Z(ExDataIn[3]));
    PFUMX ExDataIn_7__I_0_i7 (.BLUT(n308), .ALUT(ExDataIn_7__N_6[6]), .C0(n4970), 
          .Z(ExDataIn[6]));
    PFUMX ExDataIn_7__I_0_i8 (.BLUT(n307), .ALUT(ExDataIn_7__N_6[7]), .C0(n4970), 
          .Z(ExDataIn[7]));
    LUT4 nReset_I_0_1_lut (.A(nReset_c), .Z(nReset_N_22)) /* synthesis lut_function=(!(A)) */ ;   // v:/cpu2908/fpga/machxo2/top.v(82[57:64])
    defparam nReset_I_0_1_lut.init = 16'h5555;
    LUT4 ExDataIn_7__I_1_i4_3_lut (.A(ExDataIn_7__N_23[3]), .B(bootROM_data[3]), 
         .C(n5382), .Z(ExDataIn_7__N_6[3])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // v:/cpu2908/fpga/machxo2/top.v(189[2] 192[9])
    defparam ExDataIn_7__I_1_i4_3_lut.init = 16'hacac;
    LUT4 mux_77_i3_3_lut (.A(subPort_adj_599[5]), .B(n312), .C(n31_adj_574), 
         .Z(ExDataIn_7__N_23[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/top.v(190[2] 192[9])
    defparam mux_77_i3_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut (.A(subPort[0]), .B(n4793), .C(n3115), .D(subPort[8]), 
         .Z(n865)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // v:/cpu2908/fpga/machxo2/top.v(148[17:39])
    defparam i1_4_lut.init = 16'hdfff;
    divider div01 (.clk_c(clk_c), .nReset2_N_20(nReset2_N_20), .SerialClock_c_7(SerialClock_c_7), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(87[9:78])
    FD1S3AX TxBuff_i7 (.D(ExDataOut[7]), .CK(nWRTxD), .Q(TxBuff[7]));   // v:/cpu2908/fpga/machxo2/top.v(126[8] 128[4])
    defparam TxBuff_i7.GSR = "DISABLED";
    FD1S3AX TxBuff_i6 (.D(ExDataOut[6]), .CK(nWRTxD), .Q(TxBuff[6]));   // v:/cpu2908/fpga/machxo2/top.v(126[8] 128[4])
    defparam TxBuff_i6.GSR = "DISABLED";
    FD1S3AX TxBuff_i5 (.D(ExDataOut[5]), .CK(nWRTxD), .Q(TxBuff[5]));   // v:/cpu2908/fpga/machxo2/top.v(126[8] 128[4])
    defparam TxBuff_i5.GSR = "DISABLED";
    LUT4 mux_76_i3_3_lut (.A(sramData[2]), .B(n615), .C(ocea_enable_1), 
         .Z(n312)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // v:/cpu2908/fpga/machxo2/top.v(191[2] 192[9])
    defparam mux_76_i3_3_lut.init = 16'hacac;
    IB RxD_pad (.I(RxD), .O(RxD_c));   // v:/cpu2908/fpga/machxo2/top.v(31[13:16])
    FD1S3AX TxBuff_i4 (.D(ExDataOut[4]), .CK(nWRTxD), .Q(TxBuff[4]));   // v:/cpu2908/fpga/machxo2/top.v(126[8] 128[4])
    defparam TxBuff_i4.GSR = "DISABLED";
    FD1S3AX TxBuff_i3 (.D(ExDataOut[3]), .CK(nWRTxD), .Q(TxBuff[3]));   // v:/cpu2908/fpga/machxo2/top.v(126[8] 128[4])
    defparam TxBuff_i3.GSR = "DISABLED";
    FD1S3AX TxBuff_i2 (.D(ExDataOut[2]), .CK(nWRTxD), .Q(TxBuff[2]));   // v:/cpu2908/fpga/machxo2/top.v(126[8] 128[4])
    defparam TxBuff_i2.GSR = "DISABLED";
    FD1S3AX TxBuff_i1 (.D(ExDataOut[1]), .CK(nWRTxD), .Q(TxBuff[1]));   // v:/cpu2908/fpga/machxo2/top.v(126[8] 128[4])
    defparam TxBuff_i1.GSR = "DISABLED";
    IB nTSC_pad (.I(nTSC), .O(nTSC_c));   // v:/cpu2908/fpga/machxo2/top.v(9[13:17])
    IB nIRQ_pad (.I(nIRQ), .O(nIRQ_c));   // v:/cpu2908/fpga/machxo2/top.v(8[13:17])
    IB nReset_pad (.I(nReset), .O(nReset_c));   // v:/cpu2908/fpga/machxo2/top.v(7[13:19])
    LUT4 i10_4_lut (.A(subPort[6]), .B(n20), .C(n14), .D(subPort[1]), 
         .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // v:/cpu2908/fpga/machxo2/top.v(148[17:39])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i4615_3_lut_3_lut (.A(n5382), .B(n31_adj_574), .C(n31), .Z(n4970)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // v:/cpu2908/fpga/machxo2/top.v(187[2] 192[9])
    defparam i4615_3_lut_3_lut.init = 16'h7f7f;
    LUT4 i6_2_lut (.A(subPort[14]), .B(subPort[15]), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // v:/cpu2908/fpga/machxo2/top.v(148[17:39])
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i8_4_lut (.A(subPort[3]), .B(subPort[12]), .C(subPort[5]), .D(subPort[2]), 
         .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // v:/cpu2908/fpga/machxo2/top.v(148[17:39])
    defparam i8_4_lut.init = 16'hfffe;
    IB clk_pad (.I(clk), .O(clk_c));   // v:/cpu2908/fpga/machxo2/top.v(4[13:16])
    OB UM_pad_0 (.I(UM_c), .O(UM[0]));   // v:/cpu2908/fpga/machxo2/top.v(37[19:21])
    OB UM_pad_1 (.I(n616), .O(UM[1]));   // v:/cpu2908/fpga/machxo2/top.v(37[19:21])
    OB UM_pad_2 (.I(n615), .O(UM[2]));   // v:/cpu2908/fpga/machxo2/top.v(37[19:21])
    OB UM_pad_3 (.I(n614), .O(UM[3]));   // v:/cpu2908/fpga/machxo2/top.v(37[19:21])
    OB UM_pad_4 (.I(n613), .O(UM[4]));   // v:/cpu2908/fpga/machxo2/top.v(37[19:21])
    OB UM_pad_5 (.I(n612), .O(UM[5]));   // v:/cpu2908/fpga/machxo2/top.v(37[19:21])
    OB UM_pad_6 (.I(n611), .O(UM[6]));   // v:/cpu2908/fpga/machxo2/top.v(37[19:21])
    OB UM_pad_7 (.I(n610), .O(UM[7]));   // v:/cpu2908/fpga/machxo2/top.v(37[19:21])
    OB SerialClock_pad (.I(SerialClock_c_7), .O(SerialClock));   // v:/cpu2908/fpga/machxo2/top.v(34[14:25])
    OB nRTS_pad (.I(nRTS_c), .O(nRTS));   // v:/cpu2908/fpga/machxo2/top.v(32[14:18])
    OB TxD_pad (.I(TxD_c), .O(TxD));   // v:/cpu2908/fpga/machxo2/top.v(30[14:17])
    OB SPI_CS_pad_0 (.I(GND_net), .O(SPI_CS[0]));   // v:/cpu2908/fpga/machxo2/top.v(28[19:25])
    OB SPI_CS_pad_1 (.I(GND_net), .O(SPI_CS[1]));   // v:/cpu2908/fpga/machxo2/top.v(28[19:25])
    OB SPI_CS_pad_2 (.I(GND_net), .O(SPI_CS[2]));   // v:/cpu2908/fpga/machxo2/top.v(28[19:25])
    OB SPI_CS_pad_3 (.I(GND_net), .O(SPI_CS[3]));   // v:/cpu2908/fpga/machxo2/top.v(28[19:25])
    OB SPI_CS_pad_4 (.I(GND_net), .O(SPI_CS[4]));   // v:/cpu2908/fpga/machxo2/top.v(28[19:25])
    OB SPI_CS_pad_5 (.I(GND_net), .O(SPI_CS[5]));   // v:/cpu2908/fpga/machxo2/top.v(28[19:25])
    OB SPI_MOSI_pad (.I(GND_net), .O(SPI_MOSI));   // v:/cpu2908/fpga/machxo2/top.v(27[14:22])
    OB SPI_MISO_pad (.I(GND_net), .O(SPI_MISO));   // v:/cpu2908/fpga/machxo2/top.v(26[14:22])
    OB SPI_CLK_pad (.I(GND_net), .O(SPI_CLK));   // v:/cpu2908/fpga/machxo2/top.v(25[14:21])
    OB S_pad_0 (.I(S_c_0), .O(S[0]));   // v:/cpu2908/fpga/machxo2/top.v(22[19:20])
    OB S_pad_1 (.I(S_c_1), .O(S[1]));   // v:/cpu2908/fpga/machxo2/top.v(22[19:20])
    OB IRQH_pad (.I(IRQH_c), .O(IRQH));   // v:/cpu2908/fpga/machxo2/top.v(20[14:18])
    OBZ nIRQA_pad (.I(R_adj_565), .T(n5398), .O(nIRQA));   // v:/cpu2908/fpga/machxo2/tristatebuff.v(7[8:9])
    OBZ n607_pad (.I(R_adj_564), .T(n5398), .O(nAltWR));   // v:/cpu2908/fpga/machxo2/tristatebuff.v(7[8:9])
    OBZ n604_pad (.I(R_adj_564), .T(n5398), .O(nWR));   // v:/cpu2908/fpga/machxo2/tristatebuff.v(7[8:9])
    LUT4 i2_2_lut (.A(subPort[4]), .B(subPort[13]), .Z(n14)) /* synthesis lut_function=(A+(B)) */ ;   // v:/cpu2908/fpga/machxo2/top.v(148[17:39])
    defparam i2_2_lut.init = 16'heeee;
    OBZ n601_pad (.I(R), .T(n5398), .O(nAltRD));   // v:/cpu2908/fpga/machxo2/tristatebuff.v(7[8:9])
    OBZ n598_pad (.I(R), .T(n5398), .O(nRD));   // v:/cpu2908/fpga/machxo2/tristatebuff.v(7[8:9])
    OB clkE_pad (.I(clkE_c), .O(clkE));   // v:/cpu2908/fpga/machxo2/top.v(15[14:18])
    OB clkQ_pad (.I(clkQ_c), .O(clkQ));   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    OBZ addrOut_pad_0 (.I(subPort_adj_589[0]), .T(n5398), .O(addrOut[0]));   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    OBZ addrOut_pad_1 (.I(subPort_adj_589[1]), .T(n5398), .O(addrOut[1]));   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    OBZ addrOut_pad_2 (.I(subPort_adj_589[2]), .T(n5398), .O(addrOut[2]));   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    OBZ addrOut_pad_3 (.I(subPort_adj_589[3]), .T(n5398), .O(addrOut[3]));   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    OBZ addrOut_pad_4 (.I(subPort_adj_589[4]), .T(n5398), .O(addrOut[4]));   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    OBZ addrOut_pad_5 (.I(subPort_adj_589[5]), .T(n5398), .O(addrOut[5]));   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    OBZ addrOut_pad_6 (.I(subPort_adj_589[6]), .T(n5398), .O(addrOut[6]));   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    OBZ addrOut_pad_7 (.I(subPort_adj_589[7]), .T(n5398), .O(addrOut[7]));   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    LUT4 ExDataIn_7__I_0_i1_4_lut (.A(bootROM_data[0]), .B(ExDataIn_7__N_23[0]), 
         .C(n5382), .D(n31), .Z(ExDataIn[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // v:/cpu2908/fpga/machxo2/top.v(187[2] 192[9])
    defparam ExDataIn_7__I_0_i1_4_lut.init = 16'hca0a;
    OBZ addrOut_pad_8 (.I(subPort_adj_589[8]), .T(n5398), .O(addrOut[8]));   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    OBZ addrOut_pad_9 (.I(subPort_adj_589[9]), .T(n5398), .O(addrOut[9]));   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    OBZ addrOut_pad_10 (.I(subPort_adj_589[10]), .T(n5398), .O(addrOut[10]));   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    OBZ addrOut_pad_11 (.I(subPort_adj_589[11]), .T(n5398), .O(addrOut[11]));   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    OBZ addrOut_pad_12 (.I(subPort_adj_589[12]), .T(n5398), .O(addrOut[12]));   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    OBZ addrOut_pad_13 (.I(subPort_adj_589[13]), .T(n5398), .O(addrOut[13]));   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    OBZ addrOut_pad_14 (.I(subPort_adj_589[14]), .T(n5398), .O(addrOut[14]));   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    OBZ addrOut_pad_15 (.I(subPort_adj_589[15]), .T(n5398), .O(addrOut[15]));   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    OBZ addrOut_pad_16 (.I(GND_net), .T(n531), .O(addrOut[16]));   // v:/cpu2908/fpga/machxo2/top.v(52[8:15])
    OBZ addrOut_pad_17 (.I(GND_net), .T(n531), .O(addrOut[17]));   // v:/cpu2908/fpga/machxo2/top.v(52[8:15])
    OBZ addrOut_pad_18 (.I(GND_net), .T(n531), .O(addrOut[18]));   // v:/cpu2908/fpga/machxo2/top.v(52[8:15])
    OBZ addrOut_pad_19 (.I(GND_net), .T(n531), .O(addrOut[19]));   // v:/cpu2908/fpga/machxo2/top.v(52[8:15])
    OB nCS_pad_0 (.I(nCS_c_0), .O(nCS[0]));   // v:/cpu2908/fpga/machxo2/top.v(3[20:23])
    OB nCS_pad_1 (.I(nCS_c_1), .O(nCS[1]));   // v:/cpu2908/fpga/machxo2/top.v(3[20:23])
    OB nCS_pad_2 (.I(GND_net), .O(nCS[2]));   // v:/cpu2908/fpga/machxo2/top.v(3[20:23])
    OB nCS_pad_3 (.I(GND_net), .O(nCS[3]));   // v:/cpu2908/fpga/machxo2/top.v(3[20:23])
    BB dataBus_pad_0 (.I(ExDataOut[0]), .T(n5386), .B(dataBus[0]), .O(UM_c));   // v:/cpu2908/fpga/machxo2/top.v(53[8:15])
    BB dataBus_pad_1 (.I(ExDataOut[1]), .T(n5386), .B(dataBus[1]), .O(n616));   // v:/cpu2908/fpga/machxo2/top.v(53[8:15])
    BB dataBus_pad_2 (.I(ExDataOut[2]), .T(n5386), .B(dataBus[2]), .O(n615));   // v:/cpu2908/fpga/machxo2/top.v(53[8:15])
    BB dataBus_pad_3 (.I(ExDataOut[3]), .T(n5386), .B(dataBus[3]), .O(n614));   // v:/cpu2908/fpga/machxo2/top.v(53[8:15])
    BB dataBus_pad_4 (.I(ExDataOut[4]), .T(n5386), .B(dataBus[4]), .O(n613));   // v:/cpu2908/fpga/machxo2/top.v(53[8:15])
    BB dataBus_pad_5 (.I(ExDataOut[5]), .T(n5386), .B(dataBus[5]), .O(n612));   // v:/cpu2908/fpga/machxo2/top.v(53[8:15])
    BB dataBus_pad_6 (.I(ExDataOut[6]), .T(n5386), .B(dataBus[6]), .O(n611));   // v:/cpu2908/fpga/machxo2/top.v(53[8:15])
    BB dataBus_pad_7 (.I(ExDataOut[7]), .T(n5386), .B(dataBus[7]), .O(n610));   // v:/cpu2908/fpga/machxo2/top.v(53[8:15])
    LUT4 mux_77_i1_3_lut (.A(subPort_adj_599[7]), .B(n314), .C(n31_adj_574), 
         .Z(ExDataIn_7__N_23[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/top.v(190[2] 192[9])
    defparam mux_77_i1_3_lut.init = 16'hcaca;
    LUT4 mux_76_i1_3_lut (.A(sramData[0]), .B(UM_c), .C(ocea_enable_1), 
         .Z(n314)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // v:/cpu2908/fpga/machxo2/top.v(191[2] 192[9])
    defparam mux_76_i1_3_lut.init = 16'hacac;
    LUT4 i2_4_lut (.A(n4907), .B(n589), .C(n593), .D(n972), .Z(n31_adj_574)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // v:/cpu2908/fpga/machxo2/top.v(190[2:22])
    defparam i2_4_lut.init = 16'hffef;
    LUT4 i431_4_lut_rep_94 (.A(n5398), .B(n921), .C(n10), .D(subPort_adj_589[8]), 
         .Z(n5382)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // v:/cpu2908/fpga/machxo2/top.v(187[2:21])
    defparam i431_4_lut_rep_94.init = 16'h5554;
    LUT4 sig_40__I_0_1_lut (.A(sig[40]), .Z(nRTS_c)) /* synthesis lut_function=(!(A)) */ ;   // v:/cpu2908/fpga/machxo2/top.v(150[15:21])
    defparam sig_40__I_0_1_lut.init = 16'h5555;
    GSR GSR_INST (.GSR(nReset1));
    LUT4 i3_4_lut (.A(subPort_adj_589[14]), .B(subPort_adj_589[13]), .C(subPort_adj_589[12]), 
         .D(subPort_adj_589[15]), .Z(n929)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // v:/cpu2908/fpga/machxo2/top.v(189[2:22])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut (.A(subPort_adj_589[9]), .B(n929), .C(subPort_adj_589[10]), 
         .D(subPort_adj_589[11]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // v:/cpu2908/fpga/machxo2/top.v(187[2:21])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i260_1_lut (.A(nTSC_c), .Z(n531)) /* synthesis lut_function=(!(A)) */ ;   // v:/cpu2908/fpga/machxo2/top.v(52[8:15])
    defparam i260_1_lut.init = 16'h5555;
    LUT4 i1_2_lut (.A(subPort_adj_589[1]), .B(subPort_adj_589[0]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // v:/cpu2908/fpga/machxo2/top.v(190[2:22])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i3_4_lut_adj_101 (.A(subPort_adj_589[4]), .B(subPort_adj_589[2]), 
         .C(subPort_adj_589[3]), .D(n921), .Z(n4869)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // v:/cpu2908/fpga/machxo2/top.v(187[2:21])
    defparam i3_4_lut_adj_101.init = 16'hfffe;
    LUT4 i2_3_lut (.A(subPort_adj_589[7]), .B(subPort_adj_589[6]), .C(subPort_adj_589[5]), 
         .Z(n921)) /* synthesis lut_function=(A+(B+(C))) */ ;   // v:/cpu2908/fpga/machxo2/top.v(190[2:22])
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 mux_77_i4_3_lut (.A(subPort_adj_599[4]), .B(TxRdy), .C(n31), 
         .Z(ExDataIn_7__N_23[3])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // v:/cpu2908/fpga/machxo2/top.v(190[2] 192[9])
    defparam mux_77_i4_3_lut.init = 16'hacac;
    LUT4 mux_76_i4_3_lut (.A(sramData[3]), .B(n614), .C(ocea_enable_1), 
         .Z(n311)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // v:/cpu2908/fpga/machxo2/top.v(191[2] 192[9])
    defparam mux_76_i4_3_lut.init = 16'hacac;
    LUT4 clk3_I_0_2_lut (.A(clk3), .B(clk_c), .Z(iclk)) /* synthesis lut_function=(A (B)) */ ;   // v:/cpu2908/fpga/machxo2/top.v(70[15:30])
    defparam clk3_I_0_2_lut.init = 16'h8888;
    LUT4 ExDataIn_7__I_0_i2_4_lut (.A(bootROM_data[1]), .B(ExDataIn_7__N_23[1]), 
         .C(n5382), .D(n31), .Z(ExDataIn[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // v:/cpu2908/fpga/machxo2/top.v(187[2] 192[9])
    defparam ExDataIn_7__I_0_i2_4_lut.init = 16'hca0a;
    LUT4 ExDataIn_7__I_0_i6_4_lut (.A(bootROM_data[5]), .B(ExDataIn_7__N_23[5]), 
         .C(n5382), .D(n31), .Z(ExDataIn[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // v:/cpu2908/fpga/machxo2/top.v(187[2] 192[9])
    defparam ExDataIn_7__I_0_i6_4_lut.init = 16'hca0a;
    LUT4 mux_77_i6_3_lut (.A(subPort_adj_599[2]), .B(n309), .C(n31_adj_574), 
         .Z(ExDataIn_7__N_23[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/top.v(190[2] 192[9])
    defparam mux_77_i6_3_lut.init = 16'hcaca;
    LUT4 mux_77_i2_3_lut (.A(subPort_adj_599[6]), .B(n313), .C(n31_adj_574), 
         .Z(ExDataIn_7__N_23[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/top.v(190[2] 192[9])
    defparam mux_77_i2_3_lut.init = 16'hcaca;
    LUT4 mux_76_i2_3_lut (.A(sramData[1]), .B(n616), .C(ocea_enable_1), 
         .Z(n313)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // v:/cpu2908/fpga/machxo2/top.v(191[2] 192[9])
    defparam mux_76_i2_3_lut.init = 16'hacac;
    LUT4 mux_76_i7_3_lut (.A(sramData[6]), .B(n611), .C(ocea_enable_1), 
         .Z(n308)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // v:/cpu2908/fpga/machxo2/top.v(191[2] 192[9])
    defparam mux_76_i7_3_lut.init = 16'hacac;
    LUT4 ExDataIn_7__I_1_i7_3_lut (.A(ExDataIn_7__N_23[6]), .B(bootROM_data[6]), 
         .C(n5382), .Z(ExDataIn_7__N_6[6])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // v:/cpu2908/fpga/machxo2/top.v(189[2] 192[9])
    defparam ExDataIn_7__I_1_i7_3_lut.init = 16'hacac;
    INV i4930 (.A(clkE_c), .Z(clkE_N_18));
    LUT4 mux_77_i7_3_lut (.A(subPort_adj_599[1]), .B(sig[40]), .C(n31), 
         .Z(ExDataIn_7__N_23[6])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // v:/cpu2908/fpga/machxo2/top.v(190[2] 192[9])
    defparam mux_77_i7_3_lut.init = 16'hacac;
    VLO i1 (.Z(GND_net));
    LUT4 mux_76_i8_3_lut (.A(sramData[7]), .B(n610), .C(ocea_enable_1), 
         .Z(n307)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // v:/cpu2908/fpga/machxo2/top.v(191[2] 192[9])
    defparam mux_76_i8_3_lut.init = 16'hacac;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 ExDataIn_7__I_1_i8_3_lut (.A(ExDataIn_7__N_23[7]), .B(bootROM_data[7]), 
         .C(n5382), .Z(ExDataIn_7__N_6[7])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // v:/cpu2908/fpga/machxo2/top.v(189[2] 192[9])
    defparam ExDataIn_7__I_1_i8_3_lut.init = 16'hacac;
    LUT4 mux_77_i8_3_lut (.A(subPort_adj_599[0]), .B(RxBusy), .C(n31), 
         .Z(ExDataIn_7__N_23[7])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // v:/cpu2908/fpga/machxo2/top.v(190[2] 192[9])
    defparam mux_77_i8_3_lut.init = 16'hacac;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i11_4_lut (.A(subPort[7]), .B(n22), .C(n18), .D(subPort[11]), 
         .Z(n4793)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // v:/cpu2908/fpga/machxo2/top.v(148[17:39])
    defparam i11_4_lut.init = 16'hfeff;
    LUT4 i2669_2_lut (.A(subPort[10]), .B(subPort[9]), .Z(n3115)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2669_2_lut.init = 16'h8888;
    LUT4 m1_lut (.Z(n5742)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    
endmodule
//
// Verilog Description of module sram
//

module sram (clkQ_c__inv, ocea_enable_1, nReset2_N_20, sramWE, n569, 
            n573, n577, n581, n585, n589, n593, ExDataOut, sramData, 
            GND_net, VCC_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clkQ_c__inv;
    input ocea_enable_1;
    input nReset2_N_20;
    input sramWE;
    input n569;
    input n573;
    input n577;
    input n581;
    input n585;
    input n589;
    input n593;
    input [7:0]ExDataOut;
    output [7:0]sramData;
    input GND_net;
    input VCC_net;
    
    wire clkQ_c__inv /* synthesis is_inv_clock=1, is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    
    DP8KC sram_0_0_0_0 (.DIA0(ExDataOut[0]), .DIA1(ExDataOut[1]), .DIA2(ExDataOut[2]), 
          .DIA3(ExDataOut[3]), .DIA4(ExDataOut[4]), .DIA5(ExDataOut[5]), 
          .DIA6(ExDataOut[6]), .DIA7(ExDataOut[7]), .DIA8(GND_net), .ADA0(VCC_net), 
          .ADA1(GND_net), .ADA2(GND_net), .ADA3(n593), .ADA4(n589), 
          .ADA5(n585), .ADA6(n581), .ADA7(n577), .ADA8(n573), .ADA9(n569), 
          .ADA10(GND_net), .ADA11(GND_net), .ADA12(GND_net), .CEA(ocea_enable_1), 
          .OCEA(ocea_enable_1), .CLKA(clkQ_c__inv), .WEA(sramWE), .CSA0(GND_net), 
          .CSA1(GND_net), .CSA2(GND_net), .RSTA(nReset2_N_20), .DIB0(GND_net), 
          .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), 
          .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), 
          .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), 
          .ADB4(GND_net), .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), 
          .ADB8(GND_net), .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), 
          .ADB12(GND_net), .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), 
          .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), 
          .RSTB(GND_net), .DOA0(sramData[0]), .DOA1(sramData[1]), .DOA2(sramData[2]), 
          .DOA3(sramData[3]), .DOA4(sramData[4]), .DOA5(sramData[5]), 
          .DOA6(sramData[6]), .DOA7(sramData[7])) /* synthesis MEM_LPC_FILE="sram.lpc", MEM_INIT_FILE="INIT_ALL_0s", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=33, LSE_LLINE=183, LSE_RLINE=184 */ ;   // v:/cpu2908/fpga/machxo2/top.v(183[6] 184[33])
    defparam sram_0_0_0_0.DATA_WIDTH_A = 9;
    defparam sram_0_0_0_0.DATA_WIDTH_B = 9;
    defparam sram_0_0_0_0.REGMODE_A = "NOREG";
    defparam sram_0_0_0_0.REGMODE_B = "NOREG";
    defparam sram_0_0_0_0.CSDECODE_A = "0b000";
    defparam sram_0_0_0_0.CSDECODE_B = "0b111";
    defparam sram_0_0_0_0.WRITEMODE_A = "NORMAL";
    defparam sram_0_0_0_0.WRITEMODE_B = "NORMAL";
    defparam sram_0_0_0_0.GSR = "ENABLED";
    defparam sram_0_0_0_0.RESETMODE = "ASYNC";
    defparam sram_0_0_0_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam sram_0_0_0_0.INIT_DATA = "STATIC";
    defparam sram_0_0_0_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam sram_0_0_0_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    
endmodule
//
// Verilog Description of module core
//

module core (clkQ_c, clkE_c, R, nReset2_N_20, R_adj_121, R_adj_122, 
            nReset2, clkQ_c__inv, ExDataOut, nTSC_c, n865, nWRTxD, 
            ocea_enable_1, sramWE, subPort, n549, nRDRxD, n553, 
            n929, nCS_c_0, n4907, n5386, n561, n5398, n4869, n972, 
            n4, n31, n589, n545, n557, n541, n537, n534, n573, 
            n569, n585, n581, n577, n593, n565, nCS_c_1, ExDataIn, 
            IRQH_c, S_c_1, S_c_0, nIRQ_c, VCC_net, clkE_N_18, nReset1, 
            GND_net) /* synthesis syn_module_defined=1 */ ;
    input clkQ_c;
    input clkE_c;
    output R;
    output nReset2_N_20;
    output R_adj_121;
    output R_adj_122;
    input nReset2;
    input clkQ_c__inv;
    output [7:0]ExDataOut;
    input nTSC_c;
    input n865;
    output nWRTxD;
    output ocea_enable_1;
    output sramWE;
    output [15:0]subPort;
    output n549;
    output nRDRxD;
    output n553;
    input n929;
    output nCS_c_0;
    output n4907;
    output n5386;
    output n561;
    output n5398;
    input n4869;
    output n972;
    input n4;
    output n31;
    output n589;
    output n545;
    output n557;
    output n541;
    output n537;
    output n534;
    output n573;
    output n569;
    output n585;
    output n581;
    output n577;
    output n593;
    output n565;
    output nCS_c_1;
    input [7:0]ExDataIn;
    output IRQH_c;
    output S_c_1;
    output S_c_0;
    input nIRQ_c;
    input VCC_net;
    input clkE_N_18;
    input nReset1;
    input GND_net;
    
    wire clkQ_c /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    wire clkE_c /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(15[14:18])
    wire N_34 /* synthesis is_clock=1, SET_AS_NETWORK=\nWR_I_0_84/Executer/Executer_s/N_34 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(38[6:10])
    wire clkQ_c__inv /* synthesis is_inv_clock=1, is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    wire nWRTxD /* synthesis is_clock=1, SET_AS_NETWORK=nWRTxD */ ;   // v:/cpu2908/fpga/machxo2/top.v(124[6:12])
    wire nRDRxD /* synthesis is_clock=1, SET_AS_NETWORK=nRDRxD */ ;   // v:/cpu2908/fpga/machxo2/top.v(123[6:12])
    wire clkE_N_18 /* synthesis is_inv_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    wire [127:0]sig;   // v:/cpu2908/fpga/machxo2/core.v(20[21:24])
    
    wire nread_ff_N_58, n5395, data_ctrl_N_62, nirq_ff_N_64;
    wire [7:0]subPort_c;   // v:/cpu2908/fpga/machxo2/register.v(49[19:26])
    wire [7:0]data_ibus;   // v:/cpu2908/fpga/machxo2/core.v(48[12:21])
    
    wire R_adj_516;
    wire [15:0]addr_ibus;   // v:/cpu2908/fpga/machxo2/core.v(45[13:22])
    
    wire n7;
    wire [7:0]subPort_adj_544;   // v:/cpu2908/fpga/machxo2/register.v(49[19:26])
    wire [3:0]outreg;   // v:/cpu2908/fpga/machxo2/executer.v(109[11:17])
    wire [7:0]InternalDataBus;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(35[14:29])
    wire [7:0]addrLo;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(31[14:20])
    wire [7:0]addrHi;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(30[14:20])
    
    wire n68;
    wire [7:0]subPort_adj_545;   // v:/cpu2908/fpga/machxo2/register.v(49[19:26])
    wire [7:0]subPort_adj_546;   // v:/cpu2908/fpga/machxo2/register.v(49[19:26])
    
    wire n5388, n1, n1_adj_530, n1_adj_532, n1_adj_534, n1_adj_536, 
        n5389;
    wire [7:0]subPort_adj_547;   // v:/cpu2908/fpga/machxo2/register.v(49[19:26])
    
    wire n5, clkQ_c_derived_27_enable_9, clkQ_c_derived_27_enable_5, n7_adj_539, 
        n7_adj_540, n7_adj_541, n7_adj_542;
    wire [7:0]data_es_bus;   // v:/cpu2908/fpga/machxo2/core.v(51[12:23])
    
    LUT4 i4574_2_lut (.A(sig[32]), .B(sig[33]), .Z(nread_ff_N_58)) /* synthesis lut_function=((B)+!A) */ ;   // v:/cpu2908/fpga/machxo2/core.v(69[26:59])
    defparam i4574_2_lut.init = 16'hdddd;
    LUT4 data_ctrl_I_2_2_lut_rep_107 (.A(sig[32]), .B(sig[33]), .Z(n5395)) /* synthesis lut_function=(!(A+!(B))) */ ;   // v:/cpu2908/fpga/machxo2/core.v(70[27:59])
    defparam data_ctrl_I_2_2_lut_rep_107.init = 16'h4444;
    LUT4 data_ctrl_N_50_I_0_1_lut_2_lut (.A(sig[32]), .B(sig[33]), .Z(data_ctrl_N_62)) /* synthesis lut_function=(A+!(B)) */ ;   // v:/cpu2908/fpga/machxo2/core.v(70[27:59])
    defparam data_ctrl_N_50_I_0_1_lut_2_lut.init = 16'hbbbb;
    LUT4 i4577_2_lut (.A(sig[32]), .B(sig[33]), .Z(nirq_ff_N_64)) /* synthesis lut_function=(!(A (B))) */ ;   // v:/cpu2908/fpga/machxo2/core.v(71[26:58])
    defparam i4577_2_lut.init = 16'h7777;
    LUT4 i2_3_lut_3_lut (.A(clkQ_c), .B(sig[84]), .C(clkE_c), .Z(N_34)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // v:/cpu2908/fpga/machxo2/top.v(146[38:43])
    defparam i2_3_lut_3_lut.init = 16'h4040;
    register1as nwrite_ff_I_0 (.R(R), .clkE_c(clkE_c), .nReset2_N_20(nReset2_N_20), 
            .data_ctrl_N_62(data_ctrl_N_62)) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/core.v(70[13:124])
    register1as_U13 nread_ff_I_0 (.R(R_adj_121), .clkE_c(clkE_c), .nReset2_N_20(nReset2_N_20), 
            .nread_ff_N_58(nread_ff_N_58)) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/core.v(69[13:123])
    register1as_U14 nirq_ff_I_0 (.R(R_adj_122), .clkE_c(clkE_c), .nReset2_N_20(nReset2_N_20), 
            .nirq_ff_N_64(nirq_ff_N_64), .nReset2(nReset2)) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/core.v(71[13:121])
    register8_U15 data_ibus2_7__I_0 (.subPort({subPort_c}), .clkE_c(clkE_c), 
            .\sig[34] (sig[34]), .data_ibus({data_ibus})) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/core.v(62[11:97])
    register1 data_ctrl_I_0_25 (.R(R_adj_516), .clkQ_c__inv(clkQ_c__inv), 
            .n5395(n5395)) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/core.v(79[11:108])
    tristateBuff8_U16 dataOut_7__I_0 (.subPort({subPort_c}), .R(R_adj_516), 
            .ExDataOut({ExDataOut})) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/core.v(63[15:71])
    register16_U17 addrOut_15__I_0 (.nTSC_c(nTSC_c), .nReset2(nReset2), 
            .n865(n865), .R(R), .nWRTxD(nWRTxD), .ocea_enable_1(ocea_enable_1), 
            .sramWE(sramWE), .subPort({subPort}), .n549(n549), .R_adj_120(R_adj_121), 
            .nRDRxD(nRDRxD), .n553(n553), .n929(n929), .nCS_c_0(nCS_c_0), 
            .clkE_c(clkE_c), .\sig[35] (sig[35]), .addr_ibus({addr_ibus}), 
            .n4907(n4907), .n5386(n5386), .n561(n561), .n5398(n5398), 
            .n4869(n4869), .n972(n972), .n4(n4), .n31(n31), .n589(n589), 
            .n545(n545), .n557(n557), .n541(n541), .n537(n537), .n534(n534), 
            .n573(n573), .n569(n569), .n585(n585), .n581(n581), .n577(n577), 
            .n593(n593), .n565(n565), .nCS_c_1(nCS_c_1)) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/core.v(66[13:97])
    sequencer Sequencer (.ExDataIn({ExDataIn}), .\sig[45] (sig[45]), .IRQH_c(IRQH_c), 
            .S_c_1(S_c_1), .S_c_0(S_c_0), .clkE_c(clkE_c), .nIRQ_c(nIRQ_c), 
            .VCC_net(VCC_net), .clkE_N_18(clkE_N_18), .clkQ_c(clkQ_c), 
            .\sig[44] (sig[44]), .\sig[47] (sig[47]), .\sig[46] (sig[46]), 
            .clkQ_c__inv(clkQ_c__inv), .nReset2(nReset2), .nReset1(nReset1), 
            .\sig[43] (sig[43]), .\sig[35] (sig[35]), .\sig[34] (sig[34]), 
            .\sig[33] (sig[33]), .\sig[32] (sig[32]), .\sig[94] (sig[94]), 
            .\sig[93] (sig[93]), .\sig[91] (sig[91]), .\sig[90] (sig[90]), 
            .\sig[89] (sig[89]), .\sig[88] (sig[88]), .\sig[87] (sig[87]), 
            .\sig[86] (sig[86]), .\sig[85] (sig[85]), .\sig[84] (sig[84]), 
            .\sig[83] (sig[83]), .\sig[82] (sig[82]), .\sig[81] (sig[81]), 
            .\sig[80] (sig[80]), .\sig[79] (sig[79]), .\data_ibus[1] (data_ibus[1]), 
            .n7(n7), .\sig[78] (sig[78]), .\sig[77] (sig[77]), .\sig[76] (sig[76]), 
            .\sig[75] (sig[75]), .\sig[74] (sig[74]), .\sig[73] (sig[73]), 
            .\sig[72] (sig[72]), .\subPort[4] (subPort_adj_544[4]), .\outreg[1] (outreg[1]), 
            .\InternalDataBus[4] (InternalDataBus[4]), .\addrLo[4] (addrLo[4]), 
            .\addrHi[4] (addrHi[4]), .n68(n68), .\subPort[4]_adj_109 (subPort_adj_545[4]), 
            .\subPort[4]_adj_110 (subPort_adj_546[4]), .\outreg[2] (outreg[2]), 
            .n5388(n5388), .\subPort[2] (subPort_adj_545[2]), .n1(n1), 
            .\subPort[1] (subPort_adj_545[1]), .n1_adj_111(n1_adj_530), 
            .\subPort[7] (subPort_adj_545[7]), .n1_adj_112(n1_adj_532), 
            .\subPort[0] (subPort_adj_545[0]), .n1_adj_113(n1_adj_534), 
            .\subPort[6] (subPort_adj_545[6]), .n1_adj_114(n1_adj_536), 
            .n5389(n5389), .\data_ibus[4] (data_ibus[4]), .\subPort[4]_adj_115 (subPort_adj_547[4]), 
            .\addrLo[3] (addrLo[3]), .n5(n5), .clkQ_c_derived_27_enable_9(clkQ_c_derived_27_enable_9), 
            .clkQ_c_derived_27_enable_5(clkQ_c_derived_27_enable_5), .\subPort[5] (subPort_adj_547[5]), 
            .\data_ibus[6] (data_ibus[6]), .n7_adj_116(n7_adj_539), .\data_ibus[7] (data_ibus[7]), 
            .n7_adj_117(n7_adj_540), .\data_ibus[2] (data_ibus[2]), .n7_adj_118(n7_adj_541), 
            .\data_ibus[0] (data_ibus[0]), .n7_adj_119(n7_adj_542), .\data_es_bus[6] (data_es_bus[6]), 
            .\data_es_bus[7] (data_es_bus[7]), .\data_es_bus[3] (data_es_bus[3]), 
            .\data_es_bus[2] (data_es_bus[2]), .\data_es_bus[1] (data_es_bus[1]), 
            .\data_es_bus[0] (data_es_bus[0]), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/core.v(86[11] 104[2])
    executer Executer (.\sig[73] (sig[73]), .\sig[43] (sig[43]), .\sig[72] (sig[72]), 
            .\sig[80] (sig[80]), .\data_es_bus[2] (data_es_bus[2]), .\sig[79] (sig[79]), 
            .\outreg[2] (outreg[2]), .n5389(n5389), .\outreg[1] (outreg[1]), 
            .n68(n68), .n5388(n5388), .N_34(N_34), .data_ibus({data_ibus}), 
            .\data_es_bus[0] (data_es_bus[0]), .\sig[81] (sig[81]), .\data_es_bus[3] (data_es_bus[3]), 
            .\data_es_bus[7] (data_es_bus[7]), .\data_es_bus[1] (data_es_bus[1]), 
            .\data_es_bus[6] (data_es_bus[6]), .\subPort[4] (subPort_adj_547[4]), 
            .\subPort[5] (subPort_adj_547[5]), .n5(n5), .n1(n1_adj_536), 
            .n7(n7_adj_539), .n1_adj_76(n1_adj_530), .n7_adj_77(n7), .n1_adj_78(n1_adj_532), 
            .n7_adj_79(n7_adj_540), .n1_adj_80(n1), .n7_adj_81(n7_adj_541), 
            .n1_adj_82(n1_adj_534), .n7_adj_83(n7_adj_542), .\subPort[4]_adj_84 (subPort_adj_546[4]), 
            .\subPort[4]_adj_85 (subPort_adj_544[4]), .\subPort[0] (subPort_adj_545[0]), 
            .\subPort[1] (subPort_adj_545[1]), .\subPort[2] (subPort_adj_545[2]), 
            .\subPort[4]_adj_86 (subPort_adj_545[4]), .\subPort[6] (subPort_adj_545[6]), 
            .\subPort[7] (subPort_adj_545[7]), .\sig[85] (sig[85]), .\sig[84] (sig[84]), 
            .\sig[87] (sig[87]), .\sig[86] (sig[86]), .\sig[83] (sig[83]), 
            .\sig[82] (sig[82]), .addr_ibus({addr_ibus}), .\addrLo[3] (addrLo[3]), 
            .\addrHi[4] (addrHi[4]), .\addrLo[4] (addrLo[4]), .\sig[93] (sig[93]), 
            .\sig[94] (sig[94]), .\sig[46] (sig[46]), .\sig[45] (sig[45]), 
            .\sig[44] (sig[44]), .\sig[47] (sig[47]), .\InternalDataBus[4] (InternalDataBus[4]), 
            .\sig[77] (sig[77]), .\sig[75] (sig[75]), .\sig[76] (sig[76]), 
            .\sig[74] (sig[74]), .\sig[78] (sig[78]), .GND_net(GND_net), 
            .clkQ_c__inv(clkQ_c__inv), .clkQ_c_derived_27_enable_9(clkQ_c_derived_27_enable_9), 
            .clkQ_c_derived_27_enable_5(clkQ_c_derived_27_enable_5), .\sig[88] (sig[88]), 
            .\sig[89] (sig[89]), .\sig[90] (sig[90]), .\sig[91] (sig[91]), 
            .clkQ_c(clkQ_c)) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/core.v(107[10] 119[2])
    
endmodule
//
// Verilog Description of module register1as
//

module register1as (R, clkE_c, nReset2_N_20, data_ctrl_N_62) /* synthesis syn_module_defined=1 */ ;
    output R;
    input clkE_c;
    input nReset2_N_20;
    input data_ctrl_N_62;
    
    wire clkE_c /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(15[14:18])
    
    FD1S3BX R_15 (.D(data_ctrl_N_62), .CK(clkE_c), .PD(nReset2_N_20), 
            .Q(R)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=124, LSE_LLINE=70, LSE_RLINE=70 */ ;   // v:/cpu2908/fpga/machxo2/register.v(36[3:22])
    defparam R_15.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module register1as_U13
//

module register1as_U13 (R, clkE_c, nReset2_N_20, nread_ff_N_58) /* synthesis syn_module_defined=1 */ ;
    output R;
    input clkE_c;
    input nReset2_N_20;
    input nread_ff_N_58;
    
    wire clkE_c /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(15[14:18])
    
    FD1S3BX R_15 (.D(nread_ff_N_58), .CK(clkE_c), .PD(nReset2_N_20), .Q(R)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=123, LSE_LLINE=69, LSE_RLINE=69 */ ;   // v:/cpu2908/fpga/machxo2/register.v(36[3:22])
    defparam R_15.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module register1as_U14
//

module register1as_U14 (R, clkE_c, nReset2_N_20, nirq_ff_N_64, nReset2) /* synthesis syn_module_defined=1 */ ;
    output R;
    input clkE_c;
    output nReset2_N_20;
    input nirq_ff_N_64;
    input nReset2;
    
    wire clkE_c /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(15[14:18])
    
    FD1S3BX R_15 (.D(nirq_ff_N_64), .CK(clkE_c), .PD(nReset2_N_20), .Q(R)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=121, LSE_LLINE=71, LSE_RLINE=71 */ ;   // v:/cpu2908/fpga/machxo2/register.v(36[3:22])
    defparam R_15.GSR = "DISABLED";
    LUT4 nReset2_I_0_1_lut (.A(nReset2), .Z(nReset2_N_20)) /* synthesis lut_function=(!(A)) */ ;   // v:/cpu2908/fpga/machxo2/top.v(80[51:59])
    defparam nReset2_I_0_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module register8_U15
//

module register8_U15 (subPort, clkE_c, \sig[34] , data_ibus) /* synthesis syn_module_defined=1 */ ;
    output [7:0]subPort;
    input clkE_c;
    input \sig[34] ;
    input [7:0]data_ibus;
    
    wire clkE_c /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(15[14:18])
    
    FD1P3AX R_i0_i0 (.D(data_ibus[0]), .SP(\sig[34] ), .CK(clkE_c), .Q(subPort[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=62, LSE_RLINE=62 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i0.GSR = "DISABLED";
    FD1P3AX R_i0_i1 (.D(data_ibus[1]), .SP(\sig[34] ), .CK(clkE_c), .Q(subPort[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=62, LSE_RLINE=62 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i1.GSR = "DISABLED";
    FD1P3AX R_i0_i2 (.D(data_ibus[2]), .SP(\sig[34] ), .CK(clkE_c), .Q(subPort[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=62, LSE_RLINE=62 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i2.GSR = "DISABLED";
    FD1P3AX R_i0_i3 (.D(data_ibus[3]), .SP(\sig[34] ), .CK(clkE_c), .Q(subPort[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=62, LSE_RLINE=62 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i3.GSR = "DISABLED";
    FD1P3AX R_i0_i4 (.D(data_ibus[4]), .SP(\sig[34] ), .CK(clkE_c), .Q(subPort[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=62, LSE_RLINE=62 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i4.GSR = "DISABLED";
    FD1P3AX R_i0_i5 (.D(data_ibus[5]), .SP(\sig[34] ), .CK(clkE_c), .Q(subPort[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=62, LSE_RLINE=62 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i5.GSR = "DISABLED";
    FD1P3AX R_i0_i6 (.D(data_ibus[6]), .SP(\sig[34] ), .CK(clkE_c), .Q(subPort[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=62, LSE_RLINE=62 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i6.GSR = "DISABLED";
    FD1P3AX R_i0_i7 (.D(data_ibus[7]), .SP(\sig[34] ), .CK(clkE_c), .Q(subPort[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=62, LSE_RLINE=62 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i7.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module register1
//

module register1 (R, clkQ_c__inv, n5395) /* synthesis syn_module_defined=1 */ ;
    output R;
    input clkQ_c__inv;
    input n5395;
    
    wire clkQ_c__inv /* synthesis is_inv_clock=1, is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    
    FD1S3AX R_12 (.D(n5395), .CK(clkQ_c__inv), .Q(R)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=11, LSE_RCOL=108, LSE_LLINE=79, LSE_RLINE=79 */ ;   // v:/cpu2908/fpga/machxo2/register.v(12[8] 14[4])
    defparam R_12.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module tristateBuff8_U16
//

module tristateBuff8_U16 (subPort, R, ExDataOut) /* synthesis syn_module_defined=1 */ ;
    input [7:0]subPort;
    input R;
    output [7:0]ExDataOut;
    
    
    LUT4 i295_2_lut (.A(subPort[7]), .B(R), .Z(ExDataOut[7])) /* synthesis lut_function=(A (B)) */ ;   // v:/cpu2908/fpga/machxo2/tristatebuff.v(17[8:9])
    defparam i295_2_lut.init = 16'h8888;
    LUT4 i294_2_lut (.A(subPort[6]), .B(R), .Z(ExDataOut[6])) /* synthesis lut_function=(A (B)) */ ;   // v:/cpu2908/fpga/machxo2/tristatebuff.v(17[8:9])
    defparam i294_2_lut.init = 16'h8888;
    LUT4 i293_2_lut (.A(subPort[5]), .B(R), .Z(ExDataOut[5])) /* synthesis lut_function=(A (B)) */ ;   // v:/cpu2908/fpga/machxo2/tristatebuff.v(17[8:9])
    defparam i293_2_lut.init = 16'h8888;
    LUT4 i292_2_lut (.A(subPort[4]), .B(R), .Z(ExDataOut[4])) /* synthesis lut_function=(A (B)) */ ;   // v:/cpu2908/fpga/machxo2/tristatebuff.v(17[8:9])
    defparam i292_2_lut.init = 16'h8888;
    LUT4 i291_2_lut (.A(subPort[3]), .B(R), .Z(ExDataOut[3])) /* synthesis lut_function=(A (B)) */ ;   // v:/cpu2908/fpga/machxo2/tristatebuff.v(17[8:9])
    defparam i291_2_lut.init = 16'h8888;
    LUT4 i290_2_lut (.A(subPort[2]), .B(R), .Z(ExDataOut[2])) /* synthesis lut_function=(A (B)) */ ;   // v:/cpu2908/fpga/machxo2/tristatebuff.v(17[8:9])
    defparam i290_2_lut.init = 16'h8888;
    LUT4 i289_2_lut (.A(subPort[1]), .B(R), .Z(ExDataOut[1])) /* synthesis lut_function=(A (B)) */ ;   // v:/cpu2908/fpga/machxo2/tristatebuff.v(17[8:9])
    defparam i289_2_lut.init = 16'h8888;
    LUT4 i285_2_lut (.A(subPort[0]), .B(R), .Z(ExDataOut[0])) /* synthesis lut_function=(A (B)) */ ;   // v:/cpu2908/fpga/machxo2/tristatebuff.v(17[8:9])
    defparam i285_2_lut.init = 16'h8888;
    
endmodule
//
// Verilog Description of module register16_U17
//

module register16_U17 (nTSC_c, nReset2, n865, R, nWRTxD, ocea_enable_1, 
            sramWE, subPort, n549, R_adj_120, nRDRxD, n553, n929, 
            nCS_c_0, clkE_c, \sig[35] , addr_ibus, n4907, n5386, 
            n561, n5398, n4869, n972, n4, n31, n589, n545, n557, 
            n541, n537, n534, n573, n569, n585, n581, n577, 
            n593, n565, nCS_c_1) /* synthesis syn_module_defined=1 */ ;
    input nTSC_c;
    input nReset2;
    input n865;
    input R;
    output nWRTxD;
    output ocea_enable_1;
    output sramWE;
    output [15:0]subPort;
    output n549;
    input R_adj_120;
    output nRDRxD;
    output n553;
    input n929;
    output nCS_c_0;
    input clkE_c;
    input \sig[35] ;
    input [15:0]addr_ibus;
    output n4907;
    output n5386;
    output n561;
    output n5398;
    input n4869;
    output n972;
    input n4;
    output n31;
    output n589;
    output n545;
    output n557;
    output n541;
    output n537;
    output n534;
    output n573;
    output n569;
    output n585;
    output n581;
    output n577;
    output n593;
    output n565;
    output nCS_c_1;
    
    wire nWRTxD /* synthesis is_clock=1, SET_AS_NETWORK=nWRTxD */ ;   // v:/cpu2908/fpga/machxo2/top.v(124[6:12])
    wire nRDRxD /* synthesis is_clock=1, SET_AS_NETWORK=nRDRxD */ ;   // v:/cpu2908/fpga/machxo2/top.v(123[6:12])
    wire clkE_c /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(15[14:18])
    
    wire n4871, n10;
    
    LUT4 i2710_2_lut_3_lut_4_lut (.A(nTSC_c), .B(nReset2), .C(n865), .D(R), 
         .Z(nWRTxD)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i2710_2_lut_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i4572_2_lut_2_lut_3_lut_4_lut (.A(nTSC_c), .B(nReset2), .C(ocea_enable_1), 
         .D(R), .Z(sramWE)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i4572_2_lut_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 i306_2_lut_3_lut (.A(nTSC_c), .B(nReset2), .C(subPort[11]), .Z(n549)) /* synthesis lut_function=(A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i306_2_lut_3_lut.init = 16'h8080;
    LUT4 i2643_3_lut_4_lut (.A(nTSC_c), .B(nReset2), .C(n865), .D(R_adj_120), 
         .Z(nRDRxD)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i2643_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i305_2_lut_3_lut (.A(nTSC_c), .B(nReset2), .C(subPort[10]), .Z(n553)) /* synthesis lut_function=(A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i305_2_lut_3_lut.init = 16'h8080;
    LUT4 i4585_2_lut_2_lut_3_lut_3_lut_4_lut (.A(nTSC_c), .B(nReset2), .C(n929), 
         .D(ocea_enable_1), .Z(nCS_c_0)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i4585_2_lut_2_lut_3_lut_3_lut_4_lut.init = 16'hff7f;
    FD1P3AX R_i0_i0 (.D(addr_ibus[0]), .SP(\sig[35] ), .CK(clkE_c), .Q(subPort[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=97, LSE_LLINE=66, LSE_RLINE=66 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i0.GSR = "DISABLED";
    LUT4 i3_4_lut (.A(subPort[11]), .B(subPort[9]), .C(subPort[8]), .D(subPort[10]), 
         .Z(n4871)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i3_4_lut.init = 16'h8000;
    FD1P3AX R_i0_i1 (.D(addr_ibus[1]), .SP(\sig[35] ), .CK(clkE_c), .Q(subPort[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=97, LSE_LLINE=66, LSE_RLINE=66 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i1.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut_4_lut_3_lut_4_lut (.A(nTSC_c), .B(nReset2), .C(n4871), 
         .D(n929), .Z(n4907)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i1_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'hff7f;
    FD1P3AX R_i0_i2 (.D(addr_ibus[2]), .SP(\sig[35] ), .CK(clkE_c), .Q(subPort[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=97, LSE_LLINE=66, LSE_RLINE=66 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i2.GSR = "DISABLED";
    FD1P3AX R_i0_i3 (.D(addr_ibus[3]), .SP(\sig[35] ), .CK(clkE_c), .Q(subPort[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=97, LSE_LLINE=66, LSE_RLINE=66 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i3.GSR = "DISABLED";
    FD1P3AX R_i0_i4 (.D(addr_ibus[4]), .SP(\sig[35] ), .CK(clkE_c), .Q(subPort[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=97, LSE_LLINE=66, LSE_RLINE=66 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i4.GSR = "DISABLED";
    FD1P3AX R_i0_i5 (.D(addr_ibus[5]), .SP(\sig[35] ), .CK(clkE_c), .Q(subPort[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=97, LSE_LLINE=66, LSE_RLINE=66 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i5.GSR = "DISABLED";
    FD1P3AX R_i0_i6 (.D(addr_ibus[6]), .SP(\sig[35] ), .CK(clkE_c), .Q(subPort[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=97, LSE_LLINE=66, LSE_RLINE=66 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i6.GSR = "DISABLED";
    FD1P3AX R_i0_i7 (.D(addr_ibus[7]), .SP(\sig[35] ), .CK(clkE_c), .Q(subPort[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=97, LSE_LLINE=66, LSE_RLINE=66 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i7.GSR = "DISABLED";
    FD1P3AX R_i0_i8 (.D(addr_ibus[8]), .SP(\sig[35] ), .CK(clkE_c), .Q(subPort[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=97, LSE_LLINE=66, LSE_RLINE=66 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i8.GSR = "DISABLED";
    FD1P3AX R_i0_i9 (.D(addr_ibus[9]), .SP(\sig[35] ), .CK(clkE_c), .Q(subPort[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=97, LSE_LLINE=66, LSE_RLINE=66 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i9.GSR = "DISABLED";
    FD1P3AX R_i0_i10 (.D(addr_ibus[10]), .SP(\sig[35] ), .CK(clkE_c), 
            .Q(subPort[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=97, LSE_LLINE=66, LSE_RLINE=66 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i10.GSR = "DISABLED";
    FD1P3AX R_i0_i11 (.D(addr_ibus[11]), .SP(\sig[35] ), .CK(clkE_c), 
            .Q(subPort[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=97, LSE_LLINE=66, LSE_RLINE=66 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i11.GSR = "DISABLED";
    FD1P3AX R_i0_i12 (.D(addr_ibus[12]), .SP(\sig[35] ), .CK(clkE_c), 
            .Q(subPort[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=97, LSE_LLINE=66, LSE_RLINE=66 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i12.GSR = "DISABLED";
    FD1P3AX R_i0_i13 (.D(addr_ibus[13]), .SP(\sig[35] ), .CK(clkE_c), 
            .Q(subPort[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=97, LSE_LLINE=66, LSE_RLINE=66 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i13.GSR = "DISABLED";
    FD1P3AX R_i0_i14 (.D(addr_ibus[14]), .SP(\sig[35] ), .CK(clkE_c), 
            .Q(subPort[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=97, LSE_LLINE=66, LSE_RLINE=66 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i14.GSR = "DISABLED";
    FD1P3AX R_i0_i15 (.D(addr_ibus[15]), .SP(\sig[35] ), .CK(clkE_c), 
            .Q(subPort[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=97, LSE_LLINE=66, LSE_RLINE=66 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i15.GSR = "DISABLED";
    LUT4 i4_4_lut (.A(subPort[12]), .B(subPort[14]), .C(subPort[15]), 
         .D(subPort[7]), .Z(n10)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i288_2_lut_rep_98_3_lut (.A(nTSC_c), .B(nReset2), .C(R), .Z(n5386)) /* synthesis lut_function=(A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i288_2_lut_rep_98_3_lut.init = 16'h8080;
    LUT4 i303_2_lut_3_lut (.A(nTSC_c), .B(nReset2), .C(subPort[8]), .Z(n561)) /* synthesis lut_function=(A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i303_2_lut_3_lut.init = 16'h8080;
    LUT4 i4612_2_lut_rep_110 (.A(nTSC_c), .B(nReset2), .Z(n5398)) /* synthesis lut_function=(!(A (B))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i4612_2_lut_rep_110.init = 16'h7777;
    LUT4 i1_2_lut_2_lut_3_lut (.A(nTSC_c), .B(nReset2), .C(n4869), .Z(n972)) /* synthesis lut_function=(A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i1_2_lut_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_4_lut (.A(n5398), .B(n4), .C(n4869), .D(n4907), .Z(n31)) /* synthesis lut_function=(A (D)+!A (B+(C+(D)))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i1_4_lut_4_lut.init = 16'hff54;
    LUT4 i296_2_lut_3_lut (.A(nTSC_c), .B(nReset2), .C(subPort[1]), .Z(n589)) /* synthesis lut_function=(A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i296_2_lut_3_lut.init = 16'h8080;
    LUT4 i307_2_lut_3_lut (.A(nTSC_c), .B(nReset2), .C(subPort[12]), .Z(n545)) /* synthesis lut_function=(A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i307_2_lut_3_lut.init = 16'h8080;
    LUT4 i304_2_lut_3_lut (.A(nTSC_c), .B(nReset2), .C(subPort[9]), .Z(n557)) /* synthesis lut_function=(A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i304_2_lut_3_lut.init = 16'h8080;
    LUT4 i308_2_lut_3_lut (.A(nTSC_c), .B(nReset2), .C(subPort[13]), .Z(n541)) /* synthesis lut_function=(A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i308_2_lut_3_lut.init = 16'h8080;
    LUT4 i309_2_lut_3_lut (.A(nTSC_c), .B(nReset2), .C(subPort[14]), .Z(n537)) /* synthesis lut_function=(A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i309_2_lut_3_lut.init = 16'h8080;
    LUT4 i310_2_lut_3_lut (.A(nTSC_c), .B(nReset2), .C(subPort[15]), .Z(n534)) /* synthesis lut_function=(A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i310_2_lut_3_lut.init = 16'h8080;
    LUT4 i300_2_lut_3_lut (.A(nTSC_c), .B(nReset2), .C(subPort[5]), .Z(n573)) /* synthesis lut_function=(A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i300_2_lut_3_lut.init = 16'h8080;
    LUT4 i301_2_lut_3_lut (.A(nTSC_c), .B(nReset2), .C(subPort[6]), .Z(n569)) /* synthesis lut_function=(A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i301_2_lut_3_lut.init = 16'h8080;
    LUT4 i297_2_lut_3_lut (.A(nTSC_c), .B(nReset2), .C(subPort[2]), .Z(n585)) /* synthesis lut_function=(A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i297_2_lut_3_lut.init = 16'h8080;
    LUT4 i298_2_lut_3_lut (.A(nTSC_c), .B(nReset2), .C(subPort[3]), .Z(n581)) /* synthesis lut_function=(A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i298_2_lut_3_lut.init = 16'h8080;
    LUT4 i299_2_lut_3_lut (.A(nTSC_c), .B(nReset2), .C(subPort[4]), .Z(n577)) /* synthesis lut_function=(A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i299_2_lut_3_lut.init = 16'h8080;
    LUT4 i286_2_lut_3_lut (.A(nTSC_c), .B(nReset2), .C(subPort[0]), .Z(n593)) /* synthesis lut_function=(A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i286_2_lut_3_lut.init = 16'h8080;
    LUT4 i302_2_lut_3_lut (.A(nTSC_c), .B(nReset2), .C(subPort[7]), .Z(n565)) /* synthesis lut_function=(A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i302_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_rep_97 (.A(subPort[13]), .B(n5398), .C(n10), .D(n4871), 
         .Z(ocea_enable_1)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i1_4_lut_rep_97.init = 16'h2000;
    LUT4 i2720_1_lut_4_lut (.A(subPort[13]), .B(n5398), .C(n10), .D(n4871), 
         .Z(nCS_c_1)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // v:/cpu2908/fpga/machxo2/register.v(112[8:9])
    defparam i2720_1_lut_4_lut.init = 16'hdfff;
    
endmodule
//
// Verilog Description of module sequencer
//

module sequencer (ExDataIn, \sig[45] , IRQH_c, S_c_1, S_c_0, clkE_c, 
            nIRQ_c, VCC_net, clkE_N_18, clkQ_c, \sig[44] , \sig[47] , 
            \sig[46] , clkQ_c__inv, nReset2, nReset1, \sig[43] , \sig[35] , 
            \sig[34] , \sig[33] , \sig[32] , \sig[94] , \sig[93] , 
            \sig[91] , \sig[90] , \sig[89] , \sig[88] , \sig[87] , 
            \sig[86] , \sig[85] , \sig[84] , \sig[83] , \sig[82] , 
            \sig[81] , \sig[80] , \sig[79] , \data_ibus[1] , n7, \sig[78] , 
            \sig[77] , \sig[76] , \sig[75] , \sig[74] , \sig[73] , 
            \sig[72] , \subPort[4] , \outreg[1] , \InternalDataBus[4] , 
            \addrLo[4] , \addrHi[4] , n68, \subPort[4]_adj_109 , \subPort[4]_adj_110 , 
            \outreg[2] , n5388, \subPort[2] , n1, \subPort[1] , n1_adj_111, 
            \subPort[7] , n1_adj_112, \subPort[0] , n1_adj_113, \subPort[6] , 
            n1_adj_114, n5389, \data_ibus[4] , \subPort[4]_adj_115 , 
            \addrLo[3] , n5, clkQ_c_derived_27_enable_9, clkQ_c_derived_27_enable_5, 
            \subPort[5] , \data_ibus[6] , n7_adj_116, \data_ibus[7] , 
            n7_adj_117, \data_ibus[2] , n7_adj_118, \data_ibus[0] , 
            n7_adj_119, \data_es_bus[6] , \data_es_bus[7] , \data_es_bus[3] , 
            \data_es_bus[2] , \data_es_bus[1] , \data_es_bus[0] , GND_net) /* synthesis syn_module_defined=1 */ ;
    input [7:0]ExDataIn;
    input \sig[45] ;
    output IRQH_c;
    output S_c_1;
    output S_c_0;
    input clkE_c;
    input nIRQ_c;
    input VCC_net;
    input clkE_N_18;
    input clkQ_c;
    input \sig[44] ;
    input \sig[47] ;
    input \sig[46] ;
    input clkQ_c__inv;
    input nReset2;
    input nReset1;
    input \sig[43] ;
    output \sig[35] ;
    output \sig[34] ;
    output \sig[33] ;
    output \sig[32] ;
    output \sig[94] ;
    output \sig[93] ;
    output \sig[91] ;
    output \sig[90] ;
    output \sig[89] ;
    output \sig[88] ;
    output \sig[87] ;
    output \sig[86] ;
    output \sig[85] ;
    output \sig[84] ;
    output \sig[83] ;
    output \sig[82] ;
    output \sig[81] ;
    output \sig[80] ;
    output \sig[79] ;
    input \data_ibus[1] ;
    output n7;
    output \sig[78] ;
    output \sig[77] ;
    output \sig[76] ;
    output \sig[75] ;
    output \sig[74] ;
    output \sig[73] ;
    output \sig[72] ;
    input \subPort[4] ;
    output \outreg[1] ;
    output \InternalDataBus[4] ;
    input \addrLo[4] ;
    input \addrHi[4] ;
    output n68;
    input \subPort[4]_adj_109 ;
    input \subPort[4]_adj_110 ;
    output \outreg[2] ;
    output n5388;
    input \subPort[2] ;
    output n1;
    input \subPort[1] ;
    output n1_adj_111;
    input \subPort[7] ;
    output n1_adj_112;
    input \subPort[0] ;
    output n1_adj_113;
    input \subPort[6] ;
    output n1_adj_114;
    output n5389;
    input \data_ibus[4] ;
    input \subPort[4]_adj_115 ;
    input \addrLo[3] ;
    output n5;
    output clkQ_c_derived_27_enable_9;
    output clkQ_c_derived_27_enable_5;
    input \subPort[5] ;
    input \data_ibus[6] ;
    output n7_adj_116;
    input \data_ibus[7] ;
    output n7_adj_117;
    input \data_ibus[2] ;
    output n7_adj_118;
    input \data_ibus[0] ;
    output n7_adj_119;
    output \data_es_bus[6] ;
    output \data_es_bus[7] ;
    output \data_es_bus[3] ;
    output \data_es_bus[2] ;
    output \data_es_bus[1] ;
    output \data_es_bus[0] ;
    input GND_net;
    
    wire clkE_c /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(15[14:18])
    wire clkE_N_18 /* synthesis is_inv_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    wire clkQ_c /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    wire clkQ_c__inv /* synthesis is_inv_clock=1, is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    
    sequencer_s Sequencer_s (.ExDataIn({ExDataIn}), .\sig[45] (\sig[45] ), 
            .IRQH_c(IRQH_c), .S_c_1(S_c_1), .S_c_0(S_c_0), .clkE_c(clkE_c), 
            .nIRQ_c(nIRQ_c), .VCC_net(VCC_net), .clkE_N_18(clkE_N_18), 
            .clkQ_c(clkQ_c), .\sig[44] (\sig[44] ), .\sig[47] (\sig[47] ), 
            .\sig[46] (\sig[46] ), .clkQ_c__inv(clkQ_c__inv), .nReset2(nReset2), 
            .nReset1(nReset1), .\sig[43] (\sig[43] ), .\sig[35] (\sig[35] ), 
            .\sig[34] (\sig[34] ), .\sig[33] (\sig[33] ), .\sig[32] (\sig[32] ), 
            .\sig[94] (\sig[94] ), .\sig[93] (\sig[93] ), .\sig[91] (\sig[91] ), 
            .\sig[90] (\sig[90] ), .\sig[89] (\sig[89] ), .\sig[88] (\sig[88] ), 
            .\sig[87] (\sig[87] ), .\sig[86] (\sig[86] ), .\sig[85] (\sig[85] ), 
            .\sig[84] (\sig[84] ), .\sig[83] (\sig[83] ), .\sig[82] (\sig[82] ), 
            .\sig[81] (\sig[81] ), .\sig[80] (\sig[80] ), .\sig[79] (\sig[79] ), 
            .\data_ibus[1] (\data_ibus[1] ), .n7(n7), .\sig[78] (\sig[78] ), 
            .\sig[77] (\sig[77] ), .\sig[76] (\sig[76] ), .\sig[75] (\sig[75] ), 
            .\sig[74] (\sig[74] ), .\sig[73] (\sig[73] ), .\sig[72] (\sig[72] ), 
            .\subPort[4] (\subPort[4] ), .\outreg[1] (\outreg[1] ), .\InternalDataBus[4] (\InternalDataBus[4] ), 
            .\addrLo[4] (\addrLo[4] ), .\addrHi[4] (\addrHi[4] ), .n68(n68), 
            .\subPort[4]_adj_98 (\subPort[4]_adj_109 ), .\subPort[4]_adj_99 (\subPort[4]_adj_110 ), 
            .\outreg[2] (\outreg[2] ), .n5388(n5388), .\subPort[2] (\subPort[2] ), 
            .n1(n1), .\subPort[1] (\subPort[1] ), .n1_adj_100(n1_adj_111), 
            .\subPort[7] (\subPort[7] ), .n1_adj_101(n1_adj_112), .\subPort[0] (\subPort[0] ), 
            .n1_adj_102(n1_adj_113), .\subPort[6] (\subPort[6] ), .n1_adj_103(n1_adj_114), 
            .n5389(n5389), .\data_ibus[4] (\data_ibus[4] ), .\subPort[4]_adj_104 (\subPort[4]_adj_115 ), 
            .\addrLo[3] (\addrLo[3] ), .n5(n5), .clkQ_c_derived_27_enable_9(clkQ_c_derived_27_enable_9), 
            .clkQ_c_derived_27_enable_5(clkQ_c_derived_27_enable_5), .\subPort[5] (\subPort[5] ), 
            .\data_ibus[6] (\data_ibus[6] ), .n7_adj_105(n7_adj_116), .\data_ibus[7] (\data_ibus[7] ), 
            .n7_adj_106(n7_adj_117), .\data_ibus[2] (\data_ibus[2] ), .n7_adj_107(n7_adj_118), 
            .\data_ibus[0] (\data_ibus[0] ), .n7_adj_108(n7_adj_119), .\data_es_bus[6] (\data_es_bus[6] ), 
            .\data_es_bus[7] (\data_es_bus[7] ), .\data_es_bus[3] (\data_es_bus[3] ), 
            .\data_es_bus[2] (\data_es_bus[2] ), .\data_es_bus[1] (\data_es_bus[1] ), 
            .\data_es_bus[0] (\data_es_bus[0] ), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(85[13] 124[11])
    
endmodule
//
// Verilog Description of module sequencer_s
//

module sequencer_s (ExDataIn, \sig[45] , IRQH_c, S_c_1, S_c_0, clkE_c, 
            nIRQ_c, VCC_net, clkE_N_18, clkQ_c, \sig[44] , \sig[47] , 
            \sig[46] , clkQ_c__inv, nReset2, nReset1, \sig[43] , \sig[35] , 
            \sig[34] , \sig[33] , \sig[32] , \sig[94] , \sig[93] , 
            \sig[91] , \sig[90] , \sig[89] , \sig[88] , \sig[87] , 
            \sig[86] , \sig[85] , \sig[84] , \sig[83] , \sig[82] , 
            \sig[81] , \sig[80] , \sig[79] , \data_ibus[1] , n7, \sig[78] , 
            \sig[77] , \sig[76] , \sig[75] , \sig[74] , \sig[73] , 
            \sig[72] , \subPort[4] , \outreg[1] , \InternalDataBus[4] , 
            \addrLo[4] , \addrHi[4] , n68, \subPort[4]_adj_98 , \subPort[4]_adj_99 , 
            \outreg[2] , n5388, \subPort[2] , n1, \subPort[1] , n1_adj_100, 
            \subPort[7] , n1_adj_101, \subPort[0] , n1_adj_102, \subPort[6] , 
            n1_adj_103, n5389, \data_ibus[4] , \subPort[4]_adj_104 , 
            \addrLo[3] , n5, clkQ_c_derived_27_enable_9, clkQ_c_derived_27_enable_5, 
            \subPort[5] , \data_ibus[6] , n7_adj_105, \data_ibus[7] , 
            n7_adj_106, \data_ibus[2] , n7_adj_107, \data_ibus[0] , 
            n7_adj_108, \data_es_bus[6] , \data_es_bus[7] , \data_es_bus[3] , 
            \data_es_bus[2] , \data_es_bus[1] , \data_es_bus[0] , GND_net) /* synthesis syn_module_defined=1 */ ;
    input [7:0]ExDataIn;
    input \sig[45] ;
    output IRQH_c;
    output S_c_1;
    output S_c_0;
    input clkE_c;
    input nIRQ_c;
    input VCC_net;
    input clkE_N_18;
    input clkQ_c;
    input \sig[44] ;
    input \sig[47] ;
    input \sig[46] ;
    input clkQ_c__inv;
    input nReset2;
    input nReset1;
    input \sig[43] ;
    output \sig[35] ;
    output \sig[34] ;
    output \sig[33] ;
    output \sig[32] ;
    output \sig[94] ;
    output \sig[93] ;
    output \sig[91] ;
    output \sig[90] ;
    output \sig[89] ;
    output \sig[88] ;
    output \sig[87] ;
    output \sig[86] ;
    output \sig[85] ;
    output \sig[84] ;
    output \sig[83] ;
    output \sig[82] ;
    output \sig[81] ;
    output \sig[80] ;
    output \sig[79] ;
    input \data_ibus[1] ;
    output n7;
    output \sig[78] ;
    output \sig[77] ;
    output \sig[76] ;
    output \sig[75] ;
    output \sig[74] ;
    output \sig[73] ;
    output \sig[72] ;
    input \subPort[4] ;
    output \outreg[1] ;
    output \InternalDataBus[4] ;
    input \addrLo[4] ;
    input \addrHi[4] ;
    output n68;
    input \subPort[4]_adj_98 ;
    input \subPort[4]_adj_99 ;
    output \outreg[2] ;
    output n5388;
    input \subPort[2] ;
    output n1;
    input \subPort[1] ;
    output n1_adj_100;
    input \subPort[7] ;
    output n1_adj_101;
    input \subPort[0] ;
    output n1_adj_102;
    input \subPort[6] ;
    output n1_adj_103;
    output n5389;
    input \data_ibus[4] ;
    input \subPort[4]_adj_104 ;
    input \addrLo[3] ;
    output n5;
    output clkQ_c_derived_27_enable_9;
    output clkQ_c_derived_27_enable_5;
    input \subPort[5] ;
    input \data_ibus[6] ;
    output n7_adj_105;
    input \data_ibus[7] ;
    output n7_adj_106;
    input \data_ibus[2] ;
    output n7_adj_107;
    input \data_ibus[0] ;
    output n7_adj_108;
    output \data_es_bus[6] ;
    output \data_es_bus[7] ;
    output \data_es_bus[3] ;
    output \data_es_bus[2] ;
    output \data_es_bus[1] ;
    output \data_es_bus[0] ;
    input GND_net;
    
    wire clkE_c /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(15[14:18])
    wire clkE_N_18 /* synthesis is_inv_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    wire N_14 /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(66[6:10])
    wire clkQ_c /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    wire [127:0]sig /* synthesis is_inv_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/core.v(20[21:24])
    wire clkQ_c__inv /* synthesis is_inv_clock=1, is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    wire N_28 /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(78[6:10])
    
    wire N_46, N_29, N_30, JG, N_38, N_47, JL, N_40, N_35, 
        N_36, N_42, N_43, N_8, N_44, N_45, N_2, N_11, N_37, 
        N_9, N_12, N_13, N_22, N_16;
    wire [31:0]UM;   // v:/cpu2908/fpga/machxo2/sequencer.v(21[20:22])
    wire [31:0]XD;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(31[15:17])
    
    wire N_10, N_21, N_4, n4975, n4976;
    wire [7:0]subPort;   // v:/cpu2908/fpga/machxo2/register.v(49[19:26])
    wire [7:0]DataInSel1;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(36[14:24])
    wire [7:0]uromIDX_A;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(33[14:23])
    wire [7:0]data_es_bus;   // v:/cpu2908/fpga/machxo2/core.v(51[12:23])
    wire [0:9]CT;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(7[14:16])
    wire [0:9]idx;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(14[14:17])
    wire [0:7]uromIDX;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(30[14:21])
    
    AND3 I114 (.A(N_29), .B(N_30), .C(ExDataIn[3]), .Z(N_46)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(85[13] 124[11])
    AND3 I23 (.A(JG), .B(N_46), .C(ExDataIn[0]), .Z(N_38)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(85[13] 124[11])
    AND3 I24 (.A(JL), .B(N_46), .C(N_47), .Z(N_40)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(85[13] 124[11])
    XOR2 I115 (.A(ExDataIn[0]), .B(N_35), .Z(N_36)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(86[6:48])
    AND4 I116 (.A(N_42), .B(ExDataIn[5]), .C(ExDataIn[6]), .D(ExDataIn[7]), 
         .Z(N_43)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(85[13] 124[11])
    AND4 I10 (.A(IRQH_c), .B(\sig[45] ), .C(S_c_0), .D(S_c_1), .Z(N_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(85[13] 124[11])
    OR2 I22 (.A(N_46), .B(N_44), .Z(N_45)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(120[5:41])
    INV I34 (.A(ExDataIn[0]), .Z(N_47)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(85[13] 124[11])
    FD1P3DX IRQCtrl (.D(nIRQ_c), .SP(VCC_net), .CK(clkE_c), .CD(N_2), 
            .Q(IRQH_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(152[9:67])
    defparam IRQCtrl.GSR = "DISABLED";
    FD1P3DX I46 (.D(sig[6]), .SP(VCC_net), .CK(clkE_N_18), .CD(N_11), 
            .Q(N_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(153[9:68])
    defparam I46.GSR = "DISABLED";
    FD1P3AY I109 (.D(sig[6]), .SP(VCC_net), .CK(clkQ_c), .Q(sig[1])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(94[9:72])
    defparam I109.GSR = "ENABLED";
    XOR2 I27 (.A(\sig[44] ), .B(\sig[47] ), .Z(JL)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(87[6:50])
    OR3 I21 (.A(N_40), .B(N_38), .C(N_37), .Z(sig[41])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(85[13] 124[11])
    NR2 I29 (.A(JL), .B(\sig[46] ), .Z(JG)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(85[13] 124[11])
    FD1P3AX Bit1 (.D(N_9), .SP(VCC_net), .CK(sig[0]), .Q(S_c_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(151[9:70])
    defparam Bit1.GSR = "ENABLED";
    OR2 I110 (.A(N_13), .B(N_12), .Z(N_22)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(121[5:42])
    OR2 I48 (.A(clkE_c), .B(N_16), .Z(sig[4])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(122[5:42])
    OR2 I100 (.A(UM[8]), .B(UM[14]), .Z(XD[17])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(123[5:46])
    OR2 I8 (.A(N_10), .B(N_8), .Z(N_9)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(124[5:38])
    AND2 I117 (.A(N_45), .B(N_43), .Z(sig[42])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(125[6:46])
    AND2 I25 (.A(N_44), .B(N_36), .Z(N_37)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(126[6:42])
    AND2 I112 (.A(clkQ_c__inv), .B(nReset2), .Z(N_28)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(127[6:44])
    AND2 I49 (.A(nReset1), .B(clkQ_c__inv), .Z(N_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(128[6:42])
    AND2 I101 (.A(N_21), .B(UM[19]), .Z(XD[12])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(129[6:45])
    AND2 I11 (.A(N_12), .B(S_c_1), .Z(N_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(130[6:41])
    AND2 I9 (.A(N_13), .B(S_c_0), .Z(N_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(131[6:41])
    INV I118 (.A(ExDataIn[1]), .Z(N_29)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(85[13] 124[11])
    INV I119 (.A(ExDataIn[2]), .Z(N_30)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(85[13] 124[11])
    INV I120 (.A(ExDataIn[4]), .Z(N_42)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(85[13] 124[11])
    INV I32 (.A(ExDataIn[3]), .Z(N_44)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(85[13] 124[11])
    INV I111 (.A(N_8), .Z(N_4)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(85[13] 124[11])
    INV I102 (.A(UM[8]), .Z(N_21)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(85[13] 124[11])
    INV I51 (.A(N_14), .Z(sig[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(85[13] 124[11])
    INV I50 (.A(N_16), .Z(N_11)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(85[13] 124[11])
    INV I5 (.A(S_c_0), .Z(N_12)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(85[13] 124[11])
    INV I6 (.A(S_c_1), .Z(N_13)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(85[13] 124[11])
    PFUMX i4480 (.BLUT(n4975), .ALUT(n4976), .C0(ExDataIn[2]), .Z(N_35));
    FD1P3AX Bit0 (.D(N_4), .SP(VCC_net), .CK(sig[0]), .Q(S_c_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=11, LSE_LLINE=85, LSE_RLINE=124 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(154[9:70])
    defparam Bit0.GSR = "ENABLED";
    LUT4 i4478_3_lut (.A(\sig[43] ), .B(\sig[44] ), .C(ExDataIn[1]), .Z(n4975)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(85[13] 124[11])
    defparam i4478_3_lut.init = 16'hcaca;
    LUT4 i4479_3_lut (.A(\sig[46] ), .B(\sig[47] ), .C(ExDataIn[1]), .Z(n4976)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(85[13] 124[11])
    defparam i4479_3_lut.init = 16'hcaca;
    register8_U6 tempReg (.subPort({subPort}), .clkE_N_18(clkE_N_18), .ExDataIn({ExDataIn})) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(97[11] 98[39])
    Mux2_1x8 I97 (.ExDataIn({ExDataIn}), .subPort({subPort}), .\sig[92] (sig[92]), 
            .DataInSel1({DataInSel1})) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(116[10] 117[34])
    jccSelector I82 (.\ExDataIn[3] (ExDataIn[3]), .\sig[42] (sig[42]), .\uromIDX_A[3] (uromIDX_A[3]), 
            .\ExDataIn[2] (ExDataIn[2]), .\uromIDX_A[2] (uromIDX_A[2]), 
            .\ExDataIn[1] (ExDataIn[1]), .\uromIDX_A[1] (uromIDX_A[1]), 
            .\ExDataIn[0] (ExDataIn[0]), .\sig[41] (sig[41]), .\uromIDX_A[0] (uromIDX_A[0])) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(101[13] 102[41])
    register32 I62 (.\sig[35] (\sig[35] ), .clkE_N_18(clkE_N_18), .\UM[2] (UM[2]), 
            .\sig[34] (\sig[34] ), .\UM[3] (UM[3]), .\sig[33] (\sig[33] ), 
            .\UM[4] (UM[4]), .\sig[32] (\sig[32] ), .\UM[5] (UM[5]), .\sig[94] (\sig[94] ), 
            .\UM[9] (UM[9]), .\sig[93] (\sig[93] ), .\UM[10] (UM[10]), 
            .\sig[92] (sig[92]), .\UM[11] (UM[11]), .\sig[91] (\sig[91] ), 
            .\UM[12] (UM[12]), .\sig[90] (\sig[90] ), .\UM[13] (UM[13]), 
            .\sig[89] (\sig[89] ), .\XD[17] (XD[17]), .\sig[88] (\sig[88] ), 
            .\UM[15] (UM[15]), .\sig[87] (\sig[87] ), .\UM[16] (UM[16]), 
            .\sig[86] (\sig[86] ), .\UM[17] (UM[17]), .\sig[85] (\sig[85] ), 
            .\UM[18] (UM[18]), .\sig[84] (\sig[84] ), .\XD[12] (XD[12]), 
            .\sig[83] (\sig[83] ), .\UM[20] (UM[20]), .\sig[82] (\sig[82] ), 
            .\UM[21] (UM[21]), .\sig[81] (\sig[81] ), .\UM[22] (UM[22]), 
            .\sig[80] (\sig[80] ), .\UM[23] (UM[23]), .\sig[79] (\sig[79] ), 
            .\UM[24] (UM[24]), .\data_ibus[1] (\data_ibus[1] ), .n7(n7), 
            .\sig[78] (\sig[78] ), .\UM[25] (UM[25]), .\sig[77] (\sig[77] ), 
            .\UM[26] (UM[26]), .\sig[76] (\sig[76] ), .\UM[27] (UM[27]), 
            .\sig[75] (\sig[75] ), .\UM[28] (UM[28]), .\sig[74] (\sig[74] ), 
            .\UM[29] (UM[29]), .\sig[73] (\sig[73] ), .\UM[30] (UM[30]), 
            .\sig[72] (\sig[72] ), .\UM[31] (UM[31]), .\subPort[4] (\subPort[4] ), 
            .\outreg[1] (\outreg[1] ), .\InternalDataBus[4] (\InternalDataBus[4] ), 
            .\addrLo[4] (\addrLo[4] ), .\addrHi[4] (\addrHi[4] ), .n68(n68), 
            .\subPort[4]_adj_87 (\subPort[4]_adj_98 ), .\subPort[4]_adj_88 (\subPort[4]_adj_99 ), 
            .\data_es_bus[5] (data_es_bus[5]), .\outreg[2] (\outreg[2] ), 
            .n5388(n5388), .\subPort[2] (\subPort[2] ), .n1(n1), .\subPort[1] (\subPort[1] ), 
            .n1_adj_89(n1_adj_100), .\subPort[7] (\subPort[7] ), .n1_adj_90(n1_adj_101), 
            .\subPort[0] (\subPort[0] ), .n1_adj_91(n1_adj_102), .\subPort[6] (\subPort[6] ), 
            .n1_adj_92(n1_adj_103), .n5389(n5389), .\data_ibus[4] (\data_ibus[4] ), 
            .\subPort[4]_adj_93 (\subPort[4]_adj_104 ), .\addrLo[3] (\addrLo[3] ), 
            .n5(n5), .\data_es_bus[4] (data_es_bus[4]), .clkQ_c_derived_27_enable_9(clkQ_c_derived_27_enable_9), 
            .clkQ_c_derived_27_enable_5(clkQ_c_derived_27_enable_5), .\subPort[5] (\subPort[5] ), 
            .\data_ibus[6] (\data_ibus[6] ), .n7_adj_94(n7_adj_105), .\data_ibus[7] (\data_ibus[7] ), 
            .n7_adj_95(n7_adj_106), .\data_ibus[2] (\data_ibus[2] ), .n7_adj_96(n7_adj_107), 
            .\data_ibus[0] (\data_ibus[0] ), .n7_adj_97(n7_adj_108)) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(104[12] 105[29])
    Mux2_1x8_U7 I59 (.DataInSel1({DataInSel1}), .\UM[15] (UM[15]), .\UM[8] (UM[8]), 
            .data_es_bus({\data_es_bus[7] , \data_es_bus[6] , data_es_bus[5:4], 
            \data_es_bus[3] , \data_es_bus[2] , \data_es_bus[1] , \data_es_bus[0] }), 
            .\UM[14] (UM[14]), .\UM[16] (UM[16]), .\UM[17] (UM[17]), .\UM[18] (UM[18]), 
            .\UM[19] (UM[19]), .\UM[20] (UM[20]), .\UM[21] (UM[21])) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(112[10] 113[110])
    uromCounter I45 (.CT({CT}), .\sig[4] (sig[4]), .idx({idx}), .\sig[1] (sig[1]), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(106[13] 107[85])
    Mux2_1x8_U8 I33 (.\ExDataIn[6] (ExDataIn[6]), .VCC_net(VCC_net), .N_22(N_22), 
            .uromIDX({uromIDX}), .\ExDataIn[7] (ExDataIn[7]), .\ExDataIn[5] (ExDataIn[5]), 
            .\ExDataIn[4] (ExDataIn[4]), .GND_net(GND_net), .\uromIDX_A[3] (uromIDX_A[3]), 
            .\uromIDX_A[2] (uromIDX_A[2]), .\uromIDX_A[1] (uromIDX_A[1]), 
            .S_c_1(S_c_1), .\uromIDX_A[0] (uromIDX_A[0]), .S_c_0(S_c_0)) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(114[10] 115[110])
    urom_TBL I107 (.uromIDX({uromIDX}), .idx({idx})) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(91[10:199])
    uromd I105 (.CT({CT}), .N_28(N_28), .VCC_net(VCC_net), .GND_net(GND_net), 
          .\sig[6] (sig[6]), .\UM[2] (UM[2]), .\UM[3] (UM[3]), .\UM[4] (UM[4]), 
          .\UM[14] (UM[14]), .\UM[15] (UM[15]), .\UM[16] (UM[16]), .\UM[17] (UM[17]), 
          .\UM[18] (UM[18]), .\UM[19] (UM[19]), .\UM[20] (UM[20]), .\UM[21] (UM[21]), 
          .\UM[22] (UM[22]), .\UM[23] (UM[23]), .\UM[24] (UM[24]), .\UM[25] (UM[25]), 
          .\UM[26] (UM[26]), .\UM[27] (UM[27]), .\UM[28] (UM[28]), .\UM[29] (UM[29]), 
          .\UM[30] (UM[30]), .\UM[31] (UM[31]), .\UM[5] (UM[5]), .\UM[8] (UM[8]), 
          .\UM[9] (UM[9]), .\UM[10] (UM[10]), .\UM[11] (UM[11]), .\UM[12] (UM[12]), 
          .\UM[13] (UM[13])) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(92[7] 93[248])
    
endmodule
//
// Verilog Description of module register8_U6
//

module register8_U6 (subPort, clkE_N_18, ExDataIn) /* synthesis syn_module_defined=1 */ ;
    output [7:0]subPort;
    input clkE_N_18;
    input [7:0]ExDataIn;
    
    wire clkE_N_18 /* synthesis is_inv_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    
    FD1S3AX R_i7 (.D(ExDataIn[7]), .CK(clkE_N_18), .Q(subPort[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=39, LSE_LLINE=97, LSE_RLINE=98 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i7.GSR = "DISABLED";
    FD1S3AX R_i6 (.D(ExDataIn[6]), .CK(clkE_N_18), .Q(subPort[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=39, LSE_LLINE=97, LSE_RLINE=98 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i6.GSR = "DISABLED";
    FD1S3AX R_i5 (.D(ExDataIn[5]), .CK(clkE_N_18), .Q(subPort[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=39, LSE_LLINE=97, LSE_RLINE=98 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i5.GSR = "DISABLED";
    FD1S3AX R_i4 (.D(ExDataIn[4]), .CK(clkE_N_18), .Q(subPort[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=39, LSE_LLINE=97, LSE_RLINE=98 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i4.GSR = "DISABLED";
    FD1S3AX R_i3 (.D(ExDataIn[3]), .CK(clkE_N_18), .Q(subPort[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=39, LSE_LLINE=97, LSE_RLINE=98 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i3.GSR = "DISABLED";
    FD1S3AX R_i2 (.D(ExDataIn[2]), .CK(clkE_N_18), .Q(subPort[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=39, LSE_LLINE=97, LSE_RLINE=98 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i2.GSR = "DISABLED";
    FD1S3AX R_i1 (.D(ExDataIn[1]), .CK(clkE_N_18), .Q(subPort[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=39, LSE_LLINE=97, LSE_RLINE=98 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i1.GSR = "DISABLED";
    FD1S3AX R_i0 (.D(ExDataIn[0]), .CK(clkE_N_18), .Q(subPort[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=39, LSE_LLINE=97, LSE_RLINE=98 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module Mux2_1x8
//

module Mux2_1x8 (ExDataIn, subPort, \sig[92] , DataInSel1) /* synthesis syn_module_defined=1 */ ;
    input [7:0]ExDataIn;
    input [7:0]subPort;
    input \sig[92] ;
    output [7:0]DataInSel1;
    
    
    MUX21 I7 (.D0(ExDataIn[6]), .D1(subPort[6]), .SD(\sig[92] ), .Z(DataInSel1[6])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=34, LSE_LLINE=116, LSE_RLINE=117 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(116[10] 117[34])
    MUX21 I8 (.D0(ExDataIn[7]), .D1(subPort[7]), .SD(\sig[92] ), .Z(DataInSel1[7])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=34, LSE_LLINE=116, LSE_RLINE=117 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(116[10] 117[34])
    MUX21 I6 (.D0(ExDataIn[5]), .D1(subPort[5]), .SD(\sig[92] ), .Z(DataInSel1[5])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=34, LSE_LLINE=116, LSE_RLINE=117 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(116[10] 117[34])
    MUX21 I5 (.D0(ExDataIn[4]), .D1(subPort[4]), .SD(\sig[92] ), .Z(DataInSel1[4])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=34, LSE_LLINE=116, LSE_RLINE=117 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(116[10] 117[34])
    MUX21 I4 (.D0(ExDataIn[3]), .D1(subPort[3]), .SD(\sig[92] ), .Z(DataInSel1[3])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=34, LSE_LLINE=116, LSE_RLINE=117 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(116[10] 117[34])
    MUX21 I3 (.D0(ExDataIn[2]), .D1(subPort[2]), .SD(\sig[92] ), .Z(DataInSel1[2])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=34, LSE_LLINE=116, LSE_RLINE=117 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(116[10] 117[34])
    MUX21 I2 (.D0(ExDataIn[1]), .D1(subPort[1]), .SD(\sig[92] ), .Z(DataInSel1[1])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=34, LSE_LLINE=116, LSE_RLINE=117 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(116[10] 117[34])
    MUX21 I1 (.D0(ExDataIn[0]), .D1(subPort[0]), .SD(\sig[92] ), .Z(DataInSel1[0])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=34, LSE_LLINE=116, LSE_RLINE=117 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(116[10] 117[34])
    
endmodule
//
// Verilog Description of module jccSelector
//

module jccSelector (\ExDataIn[3] , \sig[42] , \uromIDX_A[3] , \ExDataIn[2] , 
            \uromIDX_A[2] , \ExDataIn[1] , \uromIDX_A[1] , \ExDataIn[0] , 
            \sig[41] , \uromIDX_A[0] ) /* synthesis syn_module_defined=1 */ ;
    input \ExDataIn[3] ;
    input \sig[42] ;
    output \uromIDX_A[3] ;
    input \ExDataIn[2] ;
    output \uromIDX_A[2] ;
    input \ExDataIn[1] ;
    output \uromIDX_A[1] ;
    input \ExDataIn[0] ;
    input \sig[41] ;
    output \uromIDX_A[0] ;
    
    
    LUT4 i2658_2_lut (.A(\ExDataIn[3] ), .B(\sig[42] ), .Z(\uromIDX_A[3] )) /* synthesis lut_function=(A+(B)) */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(178[15] 179[68])
    defparam i2658_2_lut.init = 16'heeee;
    LUT4 i2659_2_lut (.A(\ExDataIn[2] ), .B(\sig[42] ), .Z(\uromIDX_A[2] )) /* synthesis lut_function=(A+(B)) */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(178[15] 179[68])
    defparam i2659_2_lut.init = 16'heeee;
    LUT4 i2660_2_lut (.A(\ExDataIn[1] ), .B(\sig[42] ), .Z(\uromIDX_A[1] )) /* synthesis lut_function=(A+(B)) */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(178[15] 179[68])
    defparam i2660_2_lut.init = 16'heeee;
    LUT4 noJump_I_0_3_lut (.A(\ExDataIn[0] ), .B(\sig[41] ), .C(\sig[42] ), 
         .Z(\uromIDX_A[0] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/sequencer.v(178[15] 179[68])
    defparam noJump_I_0_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module register32
//

module register32 (\sig[35] , clkE_N_18, \UM[2] , \sig[34] , \UM[3] , 
            \sig[33] , \UM[4] , \sig[32] , \UM[5] , \sig[94] , \UM[9] , 
            \sig[93] , \UM[10] , \sig[92] , \UM[11] , \sig[91] , \UM[12] , 
            \sig[90] , \UM[13] , \sig[89] , \XD[17] , \sig[88] , \UM[15] , 
            \sig[87] , \UM[16] , \sig[86] , \UM[17] , \sig[85] , \UM[18] , 
            \sig[84] , \XD[12] , \sig[83] , \UM[20] , \sig[82] , \UM[21] , 
            \sig[81] , \UM[22] , \sig[80] , \UM[23] , \sig[79] , \UM[24] , 
            \data_ibus[1] , n7, \sig[78] , \UM[25] , \sig[77] , \UM[26] , 
            \sig[76] , \UM[27] , \sig[75] , \UM[28] , \sig[74] , \UM[29] , 
            \sig[73] , \UM[30] , \sig[72] , \UM[31] , \subPort[4] , 
            \outreg[1] , \InternalDataBus[4] , \addrLo[4] , \addrHi[4] , 
            n68, \subPort[4]_adj_87 , \subPort[4]_adj_88 , \data_es_bus[5] , 
            \outreg[2] , n5388, \subPort[2] , n1, \subPort[1] , n1_adj_89, 
            \subPort[7] , n1_adj_90, \subPort[0] , n1_adj_91, \subPort[6] , 
            n1_adj_92, n5389, \data_ibus[4] , \subPort[4]_adj_93 , \addrLo[3] , 
            n5, \data_es_bus[4] , clkQ_c_derived_27_enable_9, clkQ_c_derived_27_enable_5, 
            \subPort[5] , \data_ibus[6] , n7_adj_94, \data_ibus[7] , 
            n7_adj_95, \data_ibus[2] , n7_adj_96, \data_ibus[0] , n7_adj_97) /* synthesis syn_module_defined=1 */ ;
    output \sig[35] ;
    input clkE_N_18;
    input \UM[2] ;
    output \sig[34] ;
    input \UM[3] ;
    output \sig[33] ;
    input \UM[4] ;
    output \sig[32] ;
    input \UM[5] ;
    output \sig[94] ;
    input \UM[9] ;
    output \sig[93] ;
    input \UM[10] ;
    output \sig[92] ;
    input \UM[11] ;
    output \sig[91] ;
    input \UM[12] ;
    output \sig[90] ;
    input \UM[13] ;
    output \sig[89] ;
    input \XD[17] ;
    output \sig[88] ;
    input \UM[15] ;
    output \sig[87] ;
    input \UM[16] ;
    output \sig[86] ;
    input \UM[17] ;
    output \sig[85] ;
    input \UM[18] ;
    output \sig[84] ;
    input \XD[12] ;
    output \sig[83] ;
    input \UM[20] ;
    output \sig[82] ;
    input \UM[21] ;
    output \sig[81] ;
    input \UM[22] ;
    output \sig[80] ;
    input \UM[23] ;
    output \sig[79] ;
    input \UM[24] ;
    input \data_ibus[1] ;
    output n7;
    output \sig[78] ;
    input \UM[25] ;
    output \sig[77] ;
    input \UM[26] ;
    output \sig[76] ;
    input \UM[27] ;
    output \sig[75] ;
    input \UM[28] ;
    output \sig[74] ;
    input \UM[29] ;
    output \sig[73] ;
    input \UM[30] ;
    output \sig[72] ;
    input \UM[31] ;
    input \subPort[4] ;
    output \outreg[1] ;
    output \InternalDataBus[4] ;
    input \addrLo[4] ;
    input \addrHi[4] ;
    output n68;
    input \subPort[4]_adj_87 ;
    input \subPort[4]_adj_88 ;
    input \data_es_bus[5] ;
    output \outreg[2] ;
    output n5388;
    input \subPort[2] ;
    output n1;
    input \subPort[1] ;
    output n1_adj_89;
    input \subPort[7] ;
    output n1_adj_90;
    input \subPort[0] ;
    output n1_adj_91;
    input \subPort[6] ;
    output n1_adj_92;
    output n5389;
    input \data_ibus[4] ;
    input \subPort[4]_adj_93 ;
    input \addrLo[3] ;
    output n5;
    input \data_es_bus[4] ;
    output clkQ_c_derived_27_enable_9;
    output clkQ_c_derived_27_enable_5;
    input \subPort[5] ;
    input \data_ibus[6] ;
    output n7_adj_94;
    input \data_ibus[7] ;
    output n7_adj_95;
    input \data_ibus[2] ;
    output n7_adj_96;
    input \data_ibus[0] ;
    output n7_adj_97;
    
    wire clkE_N_18 /* synthesis is_inv_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    
    wire n5452, n5416, n5451, n73, n84, n5450, n5414, n5415;
    
    FD1S3AX R_i27 (.D(\UM[2] ), .CK(clkE_N_18), .Q(\sig[35] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i27.GSR = "ENABLED";
    FD1S3AX R_i26 (.D(\UM[3] ), .CK(clkE_N_18), .Q(\sig[34] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i26.GSR = "ENABLED";
    FD1S3AX R_i25 (.D(\UM[4] ), .CK(clkE_N_18), .Q(\sig[33] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i25.GSR = "ENABLED";
    FD1S3AX R_i24 (.D(\UM[5] ), .CK(clkE_N_18), .Q(\sig[32] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i24.GSR = "ENABLED";
    FD1S3AX R_i23 (.D(\UM[9] ), .CK(clkE_N_18), .Q(\sig[94] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i23.GSR = "ENABLED";
    FD1S3AX R_i22 (.D(\UM[10] ), .CK(clkE_N_18), .Q(\sig[93] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i22.GSR = "ENABLED";
    FD1S3AX R_i21 (.D(\UM[11] ), .CK(clkE_N_18), .Q(\sig[92] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i21.GSR = "ENABLED";
    FD1S3AX R_i20 (.D(\UM[12] ), .CK(clkE_N_18), .Q(\sig[91] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i20.GSR = "ENABLED";
    FD1S3AX R_i19 (.D(\UM[13] ), .CK(clkE_N_18), .Q(\sig[90] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i19.GSR = "ENABLED";
    FD1S3AX R_i18 (.D(\XD[17] ), .CK(clkE_N_18), .Q(\sig[89] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i18.GSR = "ENABLED";
    FD1S3AX R_i17 (.D(\UM[15] ), .CK(clkE_N_18), .Q(\sig[88] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i17.GSR = "ENABLED";
    FD1S3AX R_i16 (.D(\UM[16] ), .CK(clkE_N_18), .Q(\sig[87] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i16.GSR = "ENABLED";
    FD1S3AX R_i15 (.D(\UM[17] ), .CK(clkE_N_18), .Q(\sig[86] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i15.GSR = "ENABLED";
    FD1S3AX R_i14 (.D(\UM[18] ), .CK(clkE_N_18), .Q(\sig[85] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i14.GSR = "ENABLED";
    FD1S3AX R_i13 (.D(\XD[12] ), .CK(clkE_N_18), .Q(\sig[84] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i13.GSR = "ENABLED";
    FD1S3AX R_i12 (.D(\UM[20] ), .CK(clkE_N_18), .Q(\sig[83] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i12.GSR = "ENABLED";
    FD1S3AX R_i11 (.D(\UM[21] ), .CK(clkE_N_18), .Q(\sig[82] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i11.GSR = "ENABLED";
    FD1S3AX R_i10 (.D(\UM[22] ), .CK(clkE_N_18), .Q(\sig[81] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i10.GSR = "ENABLED";
    FD1S3AX R_i9 (.D(\UM[23] ), .CK(clkE_N_18), .Q(\sig[80] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i9.GSR = "ENABLED";
    FD1S3AX R_i8 (.D(\UM[24] ), .CK(clkE_N_18), .Q(\sig[79] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i8.GSR = "ENABLED";
    LUT4 Select_249_i7_2_lut_3_lut_4_lut (.A(\sig[80] ), .B(\sig[81] ), 
         .C(\data_ibus[1] ), .D(\sig[79] ), .Z(n7)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // v:/cpu2908/fpga/machxo2/core.v(20[21:24])
    defparam Select_249_i7_2_lut_3_lut_4_lut.init = 16'h8000;
    FD1S3AX R_i7 (.D(\UM[25] ), .CK(clkE_N_18), .Q(\sig[78] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i7.GSR = "ENABLED";
    FD1S3AX R_i6 (.D(\UM[26] ), .CK(clkE_N_18), .Q(\sig[77] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i6.GSR = "ENABLED";
    FD1S3AX R_i5 (.D(\UM[27] ), .CK(clkE_N_18), .Q(\sig[76] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i5.GSR = "ENABLED";
    FD1S3AX R_i4 (.D(\UM[28] ), .CK(clkE_N_18), .Q(\sig[75] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i4.GSR = "ENABLED";
    FD1S3AX R_i3 (.D(\UM[29] ), .CK(clkE_N_18), .Q(\sig[74] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i3.GSR = "ENABLED";
    FD1S3AX R_i2 (.D(\UM[30] ), .CK(clkE_N_18), .Q(\sig[73] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i2.GSR = "ENABLED";
    FD1S3AX R_i1 (.D(\UM[31] ), .CK(clkE_N_18), .Q(\sig[72] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=12, LSE_RCOL=29, LSE_LLINE=104, LSE_RLINE=105 */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam R_i1.GSR = "ENABLED";
    LUT4 i6_4_lut (.A(\subPort[4] ), .B(n5452), .C(n5416), .D(\outreg[1] ), 
         .Z(\InternalDataBus[4] )) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // v:/cpu2908/fpga/machxo2/core.v(20[21:24])
    defparam i6_4_lut.init = 16'hfefc;
    LUT4 i5_4_lut_then_4_lut (.A(\addrLo[4] ), .B(\addrHi[4] ), .C(\sig[80] ), 
         .D(\sig[79] ), .Z(n5451)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;   // v:/cpu2908/fpga/machxo2/core.v(20[21:24])
    defparam i5_4_lut_then_4_lut.init = 16'h0c0a;
    PFUMX i71 (.BLUT(n73), .ALUT(n84), .C0(\sig[79] ), .Z(n68));
    LUT4 i5_4_lut_else_4_lut (.A(\subPort[4]_adj_87 ), .B(\subPort[4]_adj_88 ), 
         .C(\sig[80] ), .D(\sig[79] ), .Z(n5450)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // v:/cpu2908/fpga/machxo2/core.v(20[21:24])
    defparam i5_4_lut_else_4_lut.init = 16'h00ca;
    LUT4 i1_2_lut_3_lut (.A(\sig[80] ), .B(\sig[81] ), .C(\data_es_bus[5] ), 
         .Z(n73)) /* synthesis lut_function=(A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/core.v(20[21:24])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_adj_98 (.A(\sig[80] ), .B(\sig[81] ), .C(\sig[79] ), 
         .Z(\outreg[2] )) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam i1_2_lut_3_lut_adj_98.init = 16'h0202;
    LUT4 i1_2_lut_rep_100_3_lut (.A(\sig[80] ), .B(\sig[81] ), .C(\sig[79] ), 
         .Z(n5388)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_100_3_lut.init = 16'hfefe;
    LUT4 Select_248_i1_2_lut_3_lut_4_lut (.A(\sig[80] ), .B(\sig[81] ), 
         .C(\subPort[2] ), .D(\sig[79] ), .Z(n1)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam Select_248_i1_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 Select_249_i1_2_lut_3_lut_4_lut (.A(\sig[80] ), .B(\sig[81] ), 
         .C(\subPort[1] ), .D(\sig[79] ), .Z(n1_adj_89)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam Select_249_i1_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 Select_243_i1_2_lut_3_lut_4_lut (.A(\sig[80] ), .B(\sig[81] ), 
         .C(\subPort[7] ), .D(\sig[79] ), .Z(n1_adj_90)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam Select_243_i1_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_adj_99 (.A(\sig[80] ), .B(\sig[81] ), .C(\sig[79] ), 
         .Z(\outreg[1] )) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_99.init = 16'h1010;
    LUT4 Select_250_i1_2_lut_3_lut_4_lut (.A(\sig[80] ), .B(\sig[81] ), 
         .C(\subPort[0] ), .D(\sig[79] ), .Z(n1_adj_91)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam Select_250_i1_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 Select_244_i1_2_lut_3_lut_4_lut (.A(\sig[80] ), .B(\sig[81] ), 
         .C(\subPort[6] ), .D(\sig[79] ), .Z(n1_adj_92)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam Select_244_i1_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_rep_101_3_lut (.A(\sig[81] ), .B(\sig[80] ), .C(\sig[79] ), 
         .Z(n5389)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam i1_2_lut_rep_101_3_lut.init = 16'h0202;
    PFUMX i4717 (.BLUT(n5414), .ALUT(n5415), .C0(\sig[79] ), .Z(n5416));
    LUT4 i1_3_lut_4_lut_then_4_lut (.A(\sig[81] ), .B(\sig[80] ), .C(\data_ibus[4] ), 
         .D(\subPort[4]_adj_93 ), .Z(n5415)) /* synthesis lut_function=(A (B (C))+!A (B (D))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam i1_3_lut_4_lut_then_4_lut.init = 16'hc480;
    LUT4 Select_247_i5_2_lut_3_lut_4_lut (.A(\sig[81] ), .B(\sig[80] ), 
         .C(\addrLo[3] ), .D(\sig[79] ), .Z(n5)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam Select_247_i5_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i1_3_lut_4_lut_else_4_lut (.A(\sig[81] ), .B(\sig[80] ), .C(\data_es_bus[4] ), 
         .Z(n5414)) /* synthesis lut_function=(A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam i1_3_lut_4_lut_else_4_lut.init = 16'h8080;
    LUT4 i414_1_lut_rep_109 (.A(\sig[89] ), .Z(clkQ_c_derived_27_enable_9)) /* synthesis lut_function=(!(A)) */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam i414_1_lut_rep_109.init = 16'h5555;
    LUT4 i415_2_lut_2_lut (.A(\sig[89] ), .B(\sig[88] ), .Z(clkQ_c_derived_27_enable_5)) /* synthesis lut_function=(!(A+!(B))) */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam i415_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_adj_100 (.A(\sig[80] ), .B(\sig[81] ), .C(\subPort[5] ), 
         .Z(n84)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // v:/cpu2908/fpga/machxo2/register.v(133[7] 135[5])
    defparam i1_2_lut_3_lut_adj_100.init = 16'h2020;
    LUT4 Select_244_i7_2_lut_3_lut_4_lut (.A(\sig[80] ), .B(\sig[81] ), 
         .C(\data_ibus[6] ), .D(\sig[79] ), .Z(n7_adj_94)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // v:/cpu2908/fpga/machxo2/core.v(20[21:24])
    defparam Select_244_i7_2_lut_3_lut_4_lut.init = 16'h8000;
    PFUMX i4741 (.BLUT(n5450), .ALUT(n5451), .C0(\sig[81] ), .Z(n5452));
    LUT4 Select_243_i7_2_lut_3_lut_4_lut (.A(\sig[80] ), .B(\sig[81] ), 
         .C(\data_ibus[7] ), .D(\sig[79] ), .Z(n7_adj_95)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // v:/cpu2908/fpga/machxo2/core.v(20[21:24])
    defparam Select_243_i7_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 Select_248_i7_2_lut_3_lut_4_lut (.A(\sig[80] ), .B(\sig[81] ), 
         .C(\data_ibus[2] ), .D(\sig[79] ), .Z(n7_adj_96)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // v:/cpu2908/fpga/machxo2/core.v(20[21:24])
    defparam Select_248_i7_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 Select_250_i7_2_lut_3_lut_4_lut (.A(\sig[80] ), .B(\sig[81] ), 
         .C(\data_ibus[0] ), .D(\sig[79] ), .Z(n7_adj_97)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // v:/cpu2908/fpga/machxo2/core.v(20[21:24])
    defparam Select_250_i7_2_lut_3_lut_4_lut.init = 16'h8000;
    
endmodule
//
// Verilog Description of module Mux2_1x8_U7
//

module Mux2_1x8_U7 (DataInSel1, \UM[15] , \UM[8] , data_es_bus, \UM[14] , 
            \UM[16] , \UM[17] , \UM[18] , \UM[19] , \UM[20] , \UM[21] ) /* synthesis syn_module_defined=1 */ ;
    input [7:0]DataInSel1;
    input \UM[15] ;
    input \UM[8] ;
    output [7:0]data_es_bus;
    input \UM[14] ;
    input \UM[16] ;
    input \UM[17] ;
    input \UM[18] ;
    input \UM[19] ;
    input \UM[20] ;
    input \UM[21] ;
    
    
    MUX21 I7 (.D0(DataInSel1[6]), .D1(\UM[15] ), .SD(\UM[8] ), .Z(data_es_bus[6])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=110, LSE_LLINE=112, LSE_RLINE=113 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(112[10] 113[110])
    MUX21 I8 (.D0(DataInSel1[7]), .D1(\UM[14] ), .SD(\UM[8] ), .Z(data_es_bus[7])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=110, LSE_LLINE=112, LSE_RLINE=113 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(112[10] 113[110])
    MUX21 I6 (.D0(DataInSel1[5]), .D1(\UM[16] ), .SD(\UM[8] ), .Z(data_es_bus[5])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=110, LSE_LLINE=112, LSE_RLINE=113 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(112[10] 113[110])
    MUX21 I5 (.D0(DataInSel1[4]), .D1(\UM[17] ), .SD(\UM[8] ), .Z(data_es_bus[4])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=110, LSE_LLINE=112, LSE_RLINE=113 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(112[10] 113[110])
    MUX21 I4 (.D0(DataInSel1[3]), .D1(\UM[18] ), .SD(\UM[8] ), .Z(data_es_bus[3])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=110, LSE_LLINE=112, LSE_RLINE=113 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(112[10] 113[110])
    MUX21 I3 (.D0(DataInSel1[2]), .D1(\UM[19] ), .SD(\UM[8] ), .Z(data_es_bus[2])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=110, LSE_LLINE=112, LSE_RLINE=113 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(112[10] 113[110])
    MUX21 I2 (.D0(DataInSel1[1]), .D1(\UM[20] ), .SD(\UM[8] ), .Z(data_es_bus[1])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=110, LSE_LLINE=112, LSE_RLINE=113 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(112[10] 113[110])
    MUX21 I1 (.D0(DataInSel1[0]), .D1(\UM[21] ), .SD(\UM[8] ), .Z(data_es_bus[0])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=110, LSE_LLINE=112, LSE_RLINE=113 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(112[10] 113[110])
    
endmodule
//
// Verilog Description of module uromCounter
//

module uromCounter (CT, \sig[4] , idx, \sig[1] , GND_net) /* synthesis syn_module_defined=1 */ ;
    output [0:9]CT;
    input \sig[4] ;
    input [0:9]idx;
    input \sig[1] ;
    input GND_net;
    
    wire \sig[4]  /* synthesis SET_AS_NETWORK=\nWR_I_0_84/sig[4], is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/core.v(20[21:24])
    wire [9:0]n57;
    wire [9:0]n45;
    
    wire n4652, n4653, n4654, n4656, n4655;
    
    FD1S3AX count_201__i9 (.D(n57[0]), .CK(\sig[4] ), .Q(CT[0])) /* synthesis syn_use_carry_chain=1 */ ;   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201__i9.GSR = "DISABLED";
    FD1S3AX count_201__i8 (.D(n57[1]), .CK(\sig[4] ), .Q(CT[1])) /* synthesis syn_use_carry_chain=1 */ ;   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201__i8.GSR = "DISABLED";
    FD1S3AX count_201__i7 (.D(n57[2]), .CK(\sig[4] ), .Q(CT[2])) /* synthesis syn_use_carry_chain=1 */ ;   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201__i7.GSR = "DISABLED";
    FD1S3AX count_201__i6 (.D(n57[3]), .CK(\sig[4] ), .Q(CT[3])) /* synthesis syn_use_carry_chain=1 */ ;   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201__i6.GSR = "DISABLED";
    FD1S3AX count_201__i5 (.D(n57[4]), .CK(\sig[4] ), .Q(CT[4])) /* synthesis syn_use_carry_chain=1 */ ;   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201__i5.GSR = "DISABLED";
    FD1S3AX count_201__i4 (.D(n57[5]), .CK(\sig[4] ), .Q(CT[5])) /* synthesis syn_use_carry_chain=1 */ ;   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201__i4.GSR = "DISABLED";
    FD1S3AX count_201__i3 (.D(n57[6]), .CK(\sig[4] ), .Q(CT[6])) /* synthesis syn_use_carry_chain=1 */ ;   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201__i3.GSR = "DISABLED";
    FD1S3AX count_201__i2 (.D(n57[7]), .CK(\sig[4] ), .Q(CT[7])) /* synthesis syn_use_carry_chain=1 */ ;   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201__i2.GSR = "DISABLED";
    FD1S3AX count_201__i1 (.D(n57[8]), .CK(\sig[4] ), .Q(CT[8])) /* synthesis syn_use_carry_chain=1 */ ;   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201__i1.GSR = "DISABLED";
    FD1S3AX count_201__i0 (.D(n57[9]), .CK(\sig[4] ), .Q(CT[9])) /* synthesis syn_use_carry_chain=1 */ ;   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201__i0.GSR = "DISABLED";
    LUT4 count_201_mux_6_i2_3_lut (.A(n45[1]), .B(idx[1]), .C(\sig[1] ), 
         .Z(n57[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201_mux_6_i2_3_lut.init = 16'hcaca;
    LUT4 count_201_mux_6_i3_3_lut (.A(n45[2]), .B(idx[2]), .C(\sig[1] ), 
         .Z(n57[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201_mux_6_i3_3_lut.init = 16'hcaca;
    LUT4 count_201_mux_6_i4_3_lut (.A(n45[3]), .B(idx[3]), .C(\sig[1] ), 
         .Z(n57[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201_mux_6_i4_3_lut.init = 16'hcaca;
    LUT4 count_201_mux_6_i5_3_lut (.A(n45[4]), .B(idx[4]), .C(\sig[1] ), 
         .Z(n57[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201_mux_6_i5_3_lut.init = 16'hcaca;
    LUT4 count_201_mux_6_i6_3_lut (.A(n45[5]), .B(idx[5]), .C(\sig[1] ), 
         .Z(n57[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201_mux_6_i6_3_lut.init = 16'hcaca;
    LUT4 count_201_mux_6_i7_3_lut (.A(n45[6]), .B(idx[6]), .C(\sig[1] ), 
         .Z(n57[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201_mux_6_i7_3_lut.init = 16'hcaca;
    LUT4 count_201_mux_6_i8_3_lut (.A(n45[7]), .B(idx[7]), .C(\sig[1] ), 
         .Z(n57[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201_mux_6_i8_3_lut.init = 16'hcaca;
    LUT4 count_201_mux_6_i9_3_lut (.A(n45[8]), .B(idx[8]), .C(\sig[1] ), 
         .Z(n57[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201_mux_6_i9_3_lut.init = 16'hcaca;
    LUT4 count_201_mux_6_i10_3_lut (.A(n45[9]), .B(idx[9]), .C(\sig[1] ), 
         .Z(n57[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201_mux_6_i10_3_lut.init = 16'hcaca;
    CCU2D count_201_add_4_3 (.A0(CT[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(CT[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4652), 
          .COUT(n4653), .S0(n45[1]), .S1(n45[2]));   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201_add_4_3.INIT0 = 16'hfaaa;
    defparam count_201_add_4_3.INIT1 = 16'hfaaa;
    defparam count_201_add_4_3.INJECT1_0 = "NO";
    defparam count_201_add_4_3.INJECT1_1 = "NO";
    CCU2D count_201_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(CT[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n4652), .S1(n45[0]));   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201_add_4_1.INIT0 = 16'hF000;
    defparam count_201_add_4_1.INIT1 = 16'h0555;
    defparam count_201_add_4_1.INJECT1_0 = "NO";
    defparam count_201_add_4_1.INJECT1_1 = "NO";
    CCU2D count_201_add_4_5 (.A0(CT[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(CT[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4653), 
          .COUT(n4654), .S0(n45[3]), .S1(n45[4]));   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201_add_4_5.INIT0 = 16'hfaaa;
    defparam count_201_add_4_5.INIT1 = 16'hfaaa;
    defparam count_201_add_4_5.INJECT1_0 = "NO";
    defparam count_201_add_4_5.INJECT1_1 = "NO";
    CCU2D count_201_add_4_11 (.A0(CT[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4656), .S0(n45[9]));   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201_add_4_11.INIT0 = 16'hfaaa;
    defparam count_201_add_4_11.INIT1 = 16'h0000;
    defparam count_201_add_4_11.INJECT1_0 = "NO";
    defparam count_201_add_4_11.INJECT1_1 = "NO";
    CCU2D count_201_add_4_9 (.A0(CT[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(CT[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4655), 
          .COUT(n4656), .S0(n45[7]), .S1(n45[8]));   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201_add_4_9.INIT0 = 16'hfaaa;
    defparam count_201_add_4_9.INIT1 = 16'hfaaa;
    defparam count_201_add_4_9.INJECT1_0 = "NO";
    defparam count_201_add_4_9.INJECT1_1 = "NO";
    CCU2D count_201_add_4_7 (.A0(CT[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(CT[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4654), 
          .COUT(n4655), .S0(n45[5]), .S1(n45[6]));   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201_add_4_7.INIT0 = 16'hfaaa;
    defparam count_201_add_4_7.INIT1 = 16'hfaaa;
    defparam count_201_add_4_7.INJECT1_0 = "NO";
    defparam count_201_add_4_7.INJECT1_1 = "NO";
    LUT4 count_201_mux_6_i1_3_lut (.A(n45[0]), .B(idx[0]), .C(\sig[1] ), 
         .Z(n57[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/uromcounter.v(14[16:29])
    defparam count_201_mux_6_i1_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module Mux2_1x8_U8
//

module Mux2_1x8_U8 (\ExDataIn[6] , VCC_net, N_22, uromIDX, \ExDataIn[7] , 
            \ExDataIn[5] , \ExDataIn[4] , GND_net, \uromIDX_A[3] , \uromIDX_A[2] , 
            \uromIDX_A[1] , S_c_1, \uromIDX_A[0] , S_c_0) /* synthesis syn_module_defined=1 */ ;
    input \ExDataIn[6] ;
    input VCC_net;
    input N_22;
    output [0:7]uromIDX;
    input \ExDataIn[7] ;
    input \ExDataIn[5] ;
    input \ExDataIn[4] ;
    input GND_net;
    input \uromIDX_A[3] ;
    input \uromIDX_A[2] ;
    input \uromIDX_A[1] ;
    input S_c_1;
    input \uromIDX_A[0] ;
    input S_c_0;
    
    
    MUX21 I7 (.D0(\ExDataIn[6] ), .D1(VCC_net), .SD(N_22), .Z(uromIDX[6])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=110, LSE_LLINE=114, LSE_RLINE=115 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(114[10] 115[110])
    MUX21 I8 (.D0(\ExDataIn[7] ), .D1(VCC_net), .SD(N_22), .Z(uromIDX[7])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=110, LSE_LLINE=114, LSE_RLINE=115 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(114[10] 115[110])
    MUX21 I6 (.D0(\ExDataIn[5] ), .D1(VCC_net), .SD(N_22), .Z(uromIDX[5])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=110, LSE_LLINE=114, LSE_RLINE=115 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(114[10] 115[110])
    MUX21 I5 (.D0(\ExDataIn[4] ), .D1(GND_net), .SD(N_22), .Z(uromIDX[4])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=110, LSE_LLINE=114, LSE_RLINE=115 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(114[10] 115[110])
    MUX21 I4 (.D0(\uromIDX_A[3] ), .D1(GND_net), .SD(N_22), .Z(uromIDX[3])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=110, LSE_LLINE=114, LSE_RLINE=115 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(114[10] 115[110])
    MUX21 I3 (.D0(\uromIDX_A[2] ), .D1(GND_net), .SD(N_22), .Z(uromIDX[2])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=110, LSE_LLINE=114, LSE_RLINE=115 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(114[10] 115[110])
    MUX21 I2 (.D0(\uromIDX_A[1] ), .D1(S_c_1), .SD(N_22), .Z(uromIDX[1])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=110, LSE_LLINE=114, LSE_RLINE=115 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(114[10] 115[110])
    MUX21 I1 (.D0(\uromIDX_A[0] ), .D1(S_c_0), .SD(N_22), .Z(uromIDX[0])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=110, LSE_LLINE=114, LSE_RLINE=115 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(114[10] 115[110])
    
endmodule
//
// Verilog Description of module urom_TBL
//

module urom_TBL (uromIDX, idx) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input [0:7]uromIDX;
    output [0:9]idx;
    
    
    ROM256X1A mem_0_8 (.AD0(uromIDX[0]), .AD1(uromIDX[1]), .AD2(uromIDX[2]), 
            .AD3(uromIDX[3]), .AD4(uromIDX[4]), .AD5(uromIDX[5]), .AD6(uromIDX[6]), 
            .AD7(uromIDX[7]), .DO0(idx[8])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=199, LSE_LLINE=91, LSE_RLINE=91 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(91[10:199])
    defparam mem_0_8.initval = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM256X1A mem_0_9 (.AD0(uromIDX[0]), .AD1(uromIDX[1]), .AD2(uromIDX[2]), 
            .AD3(uromIDX[3]), .AD4(uromIDX[4]), .AD5(uromIDX[5]), .AD6(uromIDX[6]), 
            .AD7(uromIDX[7]), .DO0(idx[9])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=199, LSE_LLINE=91, LSE_RLINE=91 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(91[10:199])
    defparam mem_0_9.initval = 256'b1111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM256X1A mem_0_7 (.AD0(uromIDX[0]), .AD1(uromIDX[1]), .AD2(uromIDX[2]), 
            .AD3(uromIDX[3]), .AD4(uromIDX[4]), .AD5(uromIDX[5]), .AD6(uromIDX[6]), 
            .AD7(uromIDX[7]), .DO0(idx[7])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=199, LSE_LLINE=91, LSE_RLINE=91 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(91[10:199])
    defparam mem_0_7.initval = 256'b1111111111111111111000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000;
    ROM256X1A mem_0_6 (.AD0(uromIDX[0]), .AD1(uromIDX[1]), .AD2(uromIDX[2]), 
            .AD3(uromIDX[3]), .AD4(uromIDX[4]), .AD5(uromIDX[5]), .AD6(uromIDX[6]), 
            .AD7(uromIDX[7]), .DO0(idx[6])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=199, LSE_LLINE=91, LSE_RLINE=91 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(91[10:199])
    defparam mem_0_6.initval = 256'b1100000000000000000111111111111111111111111111111111100000000000000000000000011111111111111111111100000000000000000000111111111111111111000000000000000111111111111111111111111100000000000000000000000000000000000000001111111111111111000000000000000000000000;
    ROM256X1A mem_0_5 (.AD0(uromIDX[0]), .AD1(uromIDX[1]), .AD2(uromIDX[2]), 
            .AD3(uromIDX[3]), .AD4(uromIDX[4]), .AD5(uromIDX[5]), .AD6(uromIDX[6]), 
            .AD7(uromIDX[7]), .DO0(idx[5])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=199, LSE_LLINE=91, LSE_RLINE=91 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(91[10:199])
    defparam mem_0_5.initval = 256'b0011111110000000000111111111111000000000000000000000011111111111111000000000011111111110000000000011111111110000000000111111111100000000111111110000000111111111000000000000000011111111111111111111111111111111000000001111111100000000111111110000000000000000;
    ROM256X1A mem_0_4 (.AD0(uromIDX[0]), .AD1(uromIDX[1]), .AD2(uromIDX[2]), 
            .AD3(uromIDX[3]), .AD4(uromIDX[4]), .AD5(uromIDX[5]), .AD6(uromIDX[6]), 
            .AD7(uromIDX[7]), .DO0(idx[4])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=199, LSE_LLINE=91, LSE_RLINE=91 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(91[10:199])
    defparam mem_0_4.initval = 256'b0011100001111111100111111111100111111111111000000000011111111000000111110000011111000001111100000011111000001111100000111110000011100000111000001110000111100000111111111000000011111111111111110000000000000000111100001111000011110000111100001111111100000000;
    ROM256X1A mem_0_3 (.AD0(uromIDX[0]), .AD1(uromIDX[1]), .AD2(uromIDX[2]), 
            .AD3(uromIDX[3]), .AD4(uromIDX[4]), .AD5(uromIDX[5]), .AD6(uromIDX[6]), 
            .AD7(uromIDX[7]), .DO0(idx[3])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=199, LSE_LLINE=91, LSE_RLINE=91 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(91[10:199])
    defparam mem_0_3.initval = 256'b1011111001100000010110000000000111110000000111111000011110000111000110001100011100111001110011100011000110001100011000111001110011011100110111001101110111011100111111000111000011111111000000001111111100000000110011001100110011001100110011001111000011110000;
    ROM256X1A mem_0_2 (.AD0(uromIDX[0]), .AD1(uromIDX[1]), .AD2(uromIDX[2]), 
            .AD3(uromIDX[3]), .AD4(uromIDX[4]), .AD5(uromIDX[5]), .AD6(uromIDX[6]), 
            .AD7(uromIDX[7]), .DO0(idx[2])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=199, LSE_LLINE=91, LSE_RLINE=91 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(91[10:199])
    defparam mem_0_2.initval = 256'b0110010001011110010001111000000111001111000111000110011001100110110101101011010010100101101011010010100101001011010110100101001010010010101100101001101110011110111100110100110011110000111100001111000011110000101010101010101010101010101010101100110011001100;
    ROM256X1A mem_0_1 (.AD0(uromIDX[0]), .AD1(uromIDX[1]), .AD2(uromIDX[2]), 
            .AD3(uromIDX[3]), .AD4(uromIDX[4]), .AD5(uromIDX[5]), .AD6(uromIDX[6]), 
            .AD7(uromIDX[7]), .DO0(idx[1])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=199, LSE_LLINE=91, LSE_RLINE=91 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(91[10:199])
    defparam mem_0_1.initval = 256'b1100010100111001111001100110010100101100110100110101010101010101100011001110011001110011000110011000110011100110011100110001100100111001000110010011010100110010110010100110101011001100110011001100110011001100000000000000000000000000000000001010101010101010;
    ROM256X1A mem_0_0 (.AD0(uromIDX[0]), .AD1(uromIDX[1]), .AD2(uromIDX[2]), 
            .AD3(uromIDX[3]), .AD4(uromIDX[4]), .AD5(uromIDX[5]), .AD6(uromIDX[6]), 
            .AD7(uromIDX[7]), .DO0(idx[0])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=199, LSE_LLINE=91, LSE_RLINE=91 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(91[10:199])
    defparam mem_0_0.initval = 256'b1011011101010101011101010101000010001010100010100000000000000000100101010110101010010101011010101001010101101010100101010110101010101010100010101010000010101000101000001010000010101010101010101010101010101010000000000000000000000000000000000000000000000000;
    
endmodule
//
// Verilog Description of module uromd
//

module uromd (CT, N_28, VCC_net, GND_net, \sig[6] , \UM[2] , \UM[3] , 
            \UM[4] , \UM[14] , \UM[15] , \UM[16] , \UM[17] , \UM[18] , 
            \UM[19] , \UM[20] , \UM[21] , \UM[22] , \UM[23] , \UM[24] , 
            \UM[25] , \UM[26] , \UM[27] , \UM[28] , \UM[29] , \UM[30] , 
            \UM[31] , \UM[5] , \UM[8] , \UM[9] , \UM[10] , \UM[11] , 
            \UM[12] , \UM[13] ) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input [0:9]CT;
    input N_28;
    input VCC_net;
    input GND_net;
    output \sig[6] ;
    output \UM[2] ;
    output \UM[3] ;
    output \UM[4] ;
    output \UM[14] ;
    output \UM[15] ;
    output \UM[16] ;
    output \UM[17] ;
    output \UM[18] ;
    output \UM[19] ;
    output \UM[20] ;
    output \UM[21] ;
    output \UM[22] ;
    output \UM[23] ;
    output \UM[24] ;
    output \UM[25] ;
    output \UM[26] ;
    output \UM[27] ;
    output \UM[28] ;
    output \UM[29] ;
    output \UM[30] ;
    output \UM[31] ;
    output \UM[5] ;
    output \UM[8] ;
    output \UM[9] ;
    output \UM[10] ;
    output \UM[11] ;
    output \UM[12] ;
    output \UM[13] ;
    
    wire N_28 /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(78[6:10])
    
    DP8KC uromd_0_3_0 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(VCC_net), .ADA1(GND_net), 
          .ADA2(GND_net), .ADA3(CT[0]), .ADA4(CT[1]), .ADA5(CT[2]), 
          .ADA6(CT[3]), .ADA7(CT[4]), .ADA8(CT[5]), .ADA9(CT[6]), .ADA10(CT[7]), 
          .ADA11(CT[8]), .ADA12(CT[9]), .CEA(VCC_net), .OCEA(VCC_net), 
          .CLKA(N_28), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(\UM[4] ), .DOA1(\UM[3] ), .DOA2(\UM[2] ), .DOA4(\sig[6] )) /* synthesis MEM_LPC_FILE="uromd.lpc", MEM_INIT_FILE="2908curom.mem", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=248, LSE_LLINE=92, LSE_RLINE=93 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(92[7] 93[248])
    defparam uromd_0_3_0.DATA_WIDTH_A = 9;
    defparam uromd_0_3_0.DATA_WIDTH_B = 9;
    defparam uromd_0_3_0.REGMODE_A = "NOREG";
    defparam uromd_0_3_0.REGMODE_B = "NOREG";
    defparam uromd_0_3_0.CSDECODE_A = "0b000";
    defparam uromd_0_3_0.CSDECODE_B = "0b111";
    defparam uromd_0_3_0.WRITEMODE_A = "NORMAL";
    defparam uromd_0_3_0.WRITEMODE_B = "NORMAL";
    defparam uromd_0_3_0.GSR = "ENABLED";
    defparam uromd_0_3_0.RESETMODE = "ASYNC";
    defparam uromd_0_3_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam uromd_0_3_0.INIT_DATA = "DYNAMIC";
    defparam uromd_0_3_0.INITVAL_00 = "0x02007020070200702007020070200702007020070200402004020040200402004020040200402004";
    defparam uromd_0_3_0.INITVAL_01 = "0x02004000040200400004020040000402004000040200400004020040000402004000040200400004";
    defparam uromd_0_3_0.INITVAL_02 = "0x02007000040200700004020070000402007000040200700004020070000402007000040200700004";
    defparam uromd_0_3_0.INITVAL_03 = "0x02004000040200400004020040000402004000040200400004020040000402004000040200400004";
    defparam uromd_0_3_0.INITVAL_04 = "0x02007000070200700007020070000702007000070200700004020070000402007000040200700004";
    defparam uromd_0_3_0.INITVAL_05 = "0x02010020100201002010020100201002010020100201002010020100201002010020100201002010";
    defparam uromd_0_3_0.INITVAL_06 = "0x02010020100200002000020000200002000000100000002000000100000002000020000200002000";
    defparam uromd_0_3_0.INITVAL_07 = "0x00004000100060400604020030080300810006040060400000020030080000604020030080000604";
    defparam uromd_0_3_0.INITVAL_08 = "0x00800008100000400004020000080000810000040000402000020000200000800000040200000800";
    defparam uromd_0_3_0.INITVAL_09 = "0x00000000100000000000020000000002000000000000002000000100000002000000100000002000";
    defparam uromd_0_3_0.INITVAL_0A = "0x00800008100000400004020000080000810000040000402000008100000402000008100000402000";
    defparam uromd_0_3_0.INITVAL_0B = "0x00000020000001000000020000001000004000100000002000000100000002000000100000002000";
    defparam uromd_0_3_0.INITVAL_0C = "0x02000000100000002000000100000002000000100000002000008000200000010000000200000010";
    defparam uromd_0_3_0.INITVAL_0D = "0x02000008000200000010000000200000010000000200000010000000200000010000040001000000";
    defparam uromd_0_3_0.INITVAL_0E = "0x00010000000200000010000040001000000020000001000000020000001000000020000001000000";
    defparam uromd_0_3_0.INITVAL_0F = "0x00000020000001000000020000001000000020000080002000000100000002000000100000002000";
    defparam uromd_0_3_0.INITVAL_10 = "0x02000000100000002000000100000002000000100000002000000100000400010000000200000010";
    defparam uromd_0_3_0.INITVAL_11 = "0x02000020000200002000020000200002000020000200002000020000200000010000000200000800";
    defparam uromd_0_3_0.INITVAL_12 = "0x02000020100200002000020100201002010020000200002010020100200002000020000200002000";
    defparam uromd_0_3_0.INITVAL_13 = "0x00604000030080000010020000000000000000000200300800006040000000003008000020002004";
    defparam uromd_0_3_0.INITVAL_14 = "0x02000000100000002000000000000000010020000081000604006040000000003008000081000604";
    defparam uromd_0_3_0.INITVAL_15 = "0x00800008100000400000020030080300800008000081000604000030081000604000030081000000";
    defparam uromd_0_3_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000020100000400004020000000400000";
    defparam uromd_0_3_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_3_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_3_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_3_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_3_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_3_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_3_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_3_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_3_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC uromd_0_1_2 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(VCC_net), .ADA1(GND_net), 
          .ADA2(GND_net), .ADA3(CT[0]), .ADA4(CT[1]), .ADA5(CT[2]), 
          .ADA6(CT[3]), .ADA7(CT[4]), .ADA8(CT[5]), .ADA9(CT[6]), .ADA10(CT[7]), 
          .ADA11(CT[8]), .ADA12(CT[9]), .CEA(VCC_net), .OCEA(VCC_net), 
          .CLKA(N_28), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(\UM[22] ), .DOA1(\UM[21] ), .DOA2(\UM[20] ), .DOA3(\UM[19] ), 
          .DOA4(\UM[18] ), .DOA5(\UM[17] ), .DOA6(\UM[16] ), .DOA7(\UM[15] ), 
          .DOA8(\UM[14] )) /* synthesis MEM_LPC_FILE="uromd.lpc", MEM_INIT_FILE="2908curom.mem", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=248, LSE_LLINE=92, LSE_RLINE=93 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(92[7] 93[248])
    defparam uromd_0_1_2.DATA_WIDTH_A = 9;
    defparam uromd_0_1_2.DATA_WIDTH_B = 9;
    defparam uromd_0_1_2.REGMODE_A = "NOREG";
    defparam uromd_0_1_2.REGMODE_B = "NOREG";
    defparam uromd_0_1_2.CSDECODE_A = "0b000";
    defparam uromd_0_1_2.CSDECODE_B = "0b111";
    defparam uromd_0_1_2.WRITEMODE_A = "NORMAL";
    defparam uromd_0_1_2.WRITEMODE_B = "NORMAL";
    defparam uromd_0_1_2.GSR = "ENABLED";
    defparam uromd_0_1_2.RESETMODE = "ASYNC";
    defparam uromd_0_1_2.ASYNC_RESET_RELEASE = "SYNC";
    defparam uromd_0_1_2.INIT_DATA = "DYNAMIC";
    defparam uromd_0_1_2.INITVAL_00 = "0x20102201022010220102201002010020100201002730225302233022130227300253002330021300";
    defparam uromd_0_1_2.INITVAL_01 = "0x273032DB04253032DB04233032DB04213032DB04273012DB04253012DB04233012DB04213012DB04";
    defparam uromd_0_1_2.INITVAL_02 = "0x201022DB04201022DB04201022DB04201022DB04201002DB04201002DB04201002DB04201002DB04";
    defparam uromd_0_1_2.INITVAL_03 = "0x2730225302233022130227302253022330221302273062DB04253062DB04233062DB04213062DB04";
    defparam uromd_0_1_2.INITVAL_04 = "0x2010220102201022010220102201022010220102201062DB04201062DB04201062DB04201062DB04";
    defparam uromd_0_1_2.INITVAL_05 = "0x2F56A2F1682712823108271382512823118211082010020100201002010020100201002010020100";
    defparam uromd_0_1_2.INITVAL_06 = "0x2BD5C29D4C2571B253192370B233092B10020148201002B10020148201002571B253192370B23309";
    defparam uromd_0_1_2.INITVAL_07 = "0x21F070000020B7E20B7E001032FD032FC002037E2037E00000001012FD002037E001002FD002017E";
    defparam uromd_0_1_2.INITVAL_08 = "0x20D7F20D682FF062FF062B17F20D7F20D482FF062FF0607100031002FD3F20F7E25F072FD1F20F7E";
    defparam uromd_0_1_2.INITVAL_09 = "0x257002014827329201002B14A203012711820128211002B50020548201022B50020148201002F17F";
    defparam uromd_0_1_2.INITVAL_0A = "0x2096D209682DB042DB042B16D2096D209482DB042DB042D9392096C253042D9192096C213042B13B";
    defparam uromd_0_1_2.INITVAL_0B = "0x2010001100200182010003100200082DB0420018201000110020008201000110020008201002F16D";
    defparam uromd_0_1_2.INITVAL_0C = "0x0110020008201000110020008201000310020018201000116D209000310020008201000110020008";
    defparam uromd_0_1_2.INITVAL_0D = "0x0116D2090003100200082010001100200082010001100200182010003100200082DB042001820100";
    defparam uromd_0_1_2.INITVAL_0E = "0x200182010003100200082DB042001820100011002000820100011002000820100031002001820100";
    defparam uromd_0_1_2.INITVAL_0F = "0x201000110020008201000010020000201000016D2090000100200002010000100200002010000100";
    defparam uromd_0_1_2.INITVAL_10 = "0x03100200082010001100200082010001100200182010003100200082DB0420018201000110020008";
    defparam uromd_0_1_2.INITVAL_11 = "0x05100031000110007100051000310001100071000510003100011000310020018201000116D20900";
    defparam uromd_0_1_2.INITVAL_12 = "0x2D1002B548070280300807028030082B548070280300807028030080710005100031000110007100";
    defparam uromd_0_1_2.INITVAL_13 = "0x20B7E2FD012FC0102280210000000000000000002D9052FD0020B7E2037E203012FD6D201002DB05";
    defparam uromd_0_1_2.INITVAL_14 = "0x1030100681202411030137E00000000016C2D96D2096C20B7E20B7E2037E203012FD6D2096C20B7E";
    defparam uromd_0_1_2.INITVAL_15 = "0x20D7F20D0020100200002D9052FD052FD6D2096D2096A20B7E201052FD6820B7E201052FC8120203";
    defparam uromd_0_1_2.INITVAL_16 = "0x000000000000000000000000000000000000000000000000002016C2DB042DB042D17E103062FD7F";
    defparam uromd_0_1_2.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_1_2.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_1_2.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_1_2.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_1_2.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_1_2.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_1_2.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_1_2.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_1_2.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC uromd_0_0_3 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(VCC_net), .ADA1(GND_net), 
          .ADA2(GND_net), .ADA3(CT[0]), .ADA4(CT[1]), .ADA5(CT[2]), 
          .ADA6(CT[3]), .ADA7(CT[4]), .ADA8(CT[5]), .ADA9(CT[6]), .ADA10(CT[7]), 
          .ADA11(CT[8]), .ADA12(CT[9]), .CEA(VCC_net), .OCEA(VCC_net), 
          .CLKA(N_28), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(\UM[31] ), .DOA1(\UM[30] ), .DOA2(\UM[29] ), .DOA3(\UM[28] ), 
          .DOA4(\UM[27] ), .DOA5(\UM[26] ), .DOA6(\UM[25] ), .DOA7(\UM[24] ), 
          .DOA8(\UM[23] )) /* synthesis MEM_LPC_FILE="uromd.lpc", MEM_INIT_FILE="2908curom.mem", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=248, LSE_LLINE=92, LSE_RLINE=93 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(92[7] 93[248])
    defparam uromd_0_0_3.DATA_WIDTH_A = 9;
    defparam uromd_0_0_3.DATA_WIDTH_B = 9;
    defparam uromd_0_0_3.REGMODE_A = "NOREG";
    defparam uromd_0_0_3.REGMODE_B = "NOREG";
    defparam uromd_0_0_3.CSDECODE_A = "0b000";
    defparam uromd_0_0_3.CSDECODE_B = "0b111";
    defparam uromd_0_0_3.WRITEMODE_A = "NORMAL";
    defparam uromd_0_0_3.WRITEMODE_B = "NORMAL";
    defparam uromd_0_0_3.GSR = "ENABLED";
    defparam uromd_0_0_3.RESETMODE = "ASYNC";
    defparam uromd_0_0_3.ASYNC_RESET_RELEASE = "SYNC";
    defparam uromd_0_0_3.INIT_DATA = "DYNAMIC";
    defparam uromd_0_0_3.INITVAL_00 = "0x0018C0010C0008C0000C0018C0010C0008C0000C2000C2000C2000C2000C2000C2000C2000C2000C";
    defparam uromd_0_0_3.INITVAL_01 = "0x201042380C201042380C201042380C201042380C201042380C201042380C201042380C201042380C";
    defparam uromd_0_0_3.INITVAL_02 = "0x001842380C001042380C000842380C000042380C001842380C001042380C000842380C000042380C";
    defparam uromd_0_0_3.INITVAL_03 = "0x2001C2000C2001C2000C2001C2000C2001C2000C200042380C200042380C200042380C200042380C";
    defparam uromd_0_0_3.INITVAL_04 = "0x0019C0010C0009C0000C0019C0010C0009C0000C001842380C001042380C000842380C000042380C";
    defparam uromd_0_0_3.INITVAL_05 = "0x0180C0180C2018000080100001000030100301000000000000000000000000000000000000000000";
    defparam uromd_0_0_3.INITVAL_06 = "0x00000000001000010000100001000004100100202008004080000201000010000100001000010000";
    defparam uromd_0_0_3.INITVAL_07 = "0x2190C000000000810008000000108001000000081000800000000800100000008000800100000008";
    defparam uromd_0_0_3.INITVAL_08 = "0x0191C018202380C2380C0411C0191C018202380C2380C02B1502A150390C2181C2190C0390C2181C";
    defparam uromd_0_0_3.INITVAL_09 = "0x001802002010000100000400C100000D18010068200000010000000200000008000000100000411C";
    defparam uromd_0_0_3.INITVAL_0A = "0x0191C018202380C2380C0411C0191C018202380C2380C039000181C2000C039000181C2000C04080";
    defparam uromd_0_0_3.INITVAL_0B = "0x11C0001C0E000333668006733100332380C0003306680067B30003326600066B300033066000411C";
    defparam uromd_0_0_3.INITVAL_0C = "0x061B00003026000060B0000300600001D8E1000E21C8001D1C0180001C0E1000E31C0001D0E0000E";
    defparam uromd_0_0_3.INITVAL_0D = "0x0191C018000180C1000C318000190C0000C118000180C000303608006130100302380C0003006080";
    defparam uromd_0_0_3.INITVAL_0E = "0x000603C0800C160100602380C000600C0800C1E0000602C0000C0E0000600C0000198C1000C21880";
    defparam uromd_0_0_3.INITVAL_0F = "0x2B0000B0D8000580B00001D8E1000E21C8001D1C0180001C0E1000E31C0001D0E0000E11C0001C0E";
    defparam uromd_0_0_3.INITVAL_10 = "0x0F078100783F0000F178000781F0000F078000583B0800B158100582380C000580B0800B1D800058";
    defparam uromd_0_0_3.INITVAL_11 = "0x069000688006800051800510005080050000E1800E1000E0800E0000F1F8100782F0800F11C01800";
    defparam uromd_0_0_3.INITVAL_12 = "0x05800010083793F1783F37F3F17E3F0381C3010210002305021040206B8006B0006A8006A0006980";
    defparam uromd_0_0_3.INITVAL_13 = "0x100080118001100200000000000000000000000004000010001000838008339800111C000002390C";
    defparam uromd_0_0_3.INITVAL_14 = "0x3F180201F8301003C18020000000000001C0091C01820000081000838008339800111C0182000008";
    defparam uromd_0_0_3.INITVAL_15 = "0x0191C018000000C0000000000010800111C0191C0180C00008000800100C0000800080011D830100";
    defparam uromd_0_0_3.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000002380C2380C0401C2000C0391C";
    defparam uromd_0_0_3.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_0_3.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_0_3.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_0_3.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_0_3.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_0_3.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_0_3.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_0_3.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_0_3.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC uromd_0_2_1 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(VCC_net), .ADA1(GND_net), 
          .ADA2(GND_net), .ADA3(CT[0]), .ADA4(CT[1]), .ADA5(CT[2]), 
          .ADA6(CT[3]), .ADA7(CT[4]), .ADA8(CT[5]), .ADA9(CT[6]), .ADA10(CT[7]), 
          .ADA11(CT[8]), .ADA12(CT[9]), .CEA(VCC_net), .OCEA(VCC_net), 
          .CLKA(N_28), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(\UM[13] ), .DOA1(\UM[12] ), .DOA2(\UM[11] ), .DOA3(\UM[10] ), 
          .DOA4(\UM[9] ), .DOA5(\UM[8] ), .DOA8(\UM[5] )) /* synthesis MEM_LPC_FILE="uromd.lpc", MEM_INIT_FILE="2908curom.mem", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=248, LSE_LLINE=92, LSE_RLINE=93 */ ;   // v:/cpu2908/fpga/machxo2/impl1/sequencer_s.v(92[7] 93[248])
    defparam uromd_0_2_1.DATA_WIDTH_A = 9;
    defparam uromd_0_2_1.DATA_WIDTH_B = 9;
    defparam uromd_0_2_1.REGMODE_A = "NOREG";
    defparam uromd_0_2_1.REGMODE_B = "NOREG";
    defparam uromd_0_2_1.CSDECODE_A = "0b000";
    defparam uromd_0_2_1.CSDECODE_B = "0b111";
    defparam uromd_0_2_1.WRITEMODE_A = "NORMAL";
    defparam uromd_0_2_1.WRITEMODE_B = "NORMAL";
    defparam uromd_0_2_1.GSR = "ENABLED";
    defparam uromd_0_2_1.RESETMODE = "ASYNC";
    defparam uromd_0_2_1.ASYNC_RESET_RELEASE = "SYNC";
    defparam uromd_0_2_1.INIT_DATA = "DYNAMIC";
    defparam uromd_0_2_1.INITVAL_00 = "0x00000000000000000000000000000000000000000090000900009000090000900009000090000900";
    defparam uromd_0_2_1.INITVAL_01 = "0x00900003000090000300009000030000900003000090000300009000030000900003000090000300";
    defparam uromd_0_2_1.INITVAL_02 = "0x00000003000000000300000000030000000003000000000300000000030000000003000000000300";
    defparam uromd_0_2_1.INITVAL_03 = "0x00900009000090000900009000090000900009000090000300009000030000900003000090000300";
    defparam uromd_0_2_1.INITVAL_04 = "0x00000000000000000000000000000000000000000000000300000000030000000003000000000300";
    defparam uromd_0_2_1.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_2_1.INITVAL_06 = "0x00000000000000000000000000000000002002000040100002002000040100000000000000000000";
    defparam uromd_0_2_1.INITVAL_07 = "0x00900000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_2_1.INITVAL_08 = "0x20001200000050000300000022000120000005000030001009010090000420000009000000420000";
    defparam uromd_0_2_1.INITVAL_09 = "0x00002002000000000401000000040102000002100000100002002000040100002002000040100002";
    defparam uromd_0_2_1.INITVAL_0A = "0x20001200000050000300000022000120000005000030000004200000090000004200000090000000";
    defparam uromd_0_2_1.INITVAL_0B = "0x014010100A00208014010100A002080050000208014010100A00208014010100A002080140100002";
    defparam uromd_0_2_1.INITVAL_0C = "0x0100A00208014010100A00208014010100A002080140101002200010100A00208014010100A00208";
    defparam uromd_0_2_1.INITVAL_0D = "0x01002200010100A00208014010100A00208014010100A00208014010100A00208005000020801401";
    defparam uromd_0_2_1.INITVAL_0E = "0x002100240102012002100050000210024010201200210024010201200210024010100A0020801401";
    defparam uromd_0_2_1.INITVAL_0F = "0x024010201200210024010100A002080140101002200010100A00208014010100A00208014010100A";
    defparam uromd_0_2_1.INITVAL_10 = "0x02012002100240102012002100240102012002100240102012002100050000210024010201200210";
    defparam uromd_0_2_1.INITVAL_11 = "0x01001010010100101001010010100101001020020200202002020020201200210024010200220001";
    defparam uromd_0_2_1.INITVAL_12 = "0x00000000000120901209012090120900000012090120901209012090100101001010010100101001";
    defparam uromd_0_2_1.INITVAL_13 = "0x00000000180002204200030000000000000000000000000000000000240001218000052000000100";
    defparam uromd_0_2_1.INITVAL_14 = "0x02019044100322202019044000000000000000012000000000000000240001218000012000000000";
    defparam uromd_0_2_1.INITVAL_15 = "0x20005200030030000600000000000000002200012000000000000000000000000000000001003222";
    defparam uromd_0_2_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000050000300000000390000006";
    defparam uromd_0_2_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_2_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_2_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_2_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_2_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_2_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_2_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_2_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam uromd_0_2_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    
endmodule
//
// Verilog Description of module executer
//

module executer (\sig[73] , \sig[43] , \sig[72] , \sig[80] , \data_es_bus[2] , 
            \sig[79] , \outreg[2] , n5389, \outreg[1] , n68, n5388, 
            N_34, data_ibus, \data_es_bus[0] , \sig[81] , \data_es_bus[3] , 
            \data_es_bus[7] , \data_es_bus[1] , \data_es_bus[6] , \subPort[4] , 
            \subPort[5] , n5, n1, n7, n1_adj_76, n7_adj_77, n1_adj_78, 
            n7_adj_79, n1_adj_80, n7_adj_81, n1_adj_82, n7_adj_83, 
            \subPort[4]_adj_84 , \subPort[4]_adj_85 , \subPort[0] , \subPort[1] , 
            \subPort[2] , \subPort[4]_adj_86 , \subPort[6] , \subPort[7] , 
            \sig[85] , \sig[84] , \sig[87] , \sig[86] , \sig[83] , 
            \sig[82] , addr_ibus, \addrLo[3] , \addrHi[4] , \addrLo[4] , 
            \sig[93] , \sig[94] , \sig[46] , \sig[45] , \sig[44] , 
            \sig[47] , \InternalDataBus[4] , \sig[77] , \sig[75] , \sig[76] , 
            \sig[74] , \sig[78] , GND_net, clkQ_c__inv, clkQ_c_derived_27_enable_9, 
            clkQ_c_derived_27_enable_5, \sig[88] , \sig[89] , \sig[90] , 
            \sig[91] , clkQ_c) /* synthesis syn_module_defined=1 */ ;
    input \sig[73] ;
    output \sig[43] ;
    input \sig[72] ;
    input \sig[80] ;
    input \data_es_bus[2] ;
    input \sig[79] ;
    input \outreg[2] ;
    input n5389;
    input \outreg[1] ;
    input n68;
    input n5388;
    input N_34;
    output [7:0]data_ibus;
    input \data_es_bus[0] ;
    input \sig[81] ;
    input \data_es_bus[3] ;
    input \data_es_bus[7] ;
    input \data_es_bus[1] ;
    input \data_es_bus[6] ;
    output \subPort[4] ;
    output \subPort[5] ;
    input n5;
    input n1;
    input n7;
    input n1_adj_76;
    input n7_adj_77;
    input n1_adj_78;
    input n7_adj_79;
    input n1_adj_80;
    input n7_adj_81;
    input n1_adj_82;
    input n7_adj_83;
    output \subPort[4]_adj_84 ;
    output \subPort[4]_adj_85 ;
    output \subPort[0] ;
    output \subPort[1] ;
    output \subPort[2] ;
    output \subPort[4]_adj_86 ;
    output \subPort[6] ;
    output \subPort[7] ;
    input \sig[85] ;
    input \sig[84] ;
    input \sig[87] ;
    input \sig[86] ;
    input \sig[83] ;
    input \sig[82] ;
    output [15:0]addr_ibus;
    output \addrLo[3] ;
    output \addrHi[4] ;
    output \addrLo[4] ;
    input \sig[93] ;
    input \sig[94] ;
    output \sig[46] ;
    output \sig[45] ;
    output \sig[44] ;
    output \sig[47] ;
    input \InternalDataBus[4] ;
    input \sig[77] ;
    input \sig[75] ;
    input \sig[76] ;
    input \sig[74] ;
    input \sig[78] ;
    input GND_net;
    input clkQ_c__inv;
    input clkQ_c_derived_27_enable_9;
    input clkQ_c_derived_27_enable_5;
    input \sig[88] ;
    input \sig[89] ;
    input \sig[90] ;
    input \sig[91] ;
    input clkQ_c;
    
    wire N_34 /* synthesis is_clock=1, SET_AS_NETWORK=\nWR_I_0_84/Executer/Executer_s/N_34 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(38[6:10])
    wire clkQ_c__inv /* synthesis is_inv_clock=1, is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    wire clkQ_c /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    
    executer_s Executer_s (.\sig[73] (\sig[73] ), .\sig[43] (\sig[43] ), 
            .\sig[72] (\sig[72] ), .\sig[80] (\sig[80] ), .\data_es_bus[2] (\data_es_bus[2] ), 
            .\sig[79] (\sig[79] ), .\outreg[2] (\outreg[2] ), .n5389(n5389), 
            .\outreg[1] (\outreg[1] ), .n68(n68), .n5388(n5388), .N_34(N_34), 
            .data_ibus({data_ibus}), .\data_es_bus[0] (\data_es_bus[0] ), 
            .\sig[81] (\sig[81] ), .\data_es_bus[3] (\data_es_bus[3] ), 
            .\data_es_bus[7] (\data_es_bus[7] ), .\data_es_bus[1] (\data_es_bus[1] ), 
            .\data_es_bus[6] (\data_es_bus[6] ), .\subPort[4] (\subPort[4] ), 
            .\subPort[5] (\subPort[5] ), .n5(n5), .n1(n1), .n7(n7), 
            .n1_adj_65(n1_adj_76), .n7_adj_66(n7_adj_77), .n1_adj_67(n1_adj_78), 
            .n7_adj_68(n7_adj_79), .n1_adj_69(n1_adj_80), .n7_adj_70(n7_adj_81), 
            .n1_adj_71(n1_adj_82), .n7_adj_72(n7_adj_83), .\subPort[4]_adj_73 (\subPort[4]_adj_84 ), 
            .\subPort[4]_adj_74 (\subPort[4]_adj_85 ), .\subPort[0] (\subPort[0] ), 
            .\subPort[1] (\subPort[1] ), .\subPort[2] (\subPort[2] ), .\subPort[4]_adj_75 (\subPort[4]_adj_86 ), 
            .\subPort[6] (\subPort[6] ), .\subPort[7] (\subPort[7] ), .\sig[85] (\sig[85] ), 
            .\sig[84] (\sig[84] ), .\sig[87] (\sig[87] ), .\sig[86] (\sig[86] ), 
            .\sig[83] (\sig[83] ), .\sig[82] (\sig[82] ), .addr_ibus({addr_ibus}), 
            .\addrLo[3] (\addrLo[3] ), .\addrHi[4] (\addrHi[4] ), .\addrLo[4] (\addrLo[4] ), 
            .\sig[93] (\sig[93] ), .\sig[94] (\sig[94] ), .\sig[46] (\sig[46] ), 
            .\sig[45] (\sig[45] ), .\sig[44] (\sig[44] ), .\sig[47] (\sig[47] ), 
            .\InternalDataBus[4] (\InternalDataBus[4] ), .\sig[77] (\sig[77] ), 
            .\sig[75] (\sig[75] ), .\sig[76] (\sig[76] ), .\sig[74] (\sig[74] ), 
            .\sig[78] (\sig[78] ), .GND_net(GND_net), .clkQ_c__inv(clkQ_c__inv), 
            .clkQ_c_derived_27_enable_9(clkQ_c_derived_27_enable_9), .clkQ_c_derived_27_enable_5(clkQ_c_derived_27_enable_5), 
            .\sig[88] (\sig[88] ), .\sig[89] (\sig[89] ), .\sig[90] (\sig[90] ), 
            .\sig[91] (\sig[91] ), .clkQ_c(clkQ_c)) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/executer.v(19[12] 58[2])
    
endmodule
//
// Verilog Description of module executer_s
//

module executer_s (\sig[73] , \sig[43] , \sig[72] , \sig[80] , \data_es_bus[2] , 
            \sig[79] , \outreg[2] , n5389, \outreg[1] , n68, n5388, 
            N_34, data_ibus, \data_es_bus[0] , \sig[81] , \data_es_bus[3] , 
            \data_es_bus[7] , \data_es_bus[1] , \data_es_bus[6] , \subPort[4] , 
            \subPort[5] , n5, n1, n7, n1_adj_65, n7_adj_66, n1_adj_67, 
            n7_adj_68, n1_adj_69, n7_adj_70, n1_adj_71, n7_adj_72, 
            \subPort[4]_adj_73 , \subPort[4]_adj_74 , \subPort[0] , \subPort[1] , 
            \subPort[2] , \subPort[4]_adj_75 , \subPort[6] , \subPort[7] , 
            \sig[85] , \sig[84] , \sig[87] , \sig[86] , \sig[83] , 
            \sig[82] , addr_ibus, \addrLo[3] , \addrHi[4] , \addrLo[4] , 
            \sig[93] , \sig[94] , \sig[46] , \sig[45] , \sig[44] , 
            \sig[47] , \InternalDataBus[4] , \sig[77] , \sig[75] , \sig[76] , 
            \sig[74] , \sig[78] , GND_net, clkQ_c__inv, clkQ_c_derived_27_enable_9, 
            clkQ_c_derived_27_enable_5, \sig[88] , \sig[89] , \sig[90] , 
            \sig[91] , clkQ_c) /* synthesis syn_module_defined=1 */ ;
    input \sig[73] ;
    output \sig[43] ;
    input \sig[72] ;
    input \sig[80] ;
    input \data_es_bus[2] ;
    input \sig[79] ;
    input \outreg[2] ;
    input n5389;
    input \outreg[1] ;
    input n68;
    input n5388;
    input N_34;
    output [7:0]data_ibus;
    input \data_es_bus[0] ;
    input \sig[81] ;
    input \data_es_bus[3] ;
    input \data_es_bus[7] ;
    input \data_es_bus[1] ;
    input \data_es_bus[6] ;
    output \subPort[4] ;
    output \subPort[5] ;
    input n5;
    input n1;
    input n7;
    input n1_adj_65;
    input n7_adj_66;
    input n1_adj_67;
    input n7_adj_68;
    input n1_adj_69;
    input n7_adj_70;
    input n1_adj_71;
    input n7_adj_72;
    output \subPort[4]_adj_73 ;
    output \subPort[4]_adj_74 ;
    output \subPort[0] ;
    output \subPort[1] ;
    output \subPort[2] ;
    output \subPort[4]_adj_75 ;
    output \subPort[6] ;
    output \subPort[7] ;
    input \sig[85] ;
    input \sig[84] ;
    input \sig[87] ;
    input \sig[86] ;
    input \sig[83] ;
    input \sig[82] ;
    output [15:0]addr_ibus;
    output \addrLo[3] ;
    output \addrHi[4] ;
    output \addrLo[4] ;
    input \sig[93] ;
    input \sig[94] ;
    output \sig[46] ;
    output \sig[45] ;
    output \sig[44] ;
    output \sig[47] ;
    input \InternalDataBus[4] ;
    input \sig[77] ;
    input \sig[75] ;
    input \sig[76] ;
    input \sig[74] ;
    input \sig[78] ;
    input GND_net;
    input clkQ_c__inv;
    input clkQ_c_derived_27_enable_9;
    input clkQ_c_derived_27_enable_5;
    input \sig[88] ;
    input \sig[89] ;
    input \sig[90] ;
    input \sig[91] ;
    input clkQ_c;
    
    wire N_34 /* synthesis is_clock=1, SET_AS_NETWORK=\nWR_I_0_84/Executer/Executer_s/N_34 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(38[6:10])
    wire clkQ_c__inv /* synthesis is_inv_clock=1, is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    wire clkQ_c /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    
    wire n4978, n4979;
    wire [7:0]D;   // v:/cpu2908/fpga/machxo2/tristatebuff.v(12[19:20])
    wire [7:0]ALU_A;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(28[14:19])
    wire [7:0]addrHi;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(30[14:20])
    wire [7:0]addrLo;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(31[14:20])
    wire [7:0]InternalDataBus;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(35[14:29])
    wire [127:0]sig;   // v:/cpu2908/fpga/machxo2/core.v(20[21:24])
    
    wire n14, n13, n3155, n5393, n4, n5384, n2;
    wire [7:0]LogicOut;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(36[14:22])
    wire [7:0]flag;   // v:/cpu2908/fpga/machxo2/core.v(55[11:15])
    
    wire n5380, n3, n4_adj_455, n3_adj_456, n4_adj_457;
    wire [7:0]ALU_OUT;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(34[14:21])
    wire [7:0]aout;   // v:/cpu2908/fpga/machxo2/alu.v(17[11:15])
    
    wire n4_adj_458, n3166, n3_adj_459, n4_adj_460, n2_adj_461, n1098;
    wire [7:0]ALU_B;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(29[14:19])
    
    wire N_31;
    wire [3:0]out_3__N_226;
    
    PFUMX i4483 (.BLUT(n4978), .ALUT(n4979), .C0(\sig[73] ), .Z(D[7]));
    LUT4 i4481_3_lut (.A(\sig[43] ), .B(ALU_A[7]), .C(\sig[72] ), .Z(n4978)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(19[12] 58[2])
    defparam i4481_3_lut.init = 16'hcaca;
    LUT4 i4482_3_lut (.A(\sig[72] ), .Z(n4979)) /* synthesis lut_function=(!(A)) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(19[12] 58[2])
    defparam i4482_3_lut.init = 16'h5555;
    dataReg I8 (.\sig[80] (\sig[80] ), .\addrHi[2] (addrHi[2]), .\data_es_bus[2] (\data_es_bus[2] ), 
            .\sig[79] (\sig[79] ), .\addrLo[1] (addrLo[1]), .\outreg[2] (\outreg[2] ), 
            .n5389(n5389), .\outreg[1] (\outreg[1] ), .\InternalDataBus[5] (InternalDataBus[5]), 
            .n68(n68), .n5388(n5388), .\addrLo[5] (addrLo[5]), .N_34(N_34), 
            .\sig[60] (sig[60]), .data_ibus({data_ibus}), .\addrHi[0] (addrHi[0]), 
            .\data_es_bus[0] (\data_es_bus[0] ), .\addrHi[5] (addrHi[5]), 
            .\sig[81] (\sig[81] ), .\data_es_bus[3] (\data_es_bus[3] ), 
            .\addrHi[3] (addrHi[3]), .\addrHi[7] (addrHi[7]), .\data_es_bus[7] (\data_es_bus[7] ), 
            .\addrHi[1] (addrHi[1]), .\data_es_bus[1] (\data_es_bus[1] ), 
            .\addrHi[6] (addrHi[6]), .\data_es_bus[6] (\data_es_bus[6] ), 
            .\subPort[4] (\subPort[4] ), .\subPort[5] (\subPort[5] ), .\InternalDataBus[3] (InternalDataBus[3]), 
            .n5(n5), .n1(n1), .n7(n7), .\InternalDataBus[6] (InternalDataBus[6]), 
            .\addrLo[6] (addrLo[6]), .\addrLo[0] (addrLo[0]), .n1_adj_54(n1_adj_65), 
            .n7_adj_55(n7_adj_66), .\InternalDataBus[1] (InternalDataBus[1]), 
            .n1_adj_56(n1_adj_67), .n7_adj_57(n7_adj_68), .\InternalDataBus[7] (InternalDataBus[7]), 
            .\addrLo[7] (addrLo[7]), .n1_adj_58(n1_adj_69), .n7_adj_59(n7_adj_70), 
            .\InternalDataBus[2] (InternalDataBus[2]), .\addrLo[2] (addrLo[2]), 
            .n1_adj_60(n1_adj_71), .n7_adj_61(n7_adj_72), .\InternalDataBus[0] (InternalDataBus[0]), 
            .\sig[61] (sig[61]), .\subPort[4]_adj_62 (\subPort[4]_adj_73 ), 
            .\sig[62] (sig[62]), .\subPort[4]_adj_63 (\subPort[4]_adj_74 ), 
            .\subPort[0] (\subPort[0] ), .\sig[63] (sig[63]), .\subPort[1] (\subPort[1] ), 
            .\subPort[2] (\subPort[2] ), .\subPort[4]_adj_64 (\subPort[4]_adj_75 ), 
            .\subPort[6] (\subPort[6] ), .\subPort[7] (\subPort[7] )) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(96[9] 97[203])
    writeBackSelector I4 (.\sig[85] (\sig[85] ), .\sig[84] (\sig[84] ), 
            .\sig[87] (\sig[87] ), .\sig[86] (\sig[86] ), .\sig[59] (sig[59]), 
            .\sig[57] (sig[57]), .\sig[62] (sig[62]), .\sig[58] (sig[58]), 
            .\sig[60] (sig[60]), .\sig[56] (sig[56]), .\sig[63] (sig[63]), 
            .\sig[61] (sig[61])) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(104[19] 106[40])
    addrReg I3 (.\sig[83] (\sig[83] ), .\sig[82] (\sig[82] ), .addrLo({addrLo[7:5], 
            \addrLo[4] , \addrLo[3] , addrLo[2:0]}), .N_34(N_34), .\sig[56] (sig[56]), 
            .addr_ibus({addr_ibus}), .addrHi({addrHi[7:5], \addrHi[4] , 
            addrHi[3:0]}), .\sig[57] (sig[57]), .\sig[58] (sig[58]), .\sig[59] (sig[59])) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(98[9] 100[184])
    zeroFlag I33 (.data_ibus({data_ibus}), .n14(n14), .n13(n13)) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(62[10:124])
    tristateBuff8_U9 I30 (.InternalDataBus({InternalDataBus[7:5], \InternalDataBus[4] , 
            InternalDataBus[3:0]}), .n3155(n3155), .data_ibus({data_ibus}), 
            .\ALU_A[3] (ALU_A[3]), .n5393(n5393), .n4(n4), .n5384(n5384), 
            .n2(n2), .LogicOut({LogicOut}), .\sig[43] (\sig[43] ), .\sig[93] (\sig[93] ), 
            .\sig[94] (\sig[94] ), .\sig[46] (\sig[46] ), .\flag[4] (flag[4]), 
            .\flag[2] (flag[2]), .n5380(n5380), .n3(n3), .n4_adj_12(n4_adj_455), 
            .\sig[45] (\sig[45] ), .\sig[44] (\sig[44] ), .\flag[1] (flag[1]), 
            .n3_adj_13(n3_adj_456), .n4_adj_14(n4_adj_457), .\sig[47] (\sig[47] ), 
            .\ALU_OUT[7] (ALU_OUT[7]), .\aout[2] (aout[2]), .n4_adj_15(n4_adj_458), 
            .n3166(n3166), .n3_adj_16(n3_adj_459), .n4_adj_17(n4_adj_460), 
            .n2_adj_18(n2_adj_461)) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(73[15:227])
    ALU I2 (.\sig[77] (\sig[77] ), .ALU_A({ALU_A}), .n4(n4_adj_458), .n1098(n1098), 
        .\sig[75] (\sig[75] ), .n5384(n5384), .n3(n3_adj_459), .n3_adj_5(n3_adj_456), 
        .n3_adj_6(n3), .\sig[76] (\sig[76] ), .\sig[74] (\sig[74] ), .\sig[78] (\sig[78] ), 
        .n3166(n3166), .\ALU_OUT[7] (ALU_OUT[7]), .ALU_B({ALU_B}), .N_31(N_31), 
        .n5380(n5380), .LogicOut({LogicOut}), .GND_net(GND_net), .\aout[2] (aout[2]), 
        .N_21(D[7]), .n4_adj_7(n4_adj_460), .n4_adj_8(n4_adj_455), .n4_adj_9(n4), 
        .n4_adj_10(n4_adj_457), .n5393(n5393), .n2(n2_adj_461), .n2_adj_11(n2)) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(101[5] 103[27])
    flagReg I29 (.\sig[43] (\sig[43] ), .clkQ_c__inv(clkQ_c__inv), .clkQ_c_derived_27_enable_9(clkQ_c_derived_27_enable_9), 
            .\sig[47] (\sig[47] ), .\sig[46] (\sig[46] ), .\sig[45] (\sig[45] ), 
            .clkQ_c_derived_27_enable_5(clkQ_c_derived_27_enable_5), .InternalDataBus({InternalDataBus[7:5], 
            \InternalDataBus[4] , InternalDataBus[3:0]}), .\flag[1] (flag[1]), 
            .\sig[44] (\sig[44] ), .\flag[2] (flag[2]), .\flag[4] (flag[4]), 
            .\sig[78] (\sig[78] ), .\sig[88] (\sig[88] ), .n1098(n1098), 
            .\sig[89] (\sig[89] ), .N_31(N_31), .n13(n13), .n14(n14), 
            .\data_ibus[7] (data_ibus[7])) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(63[9] 66[40])
    decoder4 I25 (.\sig[93] (\sig[93] ), .\sig[94] (\sig[94] ), .n3155(n3155), 
            .n5393(n5393)) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(81[10] 82[29])
    decoder4_U10 I17 (.\sig[90] (\sig[90] ), .\sig[91] (\sig[91] ), .\out_3__N_226[1] (out_3__N_226[1]), 
            .\out_3__N_226[2] (out_3__N_226[2])) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(85[10:84])
    addrEx I11 (.ALU_B({ALU_B}), .addr_ibus({addr_ibus}), .addrLo({addrLo[7:5], 
           \addrLo[4] , \addrLo[3] , addrLo[2:0]}), .\sig[77] (\sig[77] ), 
           .addrHi({addrHi[7:5], \addrHi[4] , addrHi[3:0]}), .\sig[75] (\sig[75] ), 
           .\sig[74] (\sig[74] ), .ALU_A({ALU_A}), .\sig[76] (\sig[76] ), 
           .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(78[8] 79[104])
    register8_U11 BUFF_2 (.ALU_B({ALU_B}), .clkQ_c(clkQ_c), .\out_3__N_226[2] (out_3__N_226[2]), 
            .InternalDataBus({InternalDataBus[7:5], \InternalDataBus[4] , 
            InternalDataBus[3:0]})) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(94[11] 95[39])
    register8_U12 BUFF_1 (.ALU_A({ALU_A}), .clkQ_c(clkQ_c), .\out_3__N_226[1] (out_3__N_226[1]), 
            .InternalDataBus({InternalDataBus[7:5], \InternalDataBus[4] , 
            InternalDataBus[3:0]})) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(92[11] 93[39])
    
endmodule
//
// Verilog Description of module dataReg
//

module dataReg (\sig[80] , \addrHi[2] , \data_es_bus[2] , \sig[79] , 
            \addrLo[1] , \outreg[2] , n5389, \outreg[1] , \InternalDataBus[5] , 
            n68, n5388, \addrLo[5] , N_34, \sig[60] , data_ibus, 
            \addrHi[0] , \data_es_bus[0] , \addrHi[5] , \sig[81] , \data_es_bus[3] , 
            \addrHi[3] , \addrHi[7] , \data_es_bus[7] , \addrHi[1] , 
            \data_es_bus[1] , \addrHi[6] , \data_es_bus[6] , \subPort[4] , 
            \subPort[5] , \InternalDataBus[3] , n5, n1, n7, \InternalDataBus[6] , 
            \addrLo[6] , \addrLo[0] , n1_adj_54, n7_adj_55, \InternalDataBus[1] , 
            n1_adj_56, n7_adj_57, \InternalDataBus[7] , \addrLo[7] , 
            n1_adj_58, n7_adj_59, \InternalDataBus[2] , \addrLo[2] , 
            n1_adj_60, n7_adj_61, \InternalDataBus[0] , \sig[61] , \subPort[4]_adj_62 , 
            \sig[62] , \subPort[4]_adj_63 , \subPort[0] , \sig[63] , 
            \subPort[1] , \subPort[2] , \subPort[4]_adj_64 , \subPort[6] , 
            \subPort[7] ) /* synthesis syn_module_defined=1 */ ;
    input \sig[80] ;
    input \addrHi[2] ;
    input \data_es_bus[2] ;
    input \sig[79] ;
    input \addrLo[1] ;
    input \outreg[2] ;
    input n5389;
    input \outreg[1] ;
    output \InternalDataBus[5] ;
    input n68;
    input n5388;
    input \addrLo[5] ;
    input N_34;
    input \sig[60] ;
    input [7:0]data_ibus;
    input \addrHi[0] ;
    input \data_es_bus[0] ;
    input \addrHi[5] ;
    input \sig[81] ;
    input \data_es_bus[3] ;
    input \addrHi[3] ;
    input \addrHi[7] ;
    input \data_es_bus[7] ;
    input \addrHi[1] ;
    input \data_es_bus[1] ;
    input \addrHi[6] ;
    input \data_es_bus[6] ;
    output \subPort[4] ;
    output \subPort[5] ;
    output \InternalDataBus[3] ;
    input n5;
    input n1;
    input n7;
    output \InternalDataBus[6] ;
    input \addrLo[6] ;
    input \addrLo[0] ;
    input n1_adj_54;
    input n7_adj_55;
    output \InternalDataBus[1] ;
    input n1_adj_56;
    input n7_adj_57;
    output \InternalDataBus[7] ;
    input \addrLo[7] ;
    input n1_adj_58;
    input n7_adj_59;
    output \InternalDataBus[2] ;
    input \addrLo[2] ;
    input n1_adj_60;
    input n7_adj_61;
    output \InternalDataBus[0] ;
    input \sig[61] ;
    output \subPort[4]_adj_62 ;
    input \sig[62] ;
    output \subPort[4]_adj_63 ;
    output \subPort[0] ;
    input \sig[63] ;
    output \subPort[1] ;
    output \subPort[2] ;
    output \subPort[4]_adj_64 ;
    output \subPort[6] ;
    output \subPort[7] ;
    
    wire N_34 /* synthesis is_clock=1, SET_AS_NETWORK=\nWR_I_0_84/Executer/Executer_s/N_34 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(38[6:10])
    wire [7:0]subPort;   // v:/cpu2908/fpga/machxo2/register.v(49[19:26])
    wire [7:0]subPort_adj_442;   // v:/cpu2908/fpga/machxo2/register.v(49[19:26])
    wire [7:0]subPort_adj_443;   // v:/cpu2908/fpga/machxo2/register.v(49[19:26])
    
    register8 out_7__I_0 (.\sig[80] (\sig[80] ), .\addrHi[2] (\addrHi[2] ), 
            .\data_es_bus[2] (\data_es_bus[2] ), .\sig[79] (\sig[79] ), 
            .\subPort[1] (subPort[1]), .\addrLo[1] (\addrLo[1] ), .\outreg[2] (\outreg[2] ), 
            .n5389(n5389), .\subPort[2] (subPort_adj_442[2]), .\subPort[5] (subPort_adj_442[5]), 
            .\outreg[1] (\outreg[1] ), .\InternalDataBus[5] (\InternalDataBus[5] ), 
            .\subPort[5]_adj_36 (subPort_adj_443[5]), .n68(n68), .n5388(n5388), 
            .\subPort[5]_adj_37 (subPort[5]), .\addrLo[5] (\addrLo[5] ), 
            .N_34(N_34), .\sig[60] (\sig[60] ), .data_ibus({data_ibus}), 
            .\addrHi[0] (\addrHi[0] ), .\data_es_bus[0] (\data_es_bus[0] ), 
            .\addrHi[5] (\addrHi[5] ), .\sig[81] (\sig[81] ), .\subPort[0] (subPort_adj_442[0]), 
            .\data_es_bus[3] (\data_es_bus[3] ), .\addrHi[3] (\addrHi[3] ), 
            .\addrHi[7] (\addrHi[7] ), .\data_es_bus[7] (\data_es_bus[7] ), 
            .\subPort[7] (subPort_adj_442[7]), .\addrHi[1] (\addrHi[1] ), 
            .\data_es_bus[1] (\data_es_bus[1] ), .\subPort[1]_adj_38 (subPort_adj_442[1]), 
            .\addrHi[6] (\addrHi[6] ), .\data_es_bus[6] (\data_es_bus[6] ), 
            .\subPort[4] (\subPort[4] ), .\subPort[5]_adj_39 (\subPort[5] ), 
            .\subPort[6] (subPort_adj_442[6]), .\subPort[3] (subPort_adj_442[3]), 
            .\InternalDataBus[3] (\InternalDataBus[3] ), .\subPort[3]_adj_40 (subPort[3]), 
            .n5(n5), .n1(n1), .n7(n7), .\InternalDataBus[6] (\InternalDataBus[6] ), 
            .\subPort[6]_adj_41 (subPort[6]), .\addrLo[6] (\addrLo[6] ), 
            .\subPort[0]_adj_42 (subPort[0]), .\addrLo[0] (\addrLo[0] ), 
            .n1_adj_43(n1_adj_54), .n7_adj_44(n7_adj_55), .\InternalDataBus[1] (\InternalDataBus[1] ), 
            .n1_adj_45(n1_adj_56), .n7_adj_46(n7_adj_57), .\InternalDataBus[7] (\InternalDataBus[7] ), 
            .\subPort[7]_adj_47 (subPort[7]), .\addrLo[7] (\addrLo[7] ), 
            .n1_adj_48(n1_adj_58), .n7_adj_49(n7_adj_59), .\InternalDataBus[2] (\InternalDataBus[2] ), 
            .\subPort[2]_adj_50 (subPort[2]), .\addrLo[2] (\addrLo[2] ), 
            .\subPort[3]_adj_51 (subPort_adj_443[3]), .n1_adj_52(n1_adj_60), 
            .n7_adj_53(n7_adj_61), .\InternalDataBus[0] (\InternalDataBus[0] )) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/executer.v(118[11:80])
    register8_U0 R2 (.subPort({subPort[7:5], \subPort[4]_adj_62 , subPort[3:0]}), 
            .N_34(N_34), .\sig[61] (\sig[61] ), .data_ibus({data_ibus})) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/executer.v(117[11:80])
    register8_U1 R1 (.subPort({subPort_adj_442[7:5], \subPort[4]_adj_63 , 
            subPort_adj_442[3:0]}), .N_34(N_34), .\sig[62] (\sig[62] ), 
            .data_ibus({data_ibus})) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/executer.v(116[11:80])
    register8_U2 R0 (.subPort({\subPort[7] , \subPort[6] , subPort_adj_443[5], 
            \subPort[4]_adj_64 , subPort_adj_443[3], \subPort[2] , \subPort[1] , 
            \subPort[0] }), .N_34(N_34), .\sig[63] (\sig[63] ), .data_ibus({data_ibus})) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/executer.v(115[11:80])
    
endmodule
//
// Verilog Description of module register8
//

module register8 (\sig[80] , \addrHi[2] , \data_es_bus[2] , \sig[79] , 
            \subPort[1] , \addrLo[1] , \outreg[2] , n5389, \subPort[2] , 
            \subPort[5] , \outreg[1] , \InternalDataBus[5] , \subPort[5]_adj_36 , 
            n68, n5388, \subPort[5]_adj_37 , \addrLo[5] , N_34, \sig[60] , 
            data_ibus, \addrHi[0] , \data_es_bus[0] , \addrHi[5] , \sig[81] , 
            \subPort[0] , \data_es_bus[3] , \addrHi[3] , \addrHi[7] , 
            \data_es_bus[7] , \subPort[7] , \addrHi[1] , \data_es_bus[1] , 
            \subPort[1]_adj_38 , \addrHi[6] , \data_es_bus[6] , \subPort[4] , 
            \subPort[5]_adj_39 , \subPort[6] , \subPort[3] , \InternalDataBus[3] , 
            \subPort[3]_adj_40 , n5, n1, n7, \InternalDataBus[6] , 
            \subPort[6]_adj_41 , \addrLo[6] , \subPort[0]_adj_42 , \addrLo[0] , 
            n1_adj_43, n7_adj_44, \InternalDataBus[1] , n1_adj_45, n7_adj_46, 
            \InternalDataBus[7] , \subPort[7]_adj_47 , \addrLo[7] , n1_adj_48, 
            n7_adj_49, \InternalDataBus[2] , \subPort[2]_adj_50 , \addrLo[2] , 
            \subPort[3]_adj_51 , n1_adj_52, n7_adj_53, \InternalDataBus[0] ) /* synthesis syn_module_defined=1 */ ;
    input \sig[80] ;
    input \addrHi[2] ;
    input \data_es_bus[2] ;
    input \sig[79] ;
    input \subPort[1] ;
    input \addrLo[1] ;
    input \outreg[2] ;
    input n5389;
    input \subPort[2] ;
    input \subPort[5] ;
    input \outreg[1] ;
    output \InternalDataBus[5] ;
    input \subPort[5]_adj_36 ;
    input n68;
    input n5388;
    input \subPort[5]_adj_37 ;
    input \addrLo[5] ;
    input N_34;
    input \sig[60] ;
    input [7:0]data_ibus;
    input \addrHi[0] ;
    input \data_es_bus[0] ;
    input \addrHi[5] ;
    input \sig[81] ;
    input \subPort[0] ;
    input \data_es_bus[3] ;
    input \addrHi[3] ;
    input \addrHi[7] ;
    input \data_es_bus[7] ;
    input \subPort[7] ;
    input \addrHi[1] ;
    input \data_es_bus[1] ;
    input \subPort[1]_adj_38 ;
    input \addrHi[6] ;
    input \data_es_bus[6] ;
    output \subPort[4] ;
    output \subPort[5]_adj_39 ;
    input \subPort[6] ;
    input \subPort[3] ;
    output \InternalDataBus[3] ;
    input \subPort[3]_adj_40 ;
    input n5;
    input n1;
    input n7;
    output \InternalDataBus[6] ;
    input \subPort[6]_adj_41 ;
    input \addrLo[6] ;
    input \subPort[0]_adj_42 ;
    input \addrLo[0] ;
    input n1_adj_43;
    input n7_adj_44;
    output \InternalDataBus[1] ;
    input n1_adj_45;
    input n7_adj_46;
    output \InternalDataBus[7] ;
    input \subPort[7]_adj_47 ;
    input \addrLo[7] ;
    input n1_adj_48;
    input n7_adj_49;
    output \InternalDataBus[2] ;
    input \subPort[2]_adj_50 ;
    input \addrLo[2] ;
    input \subPort[3]_adj_51 ;
    input n1_adj_52;
    input n7_adj_53;
    output \InternalDataBus[0] ;
    
    wire N_34 /* synthesis is_clock=1, SET_AS_NETWORK=\nWR_I_0_84/Executer/Executer_s/N_34 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(38[6:10])
    
    wire n5412, n10;
    wire [7:0]subPort;   // v:/cpu2908/fpga/machxo2/register.v(49[19:26])
    
    wire n5411, n12, n5737, n10_adj_388, n5403, n5736, n5735, 
        n5738, n5402, n5460, n5459, n5424, n5423, n5430, n5429, 
        n5436, n5435, n12_adj_397, n5740, n5461, n5437, n10_adj_399, 
        n5739, n10_adj_402, n5431, n5425, n10_adj_406, n5413, n10_adj_410, 
        n5404;
    
    LUT4 i6_4_lut_then_4_lut (.A(\sig[80] ), .B(\addrHi[2] ), .C(\data_es_bus[2] ), 
         .D(\sig[79] ), .Z(n5412)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (D)))) */ ;
    defparam i6_4_lut_then_4_lut.init = 16'h44a0;
    LUT4 i2_4_lut (.A(\subPort[1] ), .B(\addrLo[1] ), .C(\outreg[2] ), 
         .D(n5389), .Z(n10)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i2_4_lut.init = 16'heca0;
    LUT4 i6_4_lut_else_4_lut (.A(\subPort[2] ), .B(subPort[2]), .C(\sig[80] ), 
         .D(\sig[79] ), .Z(n5411)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i6_4_lut_else_4_lut.init = 16'hca00;
    LUT4 i6_4_lut (.A(\subPort[5] ), .B(n12), .C(n5737), .D(\outreg[1] ), 
         .Z(\InternalDataBus[5] )) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i6_4_lut.init = 16'hfefc;
    LUT4 i5_4_lut (.A(\subPort[5]_adj_36 ), .B(n10_adj_388), .C(n68), 
         .D(n5388), .Z(n12)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;
    defparam i5_4_lut.init = 16'hfcfe;
    LUT4 i3_4_lut (.A(\subPort[5]_adj_37 ), .B(\addrLo[5] ), .C(\outreg[2] ), 
         .D(n5389), .Z(n10_adj_388)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i3_4_lut.init = 16'heca0;
    FD1P3AX R_i0_i0 (.D(data_ibus[0]), .SP(\sig[60] ), .CK(N_34), .Q(subPort[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=118, LSE_RLINE=118 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i0.GSR = "DISABLED";
    LUT4 i6_4_lut_then_4_lut_adj_78 (.A(\sig[80] ), .B(\addrHi[0] ), .C(\data_es_bus[0] ), 
         .D(\sig[79] ), .Z(n5403)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (D)))) */ ;
    defparam i6_4_lut_then_4_lut_adj_78.init = 16'h44a0;
    LUT4 i1_4_lut_then_4_lut (.A(\addrHi[5] ), .B(\sig[79] ), .C(\sig[80] ), 
         .D(\sig[81] ), .Z(n5736)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'hc800;
    LUT4 i1_4_lut_else_4_lut (.A(\addrHi[5] ), .B(\sig[79] ), .C(\sig[80] ), 
         .D(\sig[81] ), .Z(n5735)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h0800;
    LUT4 i1_4_lut_else_4_lut_adj_79 (.A(data_ibus[3]), .B(\sig[79] ), .C(\sig[81] ), 
         .D(\sig[80] ), .Z(n5738)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_else_4_lut_adj_79.init = 16'h8000;
    LUT4 i6_4_lut_else_4_lut_adj_80 (.A(\subPort[0] ), .B(subPort[0]), .C(\sig[80] ), 
         .D(\sig[79] ), .Z(n5402)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i6_4_lut_else_4_lut_adj_80.init = 16'hca00;
    LUT4 i3_4_lut_then_4_lut (.A(\data_es_bus[3] ), .B(\sig[79] ), .C(\sig[81] ), 
         .D(subPort[3]), .Z(n5460)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A ((C+!(D))+!B))) */ ;
    defparam i3_4_lut_then_4_lut.init = 16'h2c20;
    LUT4 i3_4_lut_else_4_lut (.A(\addrHi[3] ), .B(\sig[79] ), .C(\sig[81] ), 
         .Z(n5459)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3_4_lut_else_4_lut.init = 16'h8080;
    LUT4 i6_4_lut_then_4_lut_adj_81 (.A(\sig[80] ), .B(\addrHi[7] ), .C(\data_es_bus[7] ), 
         .D(\sig[79] ), .Z(n5424)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (D)))) */ ;
    defparam i6_4_lut_then_4_lut_adj_81.init = 16'h44a0;
    LUT4 i6_4_lut_else_4_lut_adj_82 (.A(\subPort[7] ), .B(subPort[7]), .C(\sig[80] ), 
         .D(\sig[79] ), .Z(n5423)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i6_4_lut_else_4_lut_adj_82.init = 16'hca00;
    LUT4 i6_4_lut_then_4_lut_adj_83 (.A(\sig[80] ), .B(\addrHi[1] ), .C(\data_es_bus[1] ), 
         .D(\sig[79] ), .Z(n5430)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (D)))) */ ;
    defparam i6_4_lut_then_4_lut_adj_83.init = 16'h44a0;
    LUT4 i6_4_lut_else_4_lut_adj_84 (.A(\subPort[1]_adj_38 ), .B(subPort[1]), 
         .C(\sig[80] ), .D(\sig[79] ), .Z(n5429)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i6_4_lut_else_4_lut_adj_84.init = 16'hca00;
    FD1P3AX R_i0_i1 (.D(data_ibus[1]), .SP(\sig[60] ), .CK(N_34), .Q(subPort[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=118, LSE_RLINE=118 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i1.GSR = "DISABLED";
    LUT4 i6_4_lut_then_4_lut_adj_85 (.A(\sig[80] ), .B(\addrHi[6] ), .C(\data_es_bus[6] ), 
         .D(\sig[79] ), .Z(n5436)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (D)))) */ ;
    defparam i6_4_lut_then_4_lut_adj_85.init = 16'h44a0;
    FD1P3AX R_i0_i2 (.D(data_ibus[2]), .SP(\sig[60] ), .CK(N_34), .Q(subPort[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=118, LSE_RLINE=118 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i2.GSR = "DISABLED";
    FD1P3AX R_i0_i3 (.D(data_ibus[3]), .SP(\sig[60] ), .CK(N_34), .Q(subPort[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=118, LSE_RLINE=118 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i3.GSR = "DISABLED";
    FD1P3AX R_i0_i4 (.D(data_ibus[4]), .SP(\sig[60] ), .CK(N_34), .Q(\subPort[4] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=118, LSE_RLINE=118 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i4.GSR = "DISABLED";
    FD1P3AX R_i0_i5 (.D(data_ibus[5]), .SP(\sig[60] ), .CK(N_34), .Q(\subPort[5]_adj_39 )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=118, LSE_RLINE=118 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i5.GSR = "DISABLED";
    FD1P3AX R_i0_i6 (.D(data_ibus[6]), .SP(\sig[60] ), .CK(N_34), .Q(subPort[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=118, LSE_RLINE=118 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i6.GSR = "DISABLED";
    FD1P3AX R_i0_i7 (.D(data_ibus[7]), .SP(\sig[60] ), .CK(N_34), .Q(subPort[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=118, LSE_RLINE=118 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i7.GSR = "DISABLED";
    LUT4 i6_4_lut_else_4_lut_adj_86 (.A(\subPort[6] ), .B(subPort[6]), .C(\sig[80] ), 
         .D(\sig[79] ), .Z(n5435)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i6_4_lut_else_4_lut_adj_86.init = 16'hca00;
    LUT4 i6_4_lut_adj_87 (.A(\subPort[3] ), .B(n12_adj_397), .C(n5740), 
         .D(\outreg[1] ), .Z(\InternalDataBus[3] )) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i6_4_lut_adj_87.init = 16'hfefc;
    LUT4 i5_4_lut_adj_88 (.A(\subPort[3]_adj_40 ), .B(n5461), .C(n5), 
         .D(\outreg[2] ), .Z(n12_adj_397)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i5_4_lut_adj_88.init = 16'hfefc;
    LUT4 i7_4_lut (.A(n1), .B(n5437), .C(n10_adj_399), .D(n7), .Z(\InternalDataBus[6] )) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut_adj_89 (.A(\subPort[6]_adj_41 ), .B(\addrLo[6] ), .C(\outreg[2] ), 
         .D(n5389), .Z(n10_adj_399)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i2_4_lut_adj_89.init = 16'heca0;
    LUT4 i1_4_lut_then_4_lut_adj_90 (.A(data_ibus[3]), .B(\sig[79] ), .C(\sig[81] ), 
         .D(\sig[80] ), .Z(n5739)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam i1_4_lut_then_4_lut_adj_90.init = 16'h8003;
    LUT4 i2_4_lut_adj_91 (.A(\subPort[0]_adj_42 ), .B(\addrLo[0] ), .C(\outreg[2] ), 
         .D(n5389), .Z(n10_adj_402)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i2_4_lut_adj_91.init = 16'heca0;
    LUT4 i7_4_lut_adj_92 (.A(n1_adj_43), .B(n5431), .C(n10), .D(n7_adj_44), 
         .Z(\InternalDataBus[1] )) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut_adj_92.init = 16'hfffe;
    LUT4 i7_4_lut_adj_93 (.A(n1_adj_45), .B(n5425), .C(n10_adj_406), .D(n7_adj_46), 
         .Z(\InternalDataBus[7] )) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut_adj_93.init = 16'hfffe;
    LUT4 i2_4_lut_adj_94 (.A(\subPort[7]_adj_47 ), .B(\addrLo[7] ), .C(\outreg[2] ), 
         .D(n5389), .Z(n10_adj_406)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i2_4_lut_adj_94.init = 16'heca0;
    PFUMX i4747 (.BLUT(n5459), .ALUT(n5460), .C0(\sig[80] ), .Z(n5461));
    PFUMX i4715 (.BLUT(n5411), .ALUT(n5412), .C0(\sig[81] ), .Z(n5413));
    PFUMX i4731 (.BLUT(n5435), .ALUT(n5436), .C0(\sig[81] ), .Z(n5437));
    PFUMX i4727 (.BLUT(n5429), .ALUT(n5430), .C0(\sig[81] ), .Z(n5431));
    PFUMX i4723 (.BLUT(n5423), .ALUT(n5424), .C0(\sig[81] ), .Z(n5425));
    LUT4 i7_4_lut_adj_95 (.A(n1_adj_48), .B(n5413), .C(n10_adj_410), .D(n7_adj_49), 
         .Z(\InternalDataBus[2] )) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut_adj_95.init = 16'hfffe;
    PFUMX i4709 (.BLUT(n5402), .ALUT(n5403), .C0(\sig[81] ), .Z(n5404));
    LUT4 i2_4_lut_adj_96 (.A(\subPort[2]_adj_50 ), .B(\addrLo[2] ), .C(\outreg[2] ), 
         .D(n5389), .Z(n10_adj_410)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i2_4_lut_adj_96.init = 16'heca0;
    PFUMX i4894 (.BLUT(n5738), .ALUT(n5739), .C0(\subPort[3]_adj_51 ), 
          .Z(n5740));
    PFUMX i4892 (.BLUT(n5735), .ALUT(n5736), .C0(data_ibus[5]), .Z(n5737));
    LUT4 i7_4_lut_adj_97 (.A(n1_adj_52), .B(n5404), .C(n10_adj_402), .D(n7_adj_53), 
         .Z(\InternalDataBus[0] )) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut_adj_97.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module register8_U0
//

module register8_U0 (subPort, N_34, \sig[61] , data_ibus) /* synthesis syn_module_defined=1 */ ;
    output [7:0]subPort;
    input N_34;
    input \sig[61] ;
    input [7:0]data_ibus;
    
    wire N_34 /* synthesis is_clock=1, SET_AS_NETWORK=\nWR_I_0_84/Executer/Executer_s/N_34 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(38[6:10])
    
    FD1P3AX R_i0_i0 (.D(data_ibus[0]), .SP(\sig[61] ), .CK(N_34), .Q(subPort[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=117, LSE_RLINE=117 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i0.GSR = "DISABLED";
    FD1P3AX R_i0_i1 (.D(data_ibus[1]), .SP(\sig[61] ), .CK(N_34), .Q(subPort[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=117, LSE_RLINE=117 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i1.GSR = "DISABLED";
    FD1P3AX R_i0_i2 (.D(data_ibus[2]), .SP(\sig[61] ), .CK(N_34), .Q(subPort[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=117, LSE_RLINE=117 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i2.GSR = "DISABLED";
    FD1P3AX R_i0_i3 (.D(data_ibus[3]), .SP(\sig[61] ), .CK(N_34), .Q(subPort[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=117, LSE_RLINE=117 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i3.GSR = "DISABLED";
    FD1P3AX R_i0_i4 (.D(data_ibus[4]), .SP(\sig[61] ), .CK(N_34), .Q(subPort[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=117, LSE_RLINE=117 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i4.GSR = "DISABLED";
    FD1P3AX R_i0_i5 (.D(data_ibus[5]), .SP(\sig[61] ), .CK(N_34), .Q(subPort[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=117, LSE_RLINE=117 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i5.GSR = "DISABLED";
    FD1P3AX R_i0_i6 (.D(data_ibus[6]), .SP(\sig[61] ), .CK(N_34), .Q(subPort[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=117, LSE_RLINE=117 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i6.GSR = "DISABLED";
    FD1P3AX R_i0_i7 (.D(data_ibus[7]), .SP(\sig[61] ), .CK(N_34), .Q(subPort[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=117, LSE_RLINE=117 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i7.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module register8_U1
//

module register8_U1 (subPort, N_34, \sig[62] , data_ibus) /* synthesis syn_module_defined=1 */ ;
    output [7:0]subPort;
    input N_34;
    input \sig[62] ;
    input [7:0]data_ibus;
    
    wire N_34 /* synthesis is_clock=1, SET_AS_NETWORK=\nWR_I_0_84/Executer/Executer_s/N_34 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(38[6:10])
    
    FD1P3AX R_i0_i0 (.D(data_ibus[0]), .SP(\sig[62] ), .CK(N_34), .Q(subPort[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=116, LSE_RLINE=116 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i0.GSR = "DISABLED";
    FD1P3AX R_i0_i1 (.D(data_ibus[1]), .SP(\sig[62] ), .CK(N_34), .Q(subPort[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=116, LSE_RLINE=116 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i1.GSR = "DISABLED";
    FD1P3AX R_i0_i2 (.D(data_ibus[2]), .SP(\sig[62] ), .CK(N_34), .Q(subPort[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=116, LSE_RLINE=116 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i2.GSR = "DISABLED";
    FD1P3AX R_i0_i3 (.D(data_ibus[3]), .SP(\sig[62] ), .CK(N_34), .Q(subPort[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=116, LSE_RLINE=116 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i3.GSR = "DISABLED";
    FD1P3AX R_i0_i4 (.D(data_ibus[4]), .SP(\sig[62] ), .CK(N_34), .Q(subPort[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=116, LSE_RLINE=116 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i4.GSR = "DISABLED";
    FD1P3AX R_i0_i5 (.D(data_ibus[5]), .SP(\sig[62] ), .CK(N_34), .Q(subPort[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=116, LSE_RLINE=116 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i5.GSR = "DISABLED";
    FD1P3AX R_i0_i6 (.D(data_ibus[6]), .SP(\sig[62] ), .CK(N_34), .Q(subPort[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=116, LSE_RLINE=116 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i6.GSR = "DISABLED";
    FD1P3AX R_i0_i7 (.D(data_ibus[7]), .SP(\sig[62] ), .CK(N_34), .Q(subPort[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=116, LSE_RLINE=116 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i7.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module register8_U2
//

module register8_U2 (subPort, N_34, \sig[63] , data_ibus) /* synthesis syn_module_defined=1 */ ;
    output [7:0]subPort;
    input N_34;
    input \sig[63] ;
    input [7:0]data_ibus;
    
    wire N_34 /* synthesis is_clock=1, SET_AS_NETWORK=\nWR_I_0_84/Executer/Executer_s/N_34 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(38[6:10])
    
    FD1P3AX R_i0_i0 (.D(data_ibus[0]), .SP(\sig[63] ), .CK(N_34), .Q(subPort[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=115, LSE_RLINE=115 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i0.GSR = "DISABLED";
    FD1P3AX R_i0_i1 (.D(data_ibus[1]), .SP(\sig[63] ), .CK(N_34), .Q(subPort[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=115, LSE_RLINE=115 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i1.GSR = "DISABLED";
    FD1P3AX R_i0_i2 (.D(data_ibus[2]), .SP(\sig[63] ), .CK(N_34), .Q(subPort[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=115, LSE_RLINE=115 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i2.GSR = "DISABLED";
    FD1P3AX R_i0_i3 (.D(data_ibus[3]), .SP(\sig[63] ), .CK(N_34), .Q(subPort[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=115, LSE_RLINE=115 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i3.GSR = "DISABLED";
    FD1P3AX R_i0_i4 (.D(data_ibus[4]), .SP(\sig[63] ), .CK(N_34), .Q(subPort[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=115, LSE_RLINE=115 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i4.GSR = "DISABLED";
    FD1P3AX R_i0_i5 (.D(data_ibus[5]), .SP(\sig[63] ), .CK(N_34), .Q(subPort[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=115, LSE_RLINE=115 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i5.GSR = "DISABLED";
    FD1P3AX R_i0_i6 (.D(data_ibus[6]), .SP(\sig[63] ), .CK(N_34), .Q(subPort[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=115, LSE_RLINE=115 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i6.GSR = "DISABLED";
    FD1P3AX R_i0_i7 (.D(data_ibus[7]), .SP(\sig[63] ), .CK(N_34), .Q(subPort[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=11, LSE_RCOL=80, LSE_LLINE=115, LSE_RLINE=115 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i7.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module writeBackSelector
//

module writeBackSelector (\sig[85] , \sig[84] , \sig[87] , \sig[86] , 
            \sig[59] , \sig[57] , \sig[62] , \sig[58] , \sig[60] , 
            \sig[56] , \sig[63] , \sig[61] ) /* synthesis syn_module_defined=1 */ ;
    input \sig[85] ;
    input \sig[84] ;
    input \sig[87] ;
    input \sig[86] ;
    output \sig[59] ;
    output \sig[57] ;
    output \sig[62] ;
    output \sig[58] ;
    output \sig[60] ;
    output \sig[56] ;
    output \sig[63] ;
    output \sig[61] ;
    
    
    LUT4 i1_2_lut_4_lut (.A(\sig[85] ), .B(\sig[84] ), .C(\sig[87] ), 
         .D(\sig[86] ), .Z(\sig[59] )) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(154[2] 163[9])
    defparam i1_2_lut_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_4_lut_adj_72 (.A(\sig[85] ), .B(\sig[84] ), .C(\sig[87] ), 
         .D(\sig[86] ), .Z(\sig[57] )) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(154[2] 163[9])
    defparam i1_2_lut_4_lut_adj_72.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut (.A(\sig[84] ), .B(\sig[85] ), .C(\sig[87] ), 
         .D(\sig[86] ), .Z(\sig[62] )) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(154[2] 163[9])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_73 (.A(\sig[84] ), .B(\sig[85] ), .C(\sig[87] ), 
         .D(\sig[86] ), .Z(\sig[58] )) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(154[2] 163[9])
    defparam i1_2_lut_3_lut_4_lut_adj_73.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_74 (.A(\sig[84] ), .B(\sig[85] ), .C(\sig[87] ), 
         .D(\sig[86] ), .Z(\sig[60] )) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(154[2] 163[9])
    defparam i1_2_lut_3_lut_4_lut_adj_74.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_75 (.A(\sig[84] ), .B(\sig[85] ), .C(\sig[87] ), 
         .D(\sig[86] ), .Z(\sig[56] )) /* synthesis lut_function=(A (B (C (D)))) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(154[2] 163[9])
    defparam i1_2_lut_3_lut_4_lut_adj_75.init = 16'h8000;
    LUT4 i1_2_lut_4_lut_adj_76 (.A(\sig[84] ), .B(\sig[85] ), .C(\sig[87] ), 
         .D(\sig[86] ), .Z(\sig[63] )) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_4_lut_adj_76.init = 16'h0002;
    LUT4 i1_2_lut_4_lut_adj_77 (.A(\sig[84] ), .B(\sig[85] ), .C(\sig[87] ), 
         .D(\sig[86] ), .Z(\sig[61] )) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_4_lut_adj_77.init = 16'h0200;
    
endmodule
//
// Verilog Description of module addrReg
//

module addrReg (\sig[83] , \sig[82] , addrLo, N_34, \sig[56] , addr_ibus, 
            addrHi, \sig[57] , \sig[58] , \sig[59] ) /* synthesis syn_module_defined=1 */ ;
    input \sig[83] ;
    input \sig[82] ;
    output [7:0]addrLo;
    input N_34;
    input \sig[56] ;
    input [15:0]addr_ibus;
    output [7:0]addrHi;
    input \sig[57] ;
    input \sig[58] ;
    input \sig[59] ;
    
    wire N_34 /* synthesis is_clock=1, SET_AS_NETWORK=\nWR_I_0_84/Executer/Executer_s/N_34 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(38[6:10])
    wire [15:0]subPort;   // v:/cpu2908/fpga/machxo2/register.v(100[20:27])
    wire [15:0]subPort_adj_385;   // v:/cpu2908/fpga/machxo2/register.v(100[20:27])
    wire [127:0]sig;   // v:/cpu2908/fpga/machxo2/core.v(20[21:24])
    
    register16 out_15__I_0 (.subPort({subPort}), .\sig[83] (\sig[83] ), 
            .subPort_adj_35({subPort_adj_385}), .\sig[107] (sig[107]), .\sig[82] (\sig[82] ), 
            .addrLo({addrLo}), .\sig[99] (sig[99]), .\sig[100] (sig[100]), 
            .N_34(N_34), .\sig[56] (\sig[56] ), .addr_ibus({addr_ibus}), 
            .\sig[108] (sig[108]), .\sig[102] (sig[102]), .\sig[101] (sig[101]), 
            .\sig[109] (sig[109]), .\sig[96] (sig[96]), .\sig[98] (sig[98]), 
            .\sig[105] (sig[105]), .\sig[97] (sig[97]), .\sig[104] (sig[104]), 
            .\sig[106] (sig[106]), .\sig[111] (sig[111]), .\sig[103] (sig[103]), 
            .addrHi({addrHi}), .\sig[110] (sig[110])) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/executer.v(82[12:81])
    register16_U3 CPMonitor_15__I_0 (.\sig[111] (sig[111]), .N_34(N_34), 
            .\sig[57] (\sig[57] ), .addr_ibus({addr_ibus}), .\sig[110] (sig[110]), 
            .\sig[109] (sig[109]), .\sig[108] (sig[108]), .\sig[107] (sig[107]), 
            .\sig[106] (sig[106]), .\sig[105] (sig[105]), .\sig[104] (sig[104]), 
            .\sig[103] (sig[103]), .\sig[102] (sig[102]), .\sig[101] (sig[101]), 
            .\sig[100] (sig[100]), .\sig[99] (sig[99]), .\sig[98] (sig[98]), 
            .\sig[97] (sig[97]), .\sig[96] (sig[96])) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/executer.v(81[12:102])
    register16_U4 A1 (.subPort({subPort}), .N_34(N_34), .\sig[58] (\sig[58] ), 
            .addr_ibus({addr_ibus})) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/executer.v(80[12:81])
    register16_U5 A0 (.subPort({subPort_adj_385}), .N_34(N_34), .\sig[59] (\sig[59] ), 
            .addr_ibus({addr_ibus})) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/executer.v(79[12:81])
    
endmodule
//
// Verilog Description of module register16
//

module register16 (subPort, \sig[83] , subPort_adj_35, \sig[107] , \sig[82] , 
            addrLo, \sig[99] , \sig[100] , N_34, \sig[56] , addr_ibus, 
            \sig[108] , \sig[102] , \sig[101] , \sig[109] , \sig[96] , 
            \sig[98] , \sig[105] , \sig[97] , \sig[104] , \sig[106] , 
            \sig[111] , \sig[103] , addrHi, \sig[110] ) /* synthesis syn_module_defined=1 */ ;
    input [15:0]subPort;
    input \sig[83] ;
    input [15:0]subPort_adj_35;
    input \sig[107] ;
    input \sig[82] ;
    output [7:0]addrLo;
    input \sig[99] ;
    input \sig[100] ;
    input N_34;
    input \sig[56] ;
    input [15:0]addr_ibus;
    input \sig[108] ;
    input \sig[102] ;
    input \sig[101] ;
    input \sig[109] ;
    input \sig[96] ;
    input \sig[98] ;
    input \sig[105] ;
    input \sig[97] ;
    input \sig[104] ;
    input \sig[106] ;
    input \sig[111] ;
    input \sig[103] ;
    output [7:0]addrHi;
    input \sig[110] ;
    
    wire N_34 /* synthesis is_clock=1, SET_AS_NETWORK=\nWR_I_0_84/Executer/Executer_s/N_34 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(38[6:10])
    wire [15:0]subPort_adj_367;   // v:/cpu2908/fpga/machxo2/register.v(100[20:27])
    
    wire n5445, n5444, n5448, n5417, n5418, n5447, n5454, n5453, 
        n5457, n5456, n5399, n5400, n5421, n5406, n5420, n5405, 
        n5427, n5463, n5426, n5462, n5433, n5432, n5466, n5465, 
        n5439, n5438, n5442, n5441, n5469, n5468, n5472, n5471;
    
    LUT4 i3_4_lut_then_3_lut (.A(subPort[4]), .B(subPort_adj_367[4]), .C(\sig[83] ), 
         .Z(n5445)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_then_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_else_3_lut (.A(subPort_adj_35[4]), .B(\sig[107] ), .C(\sig[83] ), 
         .Z(n5444)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_else_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_then_3_lut_adj_42 (.A(subPort[12]), .B(subPort_adj_367[12]), 
         .C(\sig[83] ), .Z(n5448)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_then_3_lut_adj_42.init = 16'hcaca;
    PFUMX i4719 (.BLUT(n5417), .ALUT(n5418), .C0(\sig[82] ), .Z(addrLo[1]));
    LUT4 i3_4_lut_else_3_lut_adj_43 (.A(subPort_adj_35[12]), .B(\sig[99] ), 
         .C(\sig[83] ), .Z(n5447)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_else_3_lut_adj_43.init = 16'hcaca;
    LUT4 i3_4_lut_then_3_lut_adj_44 (.A(subPort[11]), .B(subPort_adj_367[11]), 
         .C(\sig[83] ), .Z(n5454)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_then_3_lut_adj_44.init = 16'hcaca;
    LUT4 i3_4_lut_else_3_lut_adj_45 (.A(subPort_adj_35[11]), .B(\sig[100] ), 
         .C(\sig[83] ), .Z(n5453)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_else_3_lut_adj_45.init = 16'hcaca;
    LUT4 i3_4_lut_then_3_lut_adj_46 (.A(subPort[3]), .B(subPort_adj_367[3]), 
         .C(\sig[83] ), .Z(n5457)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_then_3_lut_adj_46.init = 16'hcaca;
    FD1P3AX R_i0_i0 (.D(addr_ibus[0]), .SP(\sig[56] ), .CK(N_34), .Q(subPort_adj_367[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=82, LSE_RLINE=82 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i0.GSR = "DISABLED";
    LUT4 i3_4_lut_else_3_lut_adj_47 (.A(subPort_adj_35[3]), .B(\sig[108] ), 
         .C(\sig[83] ), .Z(n5456)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_else_3_lut_adj_47.init = 16'hcaca;
    PFUMX i4707 (.BLUT(n5399), .ALUT(n5400), .C0(\sig[82] ), .Z(addrLo[2]));
    LUT4 i3_4_lut_then_3_lut_adj_48 (.A(subPort[9]), .B(subPort_adj_367[9]), 
         .C(\sig[83] ), .Z(n5421)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_then_3_lut_adj_48.init = 16'hcaca;
    LUT4 i3_4_lut_then_3_lut_adj_49 (.A(subPort[10]), .B(subPort_adj_367[10]), 
         .C(\sig[83] ), .Z(n5406)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_then_3_lut_adj_49.init = 16'hcaca;
    LUT4 i3_4_lut_else_3_lut_adj_50 (.A(subPort_adj_35[9]), .B(\sig[102] ), 
         .C(\sig[83] ), .Z(n5420)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_else_3_lut_adj_50.init = 16'hcaca;
    LUT4 i3_4_lut_else_3_lut_adj_51 (.A(subPort_adj_35[10]), .B(\sig[101] ), 
         .C(\sig[83] ), .Z(n5405)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_else_3_lut_adj_51.init = 16'hcaca;
    LUT4 i3_4_lut_then_3_lut_adj_52 (.A(subPort[2]), .B(subPort_adj_367[2]), 
         .C(\sig[83] ), .Z(n5400)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_then_3_lut_adj_52.init = 16'hcaca;
    LUT4 i3_4_lut_else_3_lut_adj_53 (.A(subPort_adj_35[2]), .B(\sig[109] ), 
         .C(\sig[83] ), .Z(n5399)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_else_3_lut_adj_53.init = 16'hcaca;
    LUT4 i3_4_lut_then_3_lut_adj_54 (.A(subPort[15]), .B(subPort_adj_367[15]), 
         .C(\sig[83] ), .Z(n5427)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_then_3_lut_adj_54.init = 16'hcaca;
    LUT4 i3_4_lut_then_3_lut_adj_55 (.A(subPort[13]), .B(subPort_adj_367[13]), 
         .C(\sig[83] ), .Z(n5463)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_then_3_lut_adj_55.init = 16'hcaca;
    LUT4 i3_4_lut_else_3_lut_adj_56 (.A(subPort_adj_35[15]), .B(\sig[96] ), 
         .C(\sig[83] ), .Z(n5426)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_else_3_lut_adj_56.init = 16'hcaca;
    LUT4 i3_4_lut_else_3_lut_adj_57 (.A(subPort_adj_35[13]), .B(\sig[98] ), 
         .C(\sig[83] ), .Z(n5462)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_else_3_lut_adj_57.init = 16'hcaca;
    LUT4 i3_4_lut_then_3_lut_adj_58 (.A(subPort[6]), .B(subPort_adj_367[6]), 
         .C(\sig[83] ), .Z(n5433)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_then_3_lut_adj_58.init = 16'hcaca;
    LUT4 i3_4_lut_else_3_lut_adj_59 (.A(subPort_adj_35[6]), .B(\sig[105] ), 
         .C(\sig[83] ), .Z(n5432)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_else_3_lut_adj_59.init = 16'hcaca;
    FD1P3AX R_i0_i1 (.D(addr_ibus[1]), .SP(\sig[56] ), .CK(N_34), .Q(subPort_adj_367[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=82, LSE_RLINE=82 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i1.GSR = "DISABLED";
    FD1P3AX R_i0_i2 (.D(addr_ibus[2]), .SP(\sig[56] ), .CK(N_34), .Q(subPort_adj_367[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=82, LSE_RLINE=82 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i2.GSR = "DISABLED";
    FD1P3AX R_i0_i3 (.D(addr_ibus[3]), .SP(\sig[56] ), .CK(N_34), .Q(subPort_adj_367[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=82, LSE_RLINE=82 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i3.GSR = "DISABLED";
    FD1P3AX R_i0_i4 (.D(addr_ibus[4]), .SP(\sig[56] ), .CK(N_34), .Q(subPort_adj_367[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=82, LSE_RLINE=82 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i4.GSR = "DISABLED";
    FD1P3AX R_i0_i5 (.D(addr_ibus[5]), .SP(\sig[56] ), .CK(N_34), .Q(subPort_adj_367[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=82, LSE_RLINE=82 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i5.GSR = "DISABLED";
    FD1P3AX R_i0_i6 (.D(addr_ibus[6]), .SP(\sig[56] ), .CK(N_34), .Q(subPort_adj_367[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=82, LSE_RLINE=82 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i6.GSR = "DISABLED";
    FD1P3AX R_i0_i7 (.D(addr_ibus[7]), .SP(\sig[56] ), .CK(N_34), .Q(subPort_adj_367[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=82, LSE_RLINE=82 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i7.GSR = "DISABLED";
    FD1P3AX R_i0_i8 (.D(addr_ibus[8]), .SP(\sig[56] ), .CK(N_34), .Q(subPort_adj_367[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=82, LSE_RLINE=82 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i8.GSR = "DISABLED";
    FD1P3AX R_i0_i9 (.D(addr_ibus[9]), .SP(\sig[56] ), .CK(N_34), .Q(subPort_adj_367[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=82, LSE_RLINE=82 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i9.GSR = "DISABLED";
    FD1P3AX R_i0_i10 (.D(addr_ibus[10]), .SP(\sig[56] ), .CK(N_34), .Q(subPort_adj_367[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=82, LSE_RLINE=82 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i10.GSR = "DISABLED";
    FD1P3AX R_i0_i11 (.D(addr_ibus[11]), .SP(\sig[56] ), .CK(N_34), .Q(subPort_adj_367[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=82, LSE_RLINE=82 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i11.GSR = "DISABLED";
    FD1P3AX R_i0_i12 (.D(addr_ibus[12]), .SP(\sig[56] ), .CK(N_34), .Q(subPort_adj_367[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=82, LSE_RLINE=82 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i12.GSR = "DISABLED";
    FD1P3AX R_i0_i13 (.D(addr_ibus[13]), .SP(\sig[56] ), .CK(N_34), .Q(subPort_adj_367[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=82, LSE_RLINE=82 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i13.GSR = "DISABLED";
    FD1P3AX R_i0_i14 (.D(addr_ibus[14]), .SP(\sig[56] ), .CK(N_34), .Q(subPort_adj_367[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=82, LSE_RLINE=82 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i14.GSR = "DISABLED";
    FD1P3AX R_i0_i15 (.D(addr_ibus[15]), .SP(\sig[56] ), .CK(N_34), .Q(subPort_adj_367[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=82, LSE_RLINE=82 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i15.GSR = "DISABLED";
    LUT4 i3_4_lut_then_3_lut_adj_60 (.A(subPort[14]), .B(subPort_adj_367[14]), 
         .C(\sig[83] ), .Z(n5466)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_then_3_lut_adj_60.init = 16'hcaca;
    LUT4 i3_4_lut_else_3_lut_adj_61 (.A(subPort_adj_35[14]), .B(\sig[97] ), 
         .C(\sig[83] ), .Z(n5465)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_else_3_lut_adj_61.init = 16'hcaca;
    LUT4 i3_4_lut_then_3_lut_adj_62 (.A(subPort[7]), .B(subPort_adj_367[7]), 
         .C(\sig[83] ), .Z(n5439)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_then_3_lut_adj_62.init = 16'hcaca;
    LUT4 i3_4_lut_else_3_lut_adj_63 (.A(subPort_adj_35[7]), .B(\sig[104] ), 
         .C(\sig[83] ), .Z(n5438)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_else_3_lut_adj_63.init = 16'hcaca;
    LUT4 i3_4_lut_then_3_lut_adj_64 (.A(subPort[5]), .B(subPort_adj_367[5]), 
         .C(\sig[83] ), .Z(n5442)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_then_3_lut_adj_64.init = 16'hcaca;
    LUT4 i3_4_lut_else_3_lut_adj_65 (.A(subPort_adj_35[5]), .B(\sig[106] ), 
         .C(\sig[83] ), .Z(n5441)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_else_3_lut_adj_65.init = 16'hcaca;
    LUT4 i3_4_lut_then_3_lut_adj_66 (.A(subPort[0]), .B(subPort_adj_367[0]), 
         .C(\sig[83] ), .Z(n5469)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_then_3_lut_adj_66.init = 16'hcaca;
    LUT4 i3_4_lut_else_3_lut_adj_67 (.A(subPort_adj_35[0]), .B(\sig[111] ), 
         .C(\sig[83] ), .Z(n5468)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_else_3_lut_adj_67.init = 16'hcaca;
    LUT4 i3_4_lut_then_3_lut_adj_68 (.A(subPort[8]), .B(subPort_adj_367[8]), 
         .C(\sig[83] ), .Z(n5472)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_then_3_lut_adj_68.init = 16'hcaca;
    LUT4 i3_4_lut_else_3_lut_adj_69 (.A(subPort_adj_35[8]), .B(\sig[103] ), 
         .C(\sig[83] ), .Z(n5471)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_else_3_lut_adj_69.init = 16'hcaca;
    PFUMX i4755 (.BLUT(n5471), .ALUT(n5472), .C0(\sig[82] ), .Z(addrHi[0]));
    PFUMX i4753 (.BLUT(n5468), .ALUT(n5469), .C0(\sig[82] ), .Z(addrLo[0]));
    PFUMX i4751 (.BLUT(n5465), .ALUT(n5466), .C0(\sig[82] ), .Z(addrHi[6]));
    PFUMX i4749 (.BLUT(n5462), .ALUT(n5463), .C0(\sig[82] ), .Z(addrHi[5]));
    PFUMX i4745 (.BLUT(n5456), .ALUT(n5457), .C0(\sig[82] ), .Z(addrLo[3]));
    PFUMX i4743 (.BLUT(n5453), .ALUT(n5454), .C0(\sig[82] ), .Z(addrHi[3]));
    PFUMX i4739 (.BLUT(n5447), .ALUT(n5448), .C0(\sig[82] ), .Z(addrHi[4]));
    PFUMX i4737 (.BLUT(n5444), .ALUT(n5445), .C0(\sig[82] ), .Z(addrLo[4]));
    LUT4 i3_4_lut_then_3_lut_adj_70 (.A(subPort[1]), .B(subPort_adj_367[1]), 
         .C(\sig[83] ), .Z(n5418)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_then_3_lut_adj_70.init = 16'hcaca;
    PFUMX i4735 (.BLUT(n5441), .ALUT(n5442), .C0(\sig[82] ), .Z(addrLo[5]));
    PFUMX i4733 (.BLUT(n5438), .ALUT(n5439), .C0(\sig[82] ), .Z(addrLo[7]));
    PFUMX i4729 (.BLUT(n5432), .ALUT(n5433), .C0(\sig[82] ), .Z(addrLo[6]));
    LUT4 i3_4_lut_else_3_lut_adj_71 (.A(subPort_adj_35[1]), .B(\sig[110] ), 
         .C(\sig[83] ), .Z(n5417)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_else_3_lut_adj_71.init = 16'hcaca;
    PFUMX i4725 (.BLUT(n5426), .ALUT(n5427), .C0(\sig[82] ), .Z(addrHi[7]));
    PFUMX i4711 (.BLUT(n5405), .ALUT(n5406), .C0(\sig[82] ), .Z(addrHi[2]));
    PFUMX i4721 (.BLUT(n5420), .ALUT(n5421), .C0(\sig[82] ), .Z(addrHi[1]));
    
endmodule
//
// Verilog Description of module register16_U3
//

module register16_U3 (\sig[111] , N_34, \sig[57] , addr_ibus, \sig[110] , 
            \sig[109] , \sig[108] , \sig[107] , \sig[106] , \sig[105] , 
            \sig[104] , \sig[103] , \sig[102] , \sig[101] , \sig[100] , 
            \sig[99] , \sig[98] , \sig[97] , \sig[96] ) /* synthesis syn_module_defined=1 */ ;
    output \sig[111] ;
    input N_34;
    input \sig[57] ;
    input [15:0]addr_ibus;
    output \sig[110] ;
    output \sig[109] ;
    output \sig[108] ;
    output \sig[107] ;
    output \sig[106] ;
    output \sig[105] ;
    output \sig[104] ;
    output \sig[103] ;
    output \sig[102] ;
    output \sig[101] ;
    output \sig[100] ;
    output \sig[99] ;
    output \sig[98] ;
    output \sig[97] ;
    output \sig[96] ;
    
    wire N_34 /* synthesis is_clock=1, SET_AS_NETWORK=\nWR_I_0_84/Executer/Executer_s/N_34 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(38[6:10])
    
    FD1P3AX R__i1 (.D(addr_ibus[0]), .SP(\sig[57] ), .CK(N_34), .Q(\sig[111] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=102, LSE_LLINE=81, LSE_RLINE=81 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R__i1.GSR = "DISABLED";
    FD1P3AX R__i2 (.D(addr_ibus[1]), .SP(\sig[57] ), .CK(N_34), .Q(\sig[110] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=102, LSE_LLINE=81, LSE_RLINE=81 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R__i2.GSR = "DISABLED";
    FD1P3AX R__i3 (.D(addr_ibus[2]), .SP(\sig[57] ), .CK(N_34), .Q(\sig[109] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=102, LSE_LLINE=81, LSE_RLINE=81 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R__i3.GSR = "DISABLED";
    FD1P3AX R__i4 (.D(addr_ibus[3]), .SP(\sig[57] ), .CK(N_34), .Q(\sig[108] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=102, LSE_LLINE=81, LSE_RLINE=81 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R__i4.GSR = "DISABLED";
    FD1P3AX R__i5 (.D(addr_ibus[4]), .SP(\sig[57] ), .CK(N_34), .Q(\sig[107] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=102, LSE_LLINE=81, LSE_RLINE=81 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R__i5.GSR = "DISABLED";
    FD1P3AX R__i6 (.D(addr_ibus[5]), .SP(\sig[57] ), .CK(N_34), .Q(\sig[106] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=102, LSE_LLINE=81, LSE_RLINE=81 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R__i6.GSR = "DISABLED";
    FD1P3AX R__i7 (.D(addr_ibus[6]), .SP(\sig[57] ), .CK(N_34), .Q(\sig[105] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=102, LSE_LLINE=81, LSE_RLINE=81 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R__i7.GSR = "DISABLED";
    FD1P3AX R__i8 (.D(addr_ibus[7]), .SP(\sig[57] ), .CK(N_34), .Q(\sig[104] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=102, LSE_LLINE=81, LSE_RLINE=81 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R__i8.GSR = "DISABLED";
    FD1P3AX R__i9 (.D(addr_ibus[8]), .SP(\sig[57] ), .CK(N_34), .Q(\sig[103] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=102, LSE_LLINE=81, LSE_RLINE=81 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R__i9.GSR = "DISABLED";
    FD1P3AX R__i10 (.D(addr_ibus[9]), .SP(\sig[57] ), .CK(N_34), .Q(\sig[102] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=102, LSE_LLINE=81, LSE_RLINE=81 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R__i10.GSR = "DISABLED";
    FD1P3AX R__i11 (.D(addr_ibus[10]), .SP(\sig[57] ), .CK(N_34), .Q(\sig[101] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=102, LSE_LLINE=81, LSE_RLINE=81 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R__i11.GSR = "DISABLED";
    FD1P3AX R__i12 (.D(addr_ibus[11]), .SP(\sig[57] ), .CK(N_34), .Q(\sig[100] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=102, LSE_LLINE=81, LSE_RLINE=81 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R__i12.GSR = "DISABLED";
    FD1P3AX R__i13 (.D(addr_ibus[12]), .SP(\sig[57] ), .CK(N_34), .Q(\sig[99] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=102, LSE_LLINE=81, LSE_RLINE=81 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R__i13.GSR = "DISABLED";
    FD1P3AX R__i14 (.D(addr_ibus[13]), .SP(\sig[57] ), .CK(N_34), .Q(\sig[98] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=102, LSE_LLINE=81, LSE_RLINE=81 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R__i14.GSR = "DISABLED";
    FD1P3AX R__i15 (.D(addr_ibus[14]), .SP(\sig[57] ), .CK(N_34), .Q(\sig[97] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=102, LSE_LLINE=81, LSE_RLINE=81 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R__i15.GSR = "DISABLED";
    FD1P3AX R__i16 (.D(addr_ibus[15]), .SP(\sig[57] ), .CK(N_34), .Q(\sig[96] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=102, LSE_LLINE=81, LSE_RLINE=81 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R__i16.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module register16_U4
//

module register16_U4 (subPort, N_34, \sig[58] , addr_ibus) /* synthesis syn_module_defined=1 */ ;
    output [15:0]subPort;
    input N_34;
    input \sig[58] ;
    input [15:0]addr_ibus;
    
    wire N_34 /* synthesis is_clock=1, SET_AS_NETWORK=\nWR_I_0_84/Executer/Executer_s/N_34 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(38[6:10])
    
    FD1P3AX R_i0_i0 (.D(addr_ibus[0]), .SP(\sig[58] ), .CK(N_34), .Q(subPort[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=80, LSE_RLINE=80 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i0.GSR = "DISABLED";
    FD1P3AX R_i0_i1 (.D(addr_ibus[1]), .SP(\sig[58] ), .CK(N_34), .Q(subPort[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=80, LSE_RLINE=80 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i1.GSR = "DISABLED";
    FD1P3AX R_i0_i2 (.D(addr_ibus[2]), .SP(\sig[58] ), .CK(N_34), .Q(subPort[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=80, LSE_RLINE=80 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i2.GSR = "DISABLED";
    FD1P3AX R_i0_i3 (.D(addr_ibus[3]), .SP(\sig[58] ), .CK(N_34), .Q(subPort[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=80, LSE_RLINE=80 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i3.GSR = "DISABLED";
    FD1P3AX R_i0_i4 (.D(addr_ibus[4]), .SP(\sig[58] ), .CK(N_34), .Q(subPort[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=80, LSE_RLINE=80 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i4.GSR = "DISABLED";
    FD1P3AX R_i0_i5 (.D(addr_ibus[5]), .SP(\sig[58] ), .CK(N_34), .Q(subPort[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=80, LSE_RLINE=80 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i5.GSR = "DISABLED";
    FD1P3AX R_i0_i6 (.D(addr_ibus[6]), .SP(\sig[58] ), .CK(N_34), .Q(subPort[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=80, LSE_RLINE=80 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i6.GSR = "DISABLED";
    FD1P3AX R_i0_i7 (.D(addr_ibus[7]), .SP(\sig[58] ), .CK(N_34), .Q(subPort[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=80, LSE_RLINE=80 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i7.GSR = "DISABLED";
    FD1P3AX R_i0_i8 (.D(addr_ibus[8]), .SP(\sig[58] ), .CK(N_34), .Q(subPort[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=80, LSE_RLINE=80 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i8.GSR = "DISABLED";
    FD1P3AX R_i0_i9 (.D(addr_ibus[9]), .SP(\sig[58] ), .CK(N_34), .Q(subPort[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=80, LSE_RLINE=80 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i9.GSR = "DISABLED";
    FD1P3AX R_i0_i10 (.D(addr_ibus[10]), .SP(\sig[58] ), .CK(N_34), .Q(subPort[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=80, LSE_RLINE=80 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i10.GSR = "DISABLED";
    FD1P3AX R_i0_i11 (.D(addr_ibus[11]), .SP(\sig[58] ), .CK(N_34), .Q(subPort[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=80, LSE_RLINE=80 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i11.GSR = "DISABLED";
    FD1P3AX R_i0_i12 (.D(addr_ibus[12]), .SP(\sig[58] ), .CK(N_34), .Q(subPort[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=80, LSE_RLINE=80 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i12.GSR = "DISABLED";
    FD1P3AX R_i0_i13 (.D(addr_ibus[13]), .SP(\sig[58] ), .CK(N_34), .Q(subPort[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=80, LSE_RLINE=80 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i13.GSR = "DISABLED";
    FD1P3AX R_i0_i14 (.D(addr_ibus[14]), .SP(\sig[58] ), .CK(N_34), .Q(subPort[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=80, LSE_RLINE=80 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i14.GSR = "DISABLED";
    FD1P3AX R_i0_i15 (.D(addr_ibus[15]), .SP(\sig[58] ), .CK(N_34), .Q(subPort[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=80, LSE_RLINE=80 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i15.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module register16_U5
//

module register16_U5 (subPort, N_34, \sig[59] , addr_ibus) /* synthesis syn_module_defined=1 */ ;
    output [15:0]subPort;
    input N_34;
    input \sig[59] ;
    input [15:0]addr_ibus;
    
    wire N_34 /* synthesis is_clock=1, SET_AS_NETWORK=\nWR_I_0_84/Executer/Executer_s/N_34 */ ;   // v:/cpu2908/fpga/machxo2/impl1/executer_s.v(38[6:10])
    
    FD1P3AX R_i0_i0 (.D(addr_ibus[0]), .SP(\sig[59] ), .CK(N_34), .Q(subPort[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=79, LSE_RLINE=79 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i0.GSR = "DISABLED";
    FD1P3AX R_i0_i1 (.D(addr_ibus[1]), .SP(\sig[59] ), .CK(N_34), .Q(subPort[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=79, LSE_RLINE=79 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i1.GSR = "DISABLED";
    FD1P3AX R_i0_i2 (.D(addr_ibus[2]), .SP(\sig[59] ), .CK(N_34), .Q(subPort[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=79, LSE_RLINE=79 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i2.GSR = "DISABLED";
    FD1P3AX R_i0_i3 (.D(addr_ibus[3]), .SP(\sig[59] ), .CK(N_34), .Q(subPort[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=79, LSE_RLINE=79 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i3.GSR = "DISABLED";
    FD1P3AX R_i0_i4 (.D(addr_ibus[4]), .SP(\sig[59] ), .CK(N_34), .Q(subPort[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=79, LSE_RLINE=79 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i4.GSR = "DISABLED";
    FD1P3AX R_i0_i5 (.D(addr_ibus[5]), .SP(\sig[59] ), .CK(N_34), .Q(subPort[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=79, LSE_RLINE=79 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i5.GSR = "DISABLED";
    FD1P3AX R_i0_i6 (.D(addr_ibus[6]), .SP(\sig[59] ), .CK(N_34), .Q(subPort[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=79, LSE_RLINE=79 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i6.GSR = "DISABLED";
    FD1P3AX R_i0_i7 (.D(addr_ibus[7]), .SP(\sig[59] ), .CK(N_34), .Q(subPort[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=79, LSE_RLINE=79 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i7.GSR = "DISABLED";
    FD1P3AX R_i0_i8 (.D(addr_ibus[8]), .SP(\sig[59] ), .CK(N_34), .Q(subPort[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=79, LSE_RLINE=79 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i8.GSR = "DISABLED";
    FD1P3AX R_i0_i9 (.D(addr_ibus[9]), .SP(\sig[59] ), .CK(N_34), .Q(subPort[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=79, LSE_RLINE=79 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i9.GSR = "DISABLED";
    FD1P3AX R_i0_i10 (.D(addr_ibus[10]), .SP(\sig[59] ), .CK(N_34), .Q(subPort[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=79, LSE_RLINE=79 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i10.GSR = "DISABLED";
    FD1P3AX R_i0_i11 (.D(addr_ibus[11]), .SP(\sig[59] ), .CK(N_34), .Q(subPort[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=79, LSE_RLINE=79 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i11.GSR = "DISABLED";
    FD1P3AX R_i0_i12 (.D(addr_ibus[12]), .SP(\sig[59] ), .CK(N_34), .Q(subPort[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=79, LSE_RLINE=79 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i12.GSR = "DISABLED";
    FD1P3AX R_i0_i13 (.D(addr_ibus[13]), .SP(\sig[59] ), .CK(N_34), .Q(subPort[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=79, LSE_RLINE=79 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i13.GSR = "DISABLED";
    FD1P3AX R_i0_i14 (.D(addr_ibus[14]), .SP(\sig[59] ), .CK(N_34), .Q(subPort[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=79, LSE_RLINE=79 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i14.GSR = "DISABLED";
    FD1P3AX R_i0_i15 (.D(addr_ibus[15]), .SP(\sig[59] ), .CK(N_34), .Q(subPort[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=12, LSE_RCOL=81, LSE_LLINE=79, LSE_RLINE=79 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0_i15.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module zeroFlag
//

module zeroFlag (data_ibus, n14, n13) /* synthesis syn_module_defined=1 */ ;
    input [7:0]data_ibus;
    output n14;
    output n13;
    
    
    LUT4 i6_4_lut (.A(data_ibus[5]), .B(data_ibus[2]), .C(data_ibus[4]), 
         .D(data_ibus[6]), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // v:/cpu2908/fpga/machxo2/alu.v(146[12:67])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i5_4_lut (.A(data_ibus[7]), .B(data_ibus[1]), .C(data_ibus[3]), 
         .D(data_ibus[0]), .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // v:/cpu2908/fpga/machxo2/alu.v(146[12:67])
    defparam i5_4_lut.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module tristateBuff8_U9
//

module tristateBuff8_U9 (InternalDataBus, n3155, data_ibus, \ALU_A[3] , 
            n5393, n4, n5384, n2, LogicOut, \sig[43] , \sig[93] , 
            \sig[94] , \sig[46] , \flag[4] , \flag[2] , n5380, n3, 
            n4_adj_12, \sig[45] , \sig[44] , \flag[1] , n3_adj_13, 
            n4_adj_14, \sig[47] , \ALU_OUT[7] , \aout[2] , n4_adj_15, 
            n3166, n3_adj_16, n4_adj_17, n2_adj_18) /* synthesis syn_module_defined=1 */ ;
    input [7:0]InternalDataBus;
    input n3155;
    output [7:0]data_ibus;
    input \ALU_A[3] ;
    input n5393;
    input n4;
    input n5384;
    input n2;
    input [7:0]LogicOut;
    input \sig[43] ;
    input \sig[93] ;
    input \sig[94] ;
    input \sig[46] ;
    input \flag[4] ;
    input \flag[2] ;
    input n5380;
    input n3;
    input n4_adj_12;
    input \sig[45] ;
    input \sig[44] ;
    input \flag[1] ;
    input n3_adj_13;
    input n4_adj_14;
    input \sig[47] ;
    input \ALU_OUT[7] ;
    input \aout[2] ;
    input n4_adj_15;
    input n3166;
    input n3_adj_16;
    input n4_adj_17;
    input n2_adj_18;
    
    
    wire n6, n2_c, n6_adj_317, n6_adj_319, n6_adj_320, n6_adj_321, 
        n6_adj_322, n2_adj_323, n6_adj_325, n2_adj_326, n2_adj_329, 
        n5409, n2_adj_331, n5408;
    
    LUT4 i3_4_lut (.A(InternalDataBus[6]), .B(n6), .C(n2_c), .D(n3155), 
         .Z(data_ibus[6])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut.init = 16'hfcfe;
    LUT4 Select_212_i2_4_lut (.A(\ALU_A[3] ), .B(n5393), .C(n4), .D(n5384), 
         .Z(n2_c)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam Select_212_i2_4_lut.init = 16'hc8c0;
    LUT4 i3_4_lut_adj_30 (.A(InternalDataBus[1]), .B(n6_adj_317), .C(n2), 
         .D(n3155), .Z(data_ibus[1])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut_adj_30.init = 16'hfcfe;
    LUT4 i2_4_lut_4_lut (.A(LogicOut[0]), .B(\sig[43] ), .C(\sig[93] ), 
         .D(\sig[94] ), .Z(n6_adj_319)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i2_4_lut_4_lut.init = 16'hca00;
    LUT4 i2_4_lut_4_lut_adj_31 (.A(LogicOut[6]), .B(\sig[46] ), .C(\sig[93] ), 
         .D(\sig[94] ), .Z(n6)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i2_4_lut_4_lut_adj_31.init = 16'hca00;
    LUT4 i2_4_lut_4_lut_adj_32 (.A(LogicOut[4]), .B(\flag[4] ), .C(\sig[93] ), 
         .D(\sig[94] ), .Z(n6_adj_320)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i2_4_lut_4_lut_adj_32.init = 16'hca00;
    LUT4 i2_4_lut_4_lut_adj_33 (.A(LogicOut[2]), .B(\flag[2] ), .C(\sig[93] ), 
         .D(\sig[94] ), .Z(n6_adj_321)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i2_4_lut_4_lut_adj_33.init = 16'hca00;
    LUT4 i3_4_lut_adj_34 (.A(InternalDataBus[3]), .B(n6_adj_322), .C(n2_adj_323), 
         .D(n3155), .Z(data_ibus[3])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut_adj_34.init = 16'hfcfe;
    LUT4 Select_215_i2_4_lut (.A(n5380), .B(n5393), .C(n3), .D(n4_adj_12), 
         .Z(n2_adj_323)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam Select_215_i2_4_lut.init = 16'hccc8;
    LUT4 i2_4_lut_4_lut_adj_35 (.A(LogicOut[5]), .B(\sig[45] ), .C(\sig[93] ), 
         .D(\sig[94] ), .Z(n6_adj_325)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i2_4_lut_4_lut_adj_35.init = 16'hca00;
    LUT4 i2_4_lut_4_lut_adj_36 (.A(LogicOut[3]), .B(\sig[44] ), .C(\sig[93] ), 
         .D(\sig[94] ), .Z(n6_adj_322)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i2_4_lut_4_lut_adj_36.init = 16'hca00;
    LUT4 i3_4_lut_adj_37 (.A(InternalDataBus[5]), .B(n6_adj_325), .C(n2_adj_326), 
         .D(n3155), .Z(data_ibus[5])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut_adj_37.init = 16'hfcfe;
    LUT4 i2_4_lut_4_lut_adj_38 (.A(LogicOut[1]), .B(\flag[1] ), .C(\sig[93] ), 
         .D(\sig[94] ), .Z(n6_adj_317)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i2_4_lut_4_lut_adj_38.init = 16'hca00;
    LUT4 Select_213_i2_4_lut (.A(n5380), .B(n5393), .C(n3_adj_13), .D(n4_adj_14), 
         .Z(n2_adj_326)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam Select_213_i2_4_lut.init = 16'hccc8;
    LUT4 i3_4_lut_adj_39 (.A(InternalDataBus[2]), .B(n6_adj_321), .C(n2_adj_329), 
         .D(n3155), .Z(data_ibus[2])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut_adj_39.init = 16'hfcfe;
    LUT4 i3_4_lut_then_3_lut (.A(\sig[47] ), .B(\ALU_OUT[7] ), .C(\sig[94] ), 
         .Z(n5409)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i3_4_lut_then_3_lut.init = 16'hacac;
    LUT4 Select_216_i2_4_lut (.A(\aout[2] ), .B(n5393), .C(n4_adj_15), 
         .D(n3166), .Z(n2_adj_329)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C))) */ ;
    defparam Select_216_i2_4_lut.init = 16'hc0c8;
    LUT4 i3_4_lut_adj_40 (.A(InternalDataBus[4]), .B(n6_adj_320), .C(n2_adj_331), 
         .D(n3155), .Z(data_ibus[4])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut_adj_40.init = 16'hfcfe;
    LUT4 i3_4_lut_else_3_lut (.A(InternalDataBus[7]), .B(LogicOut[7]), .C(\sig[94] ), 
         .Z(n5408)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3_4_lut_else_3_lut.init = 16'hcaca;
    LUT4 Select_214_i2_4_lut (.A(n5380), .B(n5393), .C(n3_adj_16), .D(n4_adj_17), 
         .Z(n2_adj_331)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam Select_214_i2_4_lut.init = 16'hccc8;
    LUT4 i3_4_lut_adj_41 (.A(InternalDataBus[0]), .B(n6_adj_319), .C(n2_adj_18), 
         .D(n3155), .Z(data_ibus[0])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut_adj_41.init = 16'hfcfe;
    PFUMX i4713 (.BLUT(n5408), .ALUT(n5409), .C0(\sig[93] ), .Z(data_ibus[7]));
    
endmodule
//
// Verilog Description of module ALU
//

module ALU (\sig[77] , ALU_A, n4, n1098, \sig[75] , n5384, n3, 
            n3_adj_5, n3_adj_6, \sig[76] , \sig[74] , \sig[78] , n3166, 
            \ALU_OUT[7] , ALU_B, N_31, n5380, LogicOut, GND_net, 
            \aout[2] , N_21, n4_adj_7, n4_adj_8, n4_adj_9, n4_adj_10, 
            n5393, n2, n2_adj_11) /* synthesis syn_module_defined=1 */ ;
    input \sig[77] ;
    input [7:0]ALU_A;
    output n4;
    output n1098;
    input \sig[75] ;
    output n5384;
    output n3;
    output n3_adj_5;
    output n3_adj_6;
    input \sig[76] ;
    input \sig[74] ;
    input \sig[78] ;
    output n3166;
    output \ALU_OUT[7] ;
    input [7:0]ALU_B;
    output N_31;
    output n5380;
    output [7:0]LogicOut;
    input GND_net;
    output \aout[2] ;
    input N_21;
    output n4_adj_7;
    output n4_adj_8;
    output n4_adj_9;
    output n4_adj_10;
    input n5393;
    output n2;
    output n2_adj_11;
    
    
    wire n5390, n5381, cc, n5396, n5383;
    wire [7:0]aout;   // v:/cpu2908/fpga/machxo2/alu.v(17[11:15])
    
    LUT4 i1_3_lut_4_lut_4_lut (.A(n5390), .B(\sig[77] ), .C(ALU_A[3]), 
         .D(n5381), .Z(n4)) /* synthesis lut_function=(A (B (C)+!B (D))+!A !(B+!(D))) */ ;   // v:/cpu2908/fpga/machxo2/alu.v(40[14:45])
    defparam i1_3_lut_4_lut_4_lut.init = 16'hb380;
    LUT4 i628_3_lut_4_lut (.A(n5390), .B(\sig[77] ), .C(ALU_A[0]), .D(cc), 
         .Z(n1098)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // v:/cpu2908/fpga/machxo2/alu.v(40[14:45])
    defparam i628_3_lut_4_lut.init = 16'hf780;
    LUT4 i2_3_lut_rep_96 (.A(\sig[75] ), .B(n5396), .C(\sig[77] ), .Z(n5384)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/alu.v(40[14:23])
    defparam i2_3_lut_rep_96.init = 16'h0808;
    LUT4 Select_238_i3_2_lut_4_lut (.A(\sig[75] ), .B(n5396), .C(\sig[77] ), 
         .D(ALU_A[1]), .Z(n3)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/alu.v(40[14:23])
    defparam Select_238_i3_2_lut_4_lut.init = 16'h0800;
    LUT4 Select_237_i3_2_lut_4_lut (.A(\sig[75] ), .B(n5396), .C(\sig[77] ), 
         .D(ALU_A[2]), .Z(n3_adj_5)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/alu.v(40[14:23])
    defparam Select_237_i3_2_lut_4_lut.init = 16'h0800;
    LUT4 Select_239_i3_2_lut_4_lut (.A(\sig[75] ), .B(n5396), .C(\sig[77] ), 
         .D(ALU_A[0]), .Z(n3_adj_6)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/alu.v(40[14:23])
    defparam Select_239_i3_2_lut_4_lut.init = 16'h0800;
    LUT4 i2_3_lut_rep_108 (.A(\sig[76] ), .B(\sig[74] ), .C(\sig[78] ), 
         .Z(n5396)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut_rep_108.init = 16'h0808;
    LUT4 i1_2_lut_rep_102_4_lut (.A(\sig[76] ), .B(\sig[74] ), .C(\sig[78] ), 
         .D(\sig[75] ), .Z(n5390)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_102_4_lut.init = 16'h0008;
    LUT4 i2715_4_lut (.A(\sig[78] ), .B(n5396), .C(\sig[75] ), .D(\sig[77] ), 
         .Z(n3166)) /* synthesis lut_function=(A+!((C (D))+!B)) */ ;
    defparam i2715_4_lut.init = 16'haeee;
    LUT4 OV_I_0_4_lut (.A(ALU_A[7]), .B(\ALU_OUT[7] ), .C(ALU_B[7]), .D(\sig[74] ), 
         .Z(N_31)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))))) */ ;   // v:/cpu2908/fpga/machxo2/alu.v(38[11:51])
    defparam OV_I_0_4_lut.init = 16'h4224;
    LUT4 i1_2_lut_rep_93_3_lut (.A(\sig[75] ), .B(n5396), .C(ALU_A[7]), 
         .Z(n5381)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // v:/cpu2908/fpga/machxo2/alu.v(40[14:23])
    defparam i1_2_lut_rep_93_3_lut.init = 16'h4040;
    LUT4 i2_2_lut_rep_92_3_lut_4_lut (.A(\sig[75] ), .B(n5396), .C(\sig[77] ), 
         .D(ALU_A[7]), .Z(n5380)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // v:/cpu2908/fpga/machxo2/alu.v(40[14:23])
    defparam i2_2_lut_rep_92_3_lut_4_lut.init = 16'h0400;
    LUT4 isSxR_I_0_45_2_lut_rep_95_3_lut (.A(\sig[75] ), .B(n5396), .C(\sig[77] ), 
         .Z(n5383)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // v:/cpu2908/fpga/machxo2/alu.v(40[14:23])
    defparam isSxR_I_0_45_2_lut_rep_95_3_lut.init = 16'h4040;
    ALU_L8 il (.ALU_A({ALU_A}), .LogicOut({LogicOut}), .\sig[74] (\sig[74] ), 
           .\sig[75] (\sig[75] ), .ALU_B({ALU_B}), .\sig[76] (\sig[76] ), 
           .\sig[77] (\sig[77] )) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/alu.v(22[8:41])
    ALU_A8 ia (.ALU_A({ALU_A}), .LogicOut({LogicOut}), .GND_net(GND_net), 
           .aout({aout[7:3], \aout[2] , aout[1:0]}), .cc(cc), .N_21(N_21)) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/alu.v(23[8:57])
    tristateBuff8 YA_7__I_0 (.\aout[4] (aout[4]), .\ALU_A[5] (ALU_A[5]), 
            .n3166(n3166), .n5383(n5383), .n4(n4_adj_7), .\ALU_A[2] (ALU_A[2]), 
            .\aout[1] (aout[1]), .\aout[3] (aout[3]), .\ALU_A[4] (ALU_A[4]), 
            .n4_adj_1(n4_adj_8), .\ALU_A[7] (ALU_A[7]), .n5390(n5390), 
            .\aout[6] (aout[6]), .n4_adj_2(n4_adj_9), .\aout[5] (aout[5]), 
            .\ALU_A[6] (ALU_A[6]), .n4_adj_3(n4_adj_10), .\sig[77] (\sig[77] ), 
            .n5381(n5381), .n5393(n5393), .n2(n2), .\ALU_A[1] (ALU_A[1]), 
            .\aout[0] (aout[0]), .n5380(n5380), .\aout[7] (aout[7]), .\ALU_OUT[7] (\ALU_OUT[7] ), 
            .N_21(N_21), .n5384(n5384), .n2_adj_4(n2_adj_11)) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/alu.v(70[15] 74[2])
    
endmodule
//
// Verilog Description of module ALU_L8
//

module ALU_L8 (ALU_A, LogicOut, \sig[74] , \sig[75] , ALU_B, \sig[76] , 
            \sig[77] ) /* synthesis syn_module_defined=1 */ ;
    input [7:0]ALU_A;
    output [7:0]LogicOut;
    input \sig[74] ;
    input \sig[75] ;
    input [7:0]ALU_B;
    input \sig[76] ;
    input \sig[77] ;
    
    
    wire n5002, n5003, n4981, n4982, n4984, n4985, n4987, n4988, 
        n4990, n4991, n4993, n4994, n4996, n4997, n4999, n5000;
    
    PFUMX i4507 (.BLUT(n5002), .ALUT(n5003), .C0(ALU_A[7]), .Z(LogicOut[0]));
    PFUMX i4486 (.BLUT(n4981), .ALUT(n4982), .C0(ALU_A[0]), .Z(LogicOut[7]));
    PFUMX i4489 (.BLUT(n4984), .ALUT(n4985), .C0(ALU_A[1]), .Z(LogicOut[6]));
    PFUMX i4492 (.BLUT(n4987), .ALUT(n4988), .C0(ALU_A[2]), .Z(LogicOut[5]));
    PFUMX i4495 (.BLUT(n4990), .ALUT(n4991), .C0(ALU_A[3]), .Z(LogicOut[4]));
    PFUMX i4498 (.BLUT(n4993), .ALUT(n4994), .C0(ALU_A[4]), .Z(LogicOut[3]));
    PFUMX i4501 (.BLUT(n4996), .ALUT(n4997), .C0(ALU_A[5]), .Z(LogicOut[2]));
    LUT4 i4502_3_lut (.A(\sig[74] ), .B(\sig[75] ), .C(ALU_B[6]), .Z(n4999)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4502_3_lut.init = 16'hcaca;
    LUT4 i4503_3_lut (.A(\sig[76] ), .B(\sig[77] ), .C(ALU_B[6]), .Z(n5000)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4503_3_lut.init = 16'hcaca;
    LUT4 i4505_3_lut (.A(\sig[74] ), .B(\sig[75] ), .C(ALU_B[7]), .Z(n5002)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4505_3_lut.init = 16'hcaca;
    LUT4 i4493_3_lut (.A(\sig[74] ), .B(\sig[75] ), .C(ALU_B[3]), .Z(n4990)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4493_3_lut.init = 16'hcaca;
    LUT4 i4494_3_lut (.A(\sig[76] ), .B(\sig[77] ), .C(ALU_B[3]), .Z(n4991)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4494_3_lut.init = 16'hcaca;
    LUT4 i4496_3_lut (.A(\sig[74] ), .B(\sig[75] ), .C(ALU_B[4]), .Z(n4993)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4496_3_lut.init = 16'hcaca;
    LUT4 i4497_3_lut (.A(\sig[76] ), .B(\sig[77] ), .C(ALU_B[4]), .Z(n4994)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4497_3_lut.init = 16'hcaca;
    LUT4 i4499_3_lut (.A(\sig[74] ), .B(\sig[75] ), .C(ALU_B[5]), .Z(n4996)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4499_3_lut.init = 16'hcaca;
    LUT4 i4500_3_lut (.A(\sig[76] ), .B(\sig[77] ), .C(ALU_B[5]), .Z(n4997)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4500_3_lut.init = 16'hcaca;
    LUT4 i4506_3_lut (.A(\sig[76] ), .B(\sig[77] ), .C(ALU_B[7]), .Z(n5003)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4506_3_lut.init = 16'hcaca;
    PFUMX i4504 (.BLUT(n4999), .ALUT(n5000), .C0(ALU_A[6]), .Z(LogicOut[1]));
    LUT4 i4484_3_lut (.A(\sig[74] ), .B(\sig[75] ), .C(ALU_B[0]), .Z(n4981)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4484_3_lut.init = 16'hcaca;
    LUT4 i4485_3_lut (.A(\sig[76] ), .B(\sig[77] ), .C(ALU_B[0]), .Z(n4982)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4485_3_lut.init = 16'hcaca;
    LUT4 i4487_3_lut (.A(\sig[74] ), .B(\sig[75] ), .C(ALU_B[1]), .Z(n4984)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4487_3_lut.init = 16'hcaca;
    LUT4 i4488_3_lut (.A(\sig[76] ), .B(\sig[77] ), .C(ALU_B[1]), .Z(n4985)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4488_3_lut.init = 16'hcaca;
    LUT4 i4490_3_lut (.A(\sig[74] ), .B(\sig[75] ), .C(ALU_B[2]), .Z(n4987)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4490_3_lut.init = 16'hcaca;
    LUT4 i4491_3_lut (.A(\sig[76] ), .B(\sig[77] ), .C(ALU_B[2]), .Z(n4988)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4491_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module ALU_A8
//

module ALU_A8 (ALU_A, LogicOut, GND_net, aout, cc, N_21) /* synthesis syn_module_defined=1 */ ;
    input [7:0]ALU_A;
    input [7:0]LogicOut;
    input GND_net;
    output [7:0]aout;
    output cc;
    input N_21;
    
    
    wire n4660, n4659, n4658, n4657;
    
    CCU2D add_7_9 (.A0(ALU_A[7]), .B0(LogicOut[7]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4660), 
          .S0(aout[7]), .S1(cc));   // v:/cpu2908/fpga/machxo2/alu.v(90[16:19])
    defparam add_7_9.INIT0 = 16'h5666;
    defparam add_7_9.INIT1 = 16'h0000;
    defparam add_7_9.INJECT1_0 = "NO";
    defparam add_7_9.INJECT1_1 = "NO";
    CCU2D add_7_7 (.A0(ALU_A[5]), .B0(LogicOut[5]), .C0(GND_net), .D0(GND_net), 
          .A1(ALU_A[6]), .B1(LogicOut[6]), .C1(GND_net), .D1(GND_net), 
          .CIN(n4659), .COUT(n4660), .S0(aout[5]), .S1(aout[6]));   // v:/cpu2908/fpga/machxo2/alu.v(90[16:19])
    defparam add_7_7.INIT0 = 16'h5666;
    defparam add_7_7.INIT1 = 16'h5666;
    defparam add_7_7.INJECT1_0 = "NO";
    defparam add_7_7.INJECT1_1 = "NO";
    CCU2D add_7_5 (.A0(ALU_A[3]), .B0(LogicOut[3]), .C0(GND_net), .D0(GND_net), 
          .A1(ALU_A[4]), .B1(LogicOut[4]), .C1(GND_net), .D1(GND_net), 
          .CIN(n4658), .COUT(n4659), .S0(aout[3]), .S1(aout[4]));   // v:/cpu2908/fpga/machxo2/alu.v(90[16:19])
    defparam add_7_5.INIT0 = 16'h5666;
    defparam add_7_5.INIT1 = 16'h5666;
    defparam add_7_5.INJECT1_0 = "NO";
    defparam add_7_5.INJECT1_1 = "NO";
    CCU2D add_7_3 (.A0(ALU_A[1]), .B0(LogicOut[1]), .C0(GND_net), .D0(GND_net), 
          .A1(ALU_A[2]), .B1(LogicOut[2]), .C1(GND_net), .D1(GND_net), 
          .CIN(n4657), .COUT(n4658), .S0(aout[1]), .S1(aout[2]));   // v:/cpu2908/fpga/machxo2/alu.v(90[16:19])
    defparam add_7_3.INIT0 = 16'h5666;
    defparam add_7_3.INIT1 = 16'h5666;
    defparam add_7_3.INJECT1_0 = "NO";
    defparam add_7_3.INJECT1_1 = "NO";
    CCU2D add_7_1 (.A0(N_21), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ALU_A[0]), .B1(LogicOut[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n4657), .S1(aout[0]));   // v:/cpu2908/fpga/machxo2/alu.v(90[16:19])
    defparam add_7_1.INIT0 = 16'h5000;
    defparam add_7_1.INIT1 = 16'h5666;
    defparam add_7_1.INJECT1_0 = "NO";
    defparam add_7_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module tristateBuff8
//

module tristateBuff8 (\aout[4] , \ALU_A[5] , n3166, n5383, n4, \ALU_A[2] , 
            \aout[1] , \aout[3] , \ALU_A[4] , n4_adj_1, \ALU_A[7] , 
            n5390, \aout[6] , n4_adj_2, \aout[5] , \ALU_A[6] , n4_adj_3, 
            \sig[77] , n5381, n5393, n2, \ALU_A[1] , \aout[0] , 
            n5380, \aout[7] , \ALU_OUT[7] , N_21, n5384, n2_adj_4) /* synthesis syn_module_defined=1 */ ;
    input \aout[4] ;
    input \ALU_A[5] ;
    input n3166;
    input n5383;
    output n4;
    input \ALU_A[2] ;
    input \aout[1] ;
    input \aout[3] ;
    input \ALU_A[4] ;
    output n4_adj_1;
    input \ALU_A[7] ;
    input n5390;
    input \aout[6] ;
    output n4_adj_2;
    input \aout[5] ;
    input \ALU_A[6] ;
    output n4_adj_3;
    input \sig[77] ;
    input n5381;
    input n5393;
    output n2;
    input \ALU_A[1] ;
    input \aout[0] ;
    input n5380;
    input \aout[7] ;
    output \ALU_OUT[7] ;
    input N_21;
    input n5384;
    output n2_adj_4;
    
    
    wire n4882, n4878, n4_adj_308;
    
    LUT4 i1_4_lut (.A(\aout[4] ), .B(\ALU_A[5] ), .C(n3166), .D(n5383), 
         .Z(n4)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut.init = 16'hce0a;
    LUT4 i1_4_lut_adj_24 (.A(\ALU_A[2] ), .B(\aout[1] ), .C(n5383), .D(n3166), 
         .Z(n4882)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;
    defparam i1_4_lut_adj_24.init = 16'ha0ec;
    LUT4 i1_4_lut_adj_25 (.A(\aout[3] ), .B(\ALU_A[4] ), .C(n3166), .D(n5383), 
         .Z(n4_adj_1)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_25.init = 16'hce0a;
    LUT4 i1_3_lut_4_lut (.A(\ALU_A[7] ), .B(n5390), .C(n3166), .D(\aout[6] ), 
         .Z(n4_adj_2)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h8f88;
    LUT4 i1_4_lut_adj_26 (.A(\aout[5] ), .B(\ALU_A[6] ), .C(n3166), .D(n5383), 
         .Z(n4_adj_3)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_26.init = 16'hce0a;
    LUT4 Select_218_i2_3_lut_4_lut (.A(\sig[77] ), .B(n5381), .C(n4878), 
         .D(n5393), .Z(n2)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam Select_218_i2_3_lut_4_lut.init = 16'hf400;
    LUT4 i1_4_lut_adj_27 (.A(\ALU_A[1] ), .B(\aout[0] ), .C(n5383), .D(n3166), 
         .Z(n4878)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;
    defparam i1_4_lut_adj_27.init = 16'ha0ec;
    LUT4 i1_4_lut_adj_28 (.A(n5380), .B(\aout[7] ), .C(n4_adj_308), .D(n3166), 
         .Z(\ALU_OUT[7] )) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_28.init = 16'hfafe;
    LUT4 i1_4_lut_adj_29 (.A(N_21), .B(\ALU_A[4] ), .C(n5383), .D(n5384), 
         .Z(n4_adj_308)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_29.init = 16'heca0;
    LUT4 Select_217_i2_3_lut_4_lut (.A(\sig[77] ), .B(n5381), .C(n4882), 
         .D(n5393), .Z(n2_adj_4)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam Select_217_i2_3_lut_4_lut.init = 16'hf400;
    
endmodule
//
// Verilog Description of module flagReg
//

module flagReg (\sig[43] , clkQ_c__inv, clkQ_c_derived_27_enable_9, \sig[47] , 
            \sig[46] , \sig[45] , clkQ_c_derived_27_enable_5, InternalDataBus, 
            \flag[1] , \sig[44] , \flag[2] , \flag[4] , \sig[78] , 
            \sig[88] , n1098, \sig[89] , N_31, n13, n14, \data_ibus[7] ) /* synthesis syn_module_defined=1 */ ;
    output \sig[43] ;
    input clkQ_c__inv;
    input clkQ_c_derived_27_enable_9;
    output \sig[47] ;
    output \sig[46] ;
    output \sig[45] ;
    input clkQ_c_derived_27_enable_5;
    input [7:0]InternalDataBus;
    output \flag[1] ;
    output \sig[44] ;
    output \flag[2] ;
    output \flag[4] ;
    input \sig[78] ;
    input \sig[88] ;
    input n1098;
    input \sig[89] ;
    input N_31;
    input n13;
    input n14;
    input \data_ibus[7] ;
    
    wire clkQ_c__inv /* synthesis is_inv_clock=1, is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    wire [7:0]flagT;   // v:/cpu2908/fpga/machxo2/executer.v(260[11:16])
    
    wire n1103;
    
    FD1P3AX flagRegister__i1 (.D(flagT[0]), .SP(clkQ_c_derived_27_enable_9), 
            .CK(clkQ_c__inv), .Q(\sig[43] )) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=63, LSE_RLINE=66 */ ;   // v:/cpu2908/fpga/machxo2/executer.v(267[8] 269[4])
    defparam flagRegister__i1.GSR = "DISABLED";
    FD1P3AX flagRegister__i8 (.D(flagT[7]), .SP(clkQ_c_derived_27_enable_9), 
            .CK(clkQ_c__inv), .Q(\sig[47] )) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=63, LSE_RLINE=66 */ ;   // v:/cpu2908/fpga/machxo2/executer.v(267[8] 269[4])
    defparam flagRegister__i8.GSR = "DISABLED";
    FD1P3AX flagRegister__i7 (.D(flagT[6]), .SP(clkQ_c_derived_27_enable_9), 
            .CK(clkQ_c__inv), .Q(\sig[46] )) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=63, LSE_RLINE=66 */ ;   // v:/cpu2908/fpga/machxo2/executer.v(267[8] 269[4])
    defparam flagRegister__i7.GSR = "DISABLED";
    FD1P3AX flagRegister__i6 (.D(InternalDataBus[5]), .SP(clkQ_c_derived_27_enable_5), 
            .CK(clkQ_c__inv), .Q(\sig[45] )) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=63, LSE_RLINE=66 */ ;   // v:/cpu2908/fpga/machxo2/executer.v(267[8] 269[4])
    defparam flagRegister__i6.GSR = "DISABLED";
    FD1P3JX flagRegister__i2 (.D(InternalDataBus[1]), .SP(clkQ_c_derived_27_enable_9), 
            .PD(n1103), .CK(clkQ_c__inv), .Q(\flag[1] )) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=63, LSE_RLINE=66 */ ;   // v:/cpu2908/fpga/machxo2/executer.v(267[8] 269[4])
    defparam flagRegister__i2.GSR = "DISABLED";
    FD1P3AX flagRegister__i4 (.D(flagT[3]), .SP(clkQ_c_derived_27_enable_9), 
            .CK(clkQ_c__inv), .Q(\sig[44] )) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=63, LSE_RLINE=66 */ ;   // v:/cpu2908/fpga/machxo2/executer.v(267[8] 269[4])
    defparam flagRegister__i4.GSR = "DISABLED";
    FD1P3IX flagRegister__i3 (.D(InternalDataBus[2]), .SP(clkQ_c_derived_27_enable_9), 
            .CD(n1103), .CK(clkQ_c__inv), .Q(\flag[2] )) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=63, LSE_RLINE=66 */ ;   // v:/cpu2908/fpga/machxo2/executer.v(267[8] 269[4])
    defparam flagRegister__i3.GSR = "DISABLED";
    FD1P3IX flagRegister__i5 (.D(InternalDataBus[4]), .SP(clkQ_c_derived_27_enable_9), 
            .CD(n1103), .CK(clkQ_c__inv), .Q(\flag[4] )) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=63, LSE_RLINE=66 */ ;   // v:/cpu2908/fpga/machxo2/executer.v(267[8] 269[4])
    defparam flagRegister__i5.GSR = "DISABLED";
    LUT4 busIn_7__I_0_i1_4_lut (.A(\sig[78] ), .B(InternalDataBus[0]), .C(\sig[88] ), 
         .D(n1098), .Z(flagT[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(265[14:84])
    defparam busIn_7__I_0_i1_4_lut.init = 16'hc5c0;
    LUT4 i4583_2_lut (.A(\sig[89] ), .B(\sig[88] ), .Z(n1103)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i4583_2_lut.init = 16'h1111;
    LUT4 busIn_7__I_0_i4_3_lut (.A(N_31), .B(InternalDataBus[3]), .C(\sig[88] ), 
         .Z(flagT[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(265[14:84])
    defparam busIn_7__I_0_i4_3_lut.init = 16'hcaca;
    LUT4 busIn_7__I_0_i7_4_lut (.A(n13), .B(InternalDataBus[6]), .C(\sig[88] ), 
         .D(n14), .Z(flagT[6])) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(265[14:84])
    defparam busIn_7__I_0_i7_4_lut.init = 16'hc0c5;
    LUT4 busIn_7__I_0_i8_3_lut (.A(\data_ibus[7] ), .B(InternalDataBus[7]), 
         .C(\sig[88] ), .Z(flagT[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(265[14:84])
    defparam busIn_7__I_0_i8_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module decoder4
//

module decoder4 (\sig[93] , \sig[94] , n3155, n5393) /* synthesis syn_module_defined=1 */ ;
    input \sig[93] ;
    input \sig[94] ;
    output n3155;
    output n5393;
    
    
    LUT4 i2706_2_lut (.A(\sig[93] ), .B(\sig[94] ), .Z(n3155)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2706_2_lut.init = 16'heeee;
    LUT4 i2650_2_lut_rep_105 (.A(\sig[93] ), .B(\sig[94] ), .Z(n5393)) /* synthesis lut_function=(!((B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/decoder.v(24[1] 29[8])
    defparam i2650_2_lut_rep_105.init = 16'h2222;
    
endmodule
//
// Verilog Description of module decoder4_U10
//

module decoder4_U10 (\sig[90] , \sig[91] , \out_3__N_226[1] , \out_3__N_226[2] ) /* synthesis syn_module_defined=1 */ ;
    input \sig[90] ;
    input \sig[91] ;
    output \out_3__N_226[1] ;
    output \out_3__N_226[2] ;
    
    
    LUT4 i2655_2_lut (.A(\sig[90] ), .B(\sig[91] ), .Z(\out_3__N_226[1] )) /* synthesis lut_function=(!((B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/decoder.v(24[1] 29[8])
    defparam i2655_2_lut.init = 16'h2222;
    LUT4 i2647_2_lut (.A(\sig[90] ), .B(\sig[91] ), .Z(\out_3__N_226[2] )) /* synthesis lut_function=(!(A+!(B))) */ ;   // v:/cpu2908/fpga/machxo2/decoder.v(24[1] 29[8])
    defparam i2647_2_lut.init = 16'h4444;
    
endmodule
//
// Verilog Description of module addrEx
//

module addrEx (ALU_B, addr_ibus, addrLo, \sig[77] , addrHi, \sig[75] , 
            \sig[74] , ALU_A, \sig[76] , GND_net) /* synthesis syn_module_defined=1 */ ;
    input [7:0]ALU_B;
    output [15:0]addr_ibus;
    input [7:0]addrLo;
    input \sig[77] ;
    input [7:0]addrHi;
    input \sig[75] ;
    input \sig[74] ;
    input [7:0]ALU_A;
    input \sig[76] ;
    input GND_net;
    
    
    wire n4646;
    wire [15:0]baseE;   // v:/cpu2908/fpga/machxo2/executer.v(207[12:17])
    
    wire sign_N_204, offsetE_15__N_201, n4647, n4645, n4644, n4643, 
        n4642, n4641, n4640;
    
    CCU2D add_15_15 (.A0(baseE[13]), .B0(ALU_B[5]), .C0(sign_N_204), .D0(offsetE_15__N_201), 
          .A1(baseE[14]), .B1(ALU_B[6]), .C1(sign_N_204), .D1(offsetE_15__N_201), 
          .CIN(n4646), .COUT(n4647), .S0(addr_ibus[13]), .S1(addr_ibus[14]));   // v:/cpu2908/fpga/machxo2/executer.v(222[22:35])
    defparam add_15_15.INIT0 = 16'h5a66;
    defparam add_15_15.INIT1 = 16'h5a66;
    defparam add_15_15.INJECT1_0 = "NO";
    defparam add_15_15.INJECT1_1 = "NO";
    LUT4 base_15__I_0_i5_2_lut (.A(addrLo[4]), .B(\sig[77] ), .Z(baseE[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(209[14:33])
    defparam base_15__I_0_i5_2_lut.init = 16'h2222;
    LUT4 base_15__I_0_i2_2_lut (.A(addrLo[1]), .B(\sig[77] ), .Z(baseE[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(209[14:33])
    defparam base_15__I_0_i2_2_lut.init = 16'h2222;
    LUT4 base_15__I_0_i3_2_lut (.A(addrLo[2]), .B(\sig[77] ), .Z(baseE[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(209[14:33])
    defparam base_15__I_0_i3_2_lut.init = 16'h2222;
    LUT4 base_15__I_0_i12_2_lut (.A(addrHi[3]), .B(\sig[77] ), .Z(baseE[11])) /* synthesis lut_function=(!((B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(209[14:33])
    defparam base_15__I_0_i12_2_lut.init = 16'h2222;
    LUT4 base_15__I_0_i13_2_lut (.A(addrHi[4]), .B(\sig[77] ), .Z(baseE[12])) /* synthesis lut_function=(!((B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(209[14:33])
    defparam base_15__I_0_i13_2_lut.init = 16'h2222;
    LUT4 base_15__I_0_i10_2_lut (.A(addrHi[1]), .B(\sig[77] ), .Z(baseE[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(209[14:33])
    defparam base_15__I_0_i10_2_lut.init = 16'h2222;
    LUT4 base_15__I_0_i11_2_lut (.A(addrHi[2]), .B(\sig[77] ), .Z(baseE[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(209[14:33])
    defparam base_15__I_0_i11_2_lut.init = 16'h2222;
    LUT4 base_15__I_0_i8_2_lut (.A(addrLo[7]), .B(\sig[77] ), .Z(baseE[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(209[14:33])
    defparam base_15__I_0_i8_2_lut.init = 16'h2222;
    LUT4 base_15__I_0_i14_2_lut (.A(addrHi[5]), .B(\sig[77] ), .Z(baseE[13])) /* synthesis lut_function=(!((B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(209[14:33])
    defparam base_15__I_0_i14_2_lut.init = 16'h2222;
    LUT4 i4580_3_lut (.A(\sig[75] ), .B(\sig[74] ), .C(ALU_A[7]), .Z(sign_N_204)) /* synthesis lut_function=(!(A (B)+!A !((C)+!B))) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(215[15:46])
    defparam i4580_3_lut.init = 16'h7373;
    LUT4 base_15__I_0_i1_2_lut (.A(addrLo[0]), .B(\sig[77] ), .Z(baseE[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(209[14:33])
    defparam base_15__I_0_i1_2_lut.init = 16'h2222;
    LUT4 op_0__I_0_2_lut (.A(\sig[74] ), .B(\sig[75] ), .Z(offsetE_15__N_201)) /* synthesis lut_function=(A+(B)) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(218[36:49])
    defparam op_0__I_0_2_lut.init = 16'heeee;
    LUT4 base_15__I_0_i15_2_lut (.A(addrHi[6]), .B(\sig[77] ), .Z(baseE[14])) /* synthesis lut_function=(!((B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(209[14:33])
    defparam base_15__I_0_i15_2_lut.init = 16'h2222;
    LUT4 base_15__I_0_i9_2_lut (.A(addrHi[0]), .B(\sig[77] ), .Z(baseE[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(209[14:33])
    defparam base_15__I_0_i9_2_lut.init = 16'h2222;
    CCU2D add_15_13 (.A0(baseE[11]), .B0(ALU_B[3]), .C0(sign_N_204), .D0(offsetE_15__N_201), 
          .A1(baseE[12]), .B1(ALU_B[4]), .C1(sign_N_204), .D1(offsetE_15__N_201), 
          .CIN(n4645), .COUT(n4646), .S0(addr_ibus[11]), .S1(addr_ibus[12]));   // v:/cpu2908/fpga/machxo2/executer.v(222[22:35])
    defparam add_15_13.INIT0 = 16'h5a66;
    defparam add_15_13.INIT1 = 16'h5a66;
    defparam add_15_13.INJECT1_0 = "NO";
    defparam add_15_13.INJECT1_1 = "NO";
    CCU2D add_15_11 (.A0(baseE[9]), .B0(ALU_B[1]), .C0(sign_N_204), .D0(offsetE_15__N_201), 
          .A1(baseE[10]), .B1(ALU_B[2]), .C1(sign_N_204), .D1(offsetE_15__N_201), 
          .CIN(n4644), .COUT(n4645), .S0(addr_ibus[9]), .S1(addr_ibus[10]));   // v:/cpu2908/fpga/machxo2/executer.v(222[22:35])
    defparam add_15_11.INIT0 = 16'h5a66;
    defparam add_15_11.INIT1 = 16'h5a66;
    defparam add_15_11.INJECT1_0 = "NO";
    defparam add_15_11.INJECT1_1 = "NO";
    CCU2D add_15_9 (.A0(baseE[7]), .B0(ALU_A[7]), .C0(sign_N_204), .D0(\sig[75] ), 
          .A1(baseE[8]), .B1(ALU_B[0]), .C1(sign_N_204), .D1(offsetE_15__N_201), 
          .CIN(n4643), .COUT(n4644), .S0(addr_ibus[7]), .S1(addr_ibus[8]));   // v:/cpu2908/fpga/machxo2/executer.v(222[22:35])
    defparam add_15_9.INIT0 = 16'h5a66;
    defparam add_15_9.INIT1 = 16'h5a66;
    defparam add_15_9.INJECT1_0 = "NO";
    defparam add_15_9.INJECT1_1 = "NO";
    LUT4 base_15__I_0_i16_2_lut (.A(addrHi[7]), .B(\sig[77] ), .Z(baseE[15])) /* synthesis lut_function=(!((B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(209[14:33])
    defparam base_15__I_0_i16_2_lut.init = 16'h2222;
    LUT4 base_15__I_0_i6_2_lut (.A(addrLo[5]), .B(\sig[77] ), .Z(baseE[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(209[14:33])
    defparam base_15__I_0_i6_2_lut.init = 16'h2222;
    LUT4 base_15__I_0_i7_2_lut (.A(addrLo[6]), .B(\sig[77] ), .Z(baseE[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(209[14:33])
    defparam base_15__I_0_i7_2_lut.init = 16'h2222;
    LUT4 base_15__I_0_i4_2_lut (.A(addrLo[3]), .B(\sig[77] ), .Z(baseE[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // v:/cpu2908/fpga/machxo2/executer.v(209[14:33])
    defparam base_15__I_0_i4_2_lut.init = 16'h2222;
    CCU2D add_15_7 (.A0(baseE[5]), .B0(ALU_A[5]), .C0(sign_N_204), .D0(\sig[75] ), 
          .A1(baseE[6]), .B1(ALU_A[6]), .C1(sign_N_204), .D1(\sig[75] ), 
          .CIN(n4642), .COUT(n4643), .S0(addr_ibus[5]), .S1(addr_ibus[6]));   // v:/cpu2908/fpga/machxo2/executer.v(222[22:35])
    defparam add_15_7.INIT0 = 16'h5a66;
    defparam add_15_7.INIT1 = 16'h5a66;
    defparam add_15_7.INJECT1_0 = "NO";
    defparam add_15_7.INJECT1_1 = "NO";
    CCU2D add_15_5 (.A0(baseE[3]), .B0(ALU_A[3]), .C0(sign_N_204), .D0(\sig[75] ), 
          .A1(baseE[4]), .B1(ALU_A[4]), .C1(sign_N_204), .D1(\sig[75] ), 
          .CIN(n4641), .COUT(n4642), .S0(addr_ibus[3]), .S1(addr_ibus[4]));   // v:/cpu2908/fpga/machxo2/executer.v(222[22:35])
    defparam add_15_5.INIT0 = 16'h5a66;
    defparam add_15_5.INIT1 = 16'h5a66;
    defparam add_15_5.INJECT1_0 = "NO";
    defparam add_15_5.INJECT1_1 = "NO";
    CCU2D add_15_3 (.A0(baseE[1]), .B0(ALU_A[1]), .C0(sign_N_204), .D0(\sig[75] ), 
          .A1(baseE[2]), .B1(ALU_A[2]), .C1(sign_N_204), .D1(\sig[75] ), 
          .CIN(n4640), .COUT(n4641), .S0(addr_ibus[1]), .S1(addr_ibus[2]));   // v:/cpu2908/fpga/machxo2/executer.v(222[22:35])
    defparam add_15_3.INIT0 = 16'h5a66;
    defparam add_15_3.INIT1 = 16'h5a66;
    defparam add_15_3.INJECT1_0 = "NO";
    defparam add_15_3.INJECT1_1 = "NO";
    CCU2D add_15_1 (.A0(\sig[76] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(baseE[0]), .B1(ALU_A[0]), .C1(sign_N_204), .D1(\sig[75] ), 
          .COUT(n4640), .S1(addr_ibus[0]));   // v:/cpu2908/fpga/machxo2/executer.v(222[22:35])
    defparam add_15_1.INIT0 = 16'h5000;
    defparam add_15_1.INIT1 = 16'h5a66;
    defparam add_15_1.INJECT1_0 = "NO";
    defparam add_15_1.INJECT1_1 = "NO";
    CCU2D add_15_17 (.A0(baseE[15]), .B0(ALU_B[7]), .C0(sign_N_204), .D0(offsetE_15__N_201), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4647), 
          .S0(addr_ibus[15]));   // v:/cpu2908/fpga/machxo2/executer.v(222[22:35])
    defparam add_15_17.INIT0 = 16'h5a66;
    defparam add_15_17.INIT1 = 16'h0000;
    defparam add_15_17.INJECT1_0 = "NO";
    defparam add_15_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module register8_U11
//

module register8_U11 (ALU_B, clkQ_c, \out_3__N_226[2] , InternalDataBus) /* synthesis syn_module_defined=1 */ ;
    output [7:0]ALU_B;
    input clkQ_c;
    input \out_3__N_226[2] ;
    input [7:0]InternalDataBus;
    
    wire clkQ_c /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    
    FD1P3AX R_i0_i7 (.D(InternalDataBus[7]), .SP(\out_3__N_226[2] ), .CK(clkQ_c), 
            .Q(ALU_B[7])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=11, LSE_RCOL=39, LSE_LLINE=94, LSE_RLINE=95 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i7.GSR = "DISABLED";
    FD1P3AX R_i0_i6 (.D(InternalDataBus[6]), .SP(\out_3__N_226[2] ), .CK(clkQ_c), 
            .Q(ALU_B[6])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=11, LSE_RCOL=39, LSE_LLINE=94, LSE_RLINE=95 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i6.GSR = "DISABLED";
    FD1P3AX R_i0_i5 (.D(InternalDataBus[5]), .SP(\out_3__N_226[2] ), .CK(clkQ_c), 
            .Q(ALU_B[5])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=11, LSE_RCOL=39, LSE_LLINE=94, LSE_RLINE=95 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i5.GSR = "DISABLED";
    FD1P3AX R_i0_i4 (.D(InternalDataBus[4]), .SP(\out_3__N_226[2] ), .CK(clkQ_c), 
            .Q(ALU_B[4])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=11, LSE_RCOL=39, LSE_LLINE=94, LSE_RLINE=95 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i4.GSR = "DISABLED";
    FD1P3AX R_i0_i3 (.D(InternalDataBus[3]), .SP(\out_3__N_226[2] ), .CK(clkQ_c), 
            .Q(ALU_B[3])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=11, LSE_RCOL=39, LSE_LLINE=94, LSE_RLINE=95 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i3.GSR = "DISABLED";
    FD1P3AX R_i0_i2 (.D(InternalDataBus[2]), .SP(\out_3__N_226[2] ), .CK(clkQ_c), 
            .Q(ALU_B[2])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=11, LSE_RCOL=39, LSE_LLINE=94, LSE_RLINE=95 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i2.GSR = "DISABLED";
    FD1P3AX R_i0_i1 (.D(InternalDataBus[1]), .SP(\out_3__N_226[2] ), .CK(clkQ_c), 
            .Q(ALU_B[1])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=11, LSE_RCOL=39, LSE_LLINE=94, LSE_RLINE=95 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i1.GSR = "DISABLED";
    FD1P3AX R_i0_i0 (.D(InternalDataBus[0]), .SP(\out_3__N_226[2] ), .CK(clkQ_c), 
            .Q(ALU_B[0])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=11, LSE_RCOL=39, LSE_LLINE=94, LSE_RLINE=95 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i0.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module register8_U12
//

module register8_U12 (ALU_A, clkQ_c, \out_3__N_226[1] , InternalDataBus) /* synthesis syn_module_defined=1 */ ;
    output [7:0]ALU_A;
    input clkQ_c;
    input \out_3__N_226[1] ;
    input [7:0]InternalDataBus;
    
    wire clkQ_c /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    
    FD1P3AX R_i0_i0 (.D(InternalDataBus[0]), .SP(\out_3__N_226[1] ), .CK(clkQ_c), 
            .Q(ALU_A[0])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=11, LSE_RCOL=39, LSE_LLINE=92, LSE_RLINE=93 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i0.GSR = "DISABLED";
    FD1P3AX R_i0_i7 (.D(InternalDataBus[7]), .SP(\out_3__N_226[1] ), .CK(clkQ_c), 
            .Q(ALU_A[7])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=11, LSE_RCOL=39, LSE_LLINE=92, LSE_RLINE=93 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i7.GSR = "DISABLED";
    FD1P3AX R_i0_i6 (.D(InternalDataBus[6]), .SP(\out_3__N_226[1] ), .CK(clkQ_c), 
            .Q(ALU_A[6])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=11, LSE_RCOL=39, LSE_LLINE=92, LSE_RLINE=93 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i6.GSR = "DISABLED";
    FD1P3AX R_i0_i5 (.D(InternalDataBus[5]), .SP(\out_3__N_226[1] ), .CK(clkQ_c), 
            .Q(ALU_A[5])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=11, LSE_RCOL=39, LSE_LLINE=92, LSE_RLINE=93 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i5.GSR = "DISABLED";
    FD1P3AX R_i0_i4 (.D(InternalDataBus[4]), .SP(\out_3__N_226[1] ), .CK(clkQ_c), 
            .Q(ALU_A[4])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=11, LSE_RCOL=39, LSE_LLINE=92, LSE_RLINE=93 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i4.GSR = "DISABLED";
    FD1P3AX R_i0_i3 (.D(InternalDataBus[3]), .SP(\out_3__N_226[1] ), .CK(clkQ_c), 
            .Q(ALU_A[3])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=11, LSE_RCOL=39, LSE_LLINE=92, LSE_RLINE=93 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i3.GSR = "DISABLED";
    FD1P3AX R_i0_i2 (.D(InternalDataBus[2]), .SP(\out_3__N_226[1] ), .CK(clkQ_c), 
            .Q(ALU_A[2])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=11, LSE_RCOL=39, LSE_LLINE=92, LSE_RLINE=93 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i2.GSR = "DISABLED";
    FD1P3AX R_i0_i1 (.D(InternalDataBus[1]), .SP(\out_3__N_226[1] ), .CK(clkQ_c), 
            .Q(ALU_A[1])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=11, LSE_RCOL=39, LSE_LLINE=92, LSE_RLINE=93 */ ;   // v:/cpu2908/fpga/machxo2/register.v(57[8] 59[4])
    defparam R_i0_i1.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module serialRxD
//

module serialRxD (SerialClock2, \sig[40] , GND_net, VCC_net, RxBusy, 
            n5742, RxD_c, subPort, RxDclr) /* synthesis syn_module_defined=1 */ ;
    input SerialClock2;
    output \sig[40] ;
    input GND_net;
    input VCC_net;
    output RxBusy;
    input n5742;
    input RxD_c;
    output [7:0]subPort;
    input RxDclr;
    
    wire SerialClock2 /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(59[6:18])
    wire N_43 /* synthesis is_inv_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialrxd.v(13[6:10])
    wire N_41 /* synthesis is_clock=1, SET_AS_NETWORK=\rxd01/N_41 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialrxd.v(16[6:10])
    wire N_38 /* synthesis is_inv_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialrxd.v(19[6:10])
    wire N_2 /* synthesis is_clock=1, SET_AS_NETWORK=\rxd01/N_2 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialrxd.v(30[6:9])
    wire N_6 /* synthesis is_clock=1, SET_AS_NETWORK=\rxd01/N_6 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialrxd.v(34[6:9])
    wire N_19 /* synthesis is_clock=1, SET_AS_NETWORK=\rxd01/N_19 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialrxd.v(22[6:10])
    wire RxD_c /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(31[13:16])
    
    wire N_4, N_32, N_3, N_18, N_22, N_23, N_21, N_20, N_24, 
        N_25, N_26;
    wire [7:0]D;   // v:/cpu2908/fpga/machxo2/impl1/serialrxd.v(12[14:15])
    
    wire N_7;
    
    INV I40 (.A(SerialClock2), .Z(N_43)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/top.v(156[11] 159[66])
    FD1P3DX I25 (.D(N_41), .SP(VCC_net), .CK(N_43), .CD(GND_net), .Q(\sig[40] )) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialrxd.v(68[9:71])
    defparam I25.GSR = "DISABLED";
    FD1P3DX I15 (.D(n5742), .SP(VCC_net), .CK(N_38), .CD(\sig[40] ), 
            .Q(RxBusy)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialrxd.v(69[9:73])
    defparam I15.GSR = "DISABLED";
    FD1P3DX I16 (.D(N_4), .SP(VCC_net), .CK(N_2), .CD(\sig[40] ), .Q(N_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialrxd.v(70[9:67])
    defparam I16.GSR = "DISABLED";
    FD1P3DX I17 (.D(N_32), .SP(VCC_net), .CK(N_6), .CD(\sig[40] ), .Q(N_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialrxd.v(71[9:68])
    defparam I17.GSR = "DISABLED";
    FD1P3DX I9 (.D(N_18), .SP(VCC_net), .CK(N_19), .CD(\sig[40] ), .Q(N_41)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialrxd.v(72[9:70])
    defparam I9.GSR = "DISABLED";
    FD1P3DX I1 (.D(N_23), .SP(VCC_net), .CK(N_19), .CD(\sig[40] ), .Q(N_22)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialrxd.v(73[9:70])
    defparam I1.GSR = "DISABLED";
    FD1P3DX I2 (.D(N_22), .SP(VCC_net), .CK(N_19), .CD(\sig[40] ), .Q(N_21)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialrxd.v(74[9:70])
    defparam I2.GSR = "DISABLED";
    FD1P3DX I3 (.D(N_20), .SP(VCC_net), .CK(N_19), .CD(\sig[40] ), .Q(N_18)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialrxd.v(75[9:70])
    defparam I3.GSR = "DISABLED";
    FD1P3DX I4 (.D(N_21), .SP(VCC_net), .CK(N_19), .CD(\sig[40] ), .Q(N_20)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialrxd.v(76[9:70])
    defparam I4.GSR = "DISABLED";
    FD1P3DX I5 (.D(N_25), .SP(VCC_net), .CK(N_19), .CD(\sig[40] ), .Q(N_24)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialrxd.v(77[9:70])
    defparam I5.GSR = "DISABLED";
    FD1P3DX I6 (.D(N_24), .SP(VCC_net), .CK(N_19), .CD(\sig[40] ), .Q(N_23)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialrxd.v(78[9:70])
    defparam I6.GSR = "DISABLED";
    FD1P3DX I7 (.D(N_26), .SP(VCC_net), .CK(N_19), .CD(\sig[40] ), .Q(N_25)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialrxd.v(79[9:70])
    defparam I7.GSR = "DISABLED";
    FD1P3DX I8 (.D(N_38), .SP(VCC_net), .CK(N_19), .CD(\sig[40] ), .Q(N_26)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialrxd.v(80[9:70])
    defparam I8.GSR = "DISABLED";
    INV I26 (.A(N_18), .Z(D[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/top.v(156[11] 159[66])
    INV I27 (.A(N_20), .Z(D[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/top.v(156[11] 159[66])
    INV I28 (.A(N_21), .Z(D[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/top.v(156[11] 159[66])
    INV I29 (.A(N_22), .Z(D[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/top.v(156[11] 159[66])
    INV I30 (.A(N_23), .Z(D[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/top.v(156[11] 159[66])
    INV I31 (.A(N_24), .Z(D[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/top.v(156[11] 159[66])
    INV I32 (.A(N_25), .Z(D[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/top.v(156[11] 159[66])
    INV I33 (.A(N_26), .Z(D[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/top.v(156[11] 159[66])
    INV I10 (.A(RxBusy), .Z(N_7)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/top.v(156[11] 159[66])
    INV I22 (.A(RxD_c), .Z(N_38)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/top.v(156[11] 159[66])
    INV I19 (.A(N_6), .Z(N_4)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/top.v(156[11] 159[66])
    INV I20 (.A(N_3), .Z(N_32)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/top.v(156[11] 159[66])
    OR2 I13 (.A(N_7), .B(SerialClock2), .Z(N_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialrxd.v(66[5:38])
    NR2 I14 (.A(N_6), .B(N_32), .Z(N_19)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=66, LSE_LLINE=156, LSE_RLINE=159 */ ;   // v:/cpu2908/fpga/machxo2/top.v(156[11] 159[66])
    register8AC I35 (.subPort({subPort}), .N_41(N_41), .RxDclr(RxDclr), 
            .D({D})) /* synthesis syn_module_defined=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialrxd.v(45[13] 46[145])
    
endmodule
//
// Verilog Description of module register8AC
//

module register8AC (subPort, N_41, RxDclr, D) /* synthesis syn_module_defined=1 */ ;
    output [7:0]subPort;
    input N_41;
    input RxDclr;
    input [7:0]D;
    
    wire N_41 /* synthesis is_clock=1, SET_AS_NETWORK=\rxd01/N_41 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialrxd.v(16[6:10])
    
    FD1S3DX R_i0 (.D(D[0]), .CK(N_41), .CD(RxDclr), .Q(subPort[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=145, LSE_LLINE=45, LSE_RLINE=46 */ ;   // v:/cpu2908/fpga/machxo2/register.v(86[3:22])
    defparam R_i0.GSR = "DISABLED";
    FD1S3DX R_i7 (.D(D[7]), .CK(N_41), .CD(RxDclr), .Q(subPort[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=145, LSE_LLINE=45, LSE_RLINE=46 */ ;   // v:/cpu2908/fpga/machxo2/register.v(86[3:22])
    defparam R_i7.GSR = "DISABLED";
    FD1S3DX R_i6 (.D(D[6]), .CK(N_41), .CD(RxDclr), .Q(subPort[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=145, LSE_LLINE=45, LSE_RLINE=46 */ ;   // v:/cpu2908/fpga/machxo2/register.v(86[3:22])
    defparam R_i6.GSR = "DISABLED";
    FD1S3DX R_i5 (.D(D[5]), .CK(N_41), .CD(RxDclr), .Q(subPort[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=145, LSE_LLINE=45, LSE_RLINE=46 */ ;   // v:/cpu2908/fpga/machxo2/register.v(86[3:22])
    defparam R_i5.GSR = "DISABLED";
    FD1S3DX R_i4 (.D(D[4]), .CK(N_41), .CD(RxDclr), .Q(subPort[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=145, LSE_LLINE=45, LSE_RLINE=46 */ ;   // v:/cpu2908/fpga/machxo2/register.v(86[3:22])
    defparam R_i4.GSR = "DISABLED";
    FD1S3DX R_i3 (.D(D[3]), .CK(N_41), .CD(RxDclr), .Q(subPort[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=145, LSE_LLINE=45, LSE_RLINE=46 */ ;   // v:/cpu2908/fpga/machxo2/register.v(86[3:22])
    defparam R_i3.GSR = "DISABLED";
    FD1S3DX R_i2 (.D(D[2]), .CK(N_41), .CD(RxDclr), .Q(subPort[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=145, LSE_LLINE=45, LSE_RLINE=46 */ ;   // v:/cpu2908/fpga/machxo2/register.v(86[3:22])
    defparam R_i2.GSR = "DISABLED";
    FD1S3DX R_i1 (.D(D[1]), .CK(N_41), .CD(RxDclr), .Q(subPort[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=13, LSE_RCOL=145, LSE_LLINE=45, LSE_RLINE=46 */ ;   // v:/cpu2908/fpga/machxo2/register.v(86[3:22])
    defparam R_i1.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module serialTxD
//

module serialTxD (TxRdy, TxD_c, VCC_net, SerialClock2, n5742, TxBuff, 
            nWRTxD) /* synthesis syn_module_defined=1 */ ;
    output TxRdy;
    output TxD_c;
    input VCC_net;
    input SerialClock2;
    input n5742;
    input [7:0]TxBuff;
    input nWRTxD;
    
    wire N_48 /* synthesis is_clock=1, SET_AS_NETWORK=\txd01/N_48 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(10[6:10])
    wire N_44 /* synthesis is_clock=1, SET_AS_NETWORK=\txd01/N_44 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(16[6:10])
    wire SerialClock2 /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(59[6:18])
    wire N_43 /* synthesis is_inv_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(17[6:10])
    wire N_38 /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(27[6:10])
    wire N_47 /* synthesis is_inv_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(14[6:10])
    wire N_36 /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(26[6:10])
    wire N_34 /* synthesis is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(25[6:10])
    wire N_1 /* synthesis is_inv_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(28[6:9])
    wire N_52 /* synthesis is_inv_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(9[6:10])
    wire nWRTxD /* synthesis is_clock=1, SET_AS_NETWORK=nWRTxD */ ;   // v:/cpu2908/fpga/machxo2/top.v(124[6:12])
    
    wire N_45, N_50, N_51, N_26, N_29, N_24, N_33, N_14, N_3, 
        N_17, N_13, N_15, N_12, N_21, N_11, N_22, N_5, N_7, 
        N_6, N_8, N_9, N_10, N_4;
    
    OR2 I36 (.A(N_45), .B(TxRdy), .Z(N_48)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(57[5:42])
    FD1P3BX I19 (.D(N_50), .SP(VCC_net), .CK(N_48), .PD(N_51), .Q(TxD_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(62[9:73])
    defparam I19.GSR = "DISABLED";
    FD1P3BX I49 (.D(N_45), .SP(VCC_net), .CK(N_44), .PD(N_51), .Q(N_26)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(63[9:68])
    defparam I49.GSR = "DISABLED";
    FD1P3BX I50 (.D(N_29), .SP(VCC_net), .CK(SerialClock2), .PD(N_51), 
            .Q(N_44)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(64[9:67])
    defparam I50.GSR = "DISABLED";
    FD1P3DX I39 (.D(N_43), .SP(VCC_net), .CK(N_48), .CD(N_51), .Q(N_38)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(65[9:68])
    defparam I39.GSR = "DISABLED";
    FD1P3DX I40 (.D(N_47), .SP(VCC_net), .CK(N_43), .CD(N_51), .Q(N_36)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(66[9:68])
    defparam I40.GSR = "DISABLED";
    FD1P3DX I41 (.D(N_1), .SP(VCC_net), .CK(N_47), .CD(N_51), .Q(N_34)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(67[9:67])
    defparam I41.GSR = "DISABLED";
    FD1P3DX I42 (.D(N_33), .SP(VCC_net), .CK(N_1), .CD(N_51), .Q(N_24)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(68[9:67])
    defparam I42.GSR = "DISABLED";
    FD1P3DX I44 (.D(n5742), .SP(VCC_net), .CK(N_52), .CD(N_51), .Q(N_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(69[9:68])
    defparam I44.GSR = "DISABLED";
    FD1P3DX I15 (.D(N_17), .SP(VCC_net), .CK(N_48), .CD(N_51), .Q(N_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(70[9:67])
    defparam I15.GSR = "DISABLED";
    FD1P3DX I16 (.D(N_15), .SP(VCC_net), .CK(N_48), .CD(N_51), .Q(N_13)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(71[9:68])
    defparam I16.GSR = "DISABLED";
    FD1P3DX I17 (.D(N_21), .SP(VCC_net), .CK(N_48), .CD(N_51), .Q(N_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(72[9:68])
    defparam I17.GSR = "DISABLED";
    FD1P3DX I14 (.D(N_11), .SP(VCC_net), .CK(N_48), .CD(N_51), .Q(N_22)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(73[9:68])
    defparam I14.GSR = "DISABLED";
    FD1P3DX I13 (.D(N_7), .SP(VCC_net), .CK(N_48), .CD(N_51), .Q(N_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(74[9:66])
    defparam I13.GSR = "DISABLED";
    FD1P3DX I12 (.D(N_8), .SP(VCC_net), .CK(N_48), .CD(N_51), .Q(N_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(75[9:66])
    defparam I12.GSR = "DISABLED";
    FD1P3DX I11 (.D(N_10), .SP(VCC_net), .CK(N_48), .CD(N_51), .Q(N_9)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(76[9:67])
    defparam I11.GSR = "DISABLED";
    FD1P3DX I10 (.D(N_4), .SP(VCC_net), .CK(N_48), .CD(N_51), .Q(N_50)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/impl1/serialtxd.v(77[9:67])
    defparam I10.GSR = "DISABLED";
    MUX21 I4 (.D0(TxBuff[0]), .D1(VCC_net), .SD(N_14), .Z(N_17)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/top.v(163[11:97])
    INV I33 (.A(N_26), .Z(N_45)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/top.v(163[11:97])
    INV I51 (.A(N_48), .Z(N_52)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/top.v(163[11:97])
    INV I32 (.A(N_44), .Z(N_29)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/top.v(163[11:97])
    INV I31 (.A(N_38), .Z(N_43)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/top.v(163[11:97])
    INV I30 (.A(N_36), .Z(N_47)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/top.v(163[11:97])
    INV I29 (.A(N_34), .Z(N_1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/top.v(163[11:97])
    INV I28 (.A(N_24), .Z(N_33)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/top.v(163[11:97])
    INV I46 (.A(nWRTxD), .Z(N_51)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/top.v(163[11:97])
    AND4 I34 (.A(N_24), .B(N_1), .C(N_36), .D(N_38), .Z(TxRdy)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/top.v(163[11:97])
    MUX21 I8 (.D0(TxBuff[1]), .D1(N_3), .SD(N_14), .Z(N_15)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/top.v(163[11:97])
    MUX21 I22 (.D0(TxBuff[2]), .D1(N_13), .SD(N_14), .Z(N_21)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/top.v(163[11:97])
    MUX21 I23 (.D0(TxBuff[3]), .D1(N_12), .SD(N_14), .Z(N_11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/top.v(163[11:97])
    MUX21 I24 (.D0(TxBuff[7]), .D1(N_5), .SD(N_14), .Z(N_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/top.v(163[11:97])
    MUX21 I25 (.D0(TxBuff[6]), .D1(N_6), .SD(N_14), .Z(N_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/top.v(163[11:97])
    MUX21 I26 (.D0(TxBuff[4]), .D1(N_22), .SD(N_14), .Z(N_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/top.v(163[11:97])
    MUX21 I27 (.D0(TxBuff[5]), .D1(N_9), .SD(N_14), .Z(N_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=97, LSE_LLINE=163, LSE_RLINE=163 */ ;   // v:/cpu2908/fpga/machxo2/top.v(163[11:97])
    
endmodule
//
// Verilog Description of module bootROM
//

module bootROM (n577, n581, n585, n589, n593, bootROM_data) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input n577;
    input n581;
    input n585;
    input n589;
    input n593;
    output [7:0]bootROM_data;
    
    
    ROM32X1A mem_0_6 (.AD0(n593), .AD1(n589), .AD2(n585), .AD3(n581), 
            .AD4(n577), .DO0(bootROM_data[6])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=52, LSE_LLINE=175, LSE_RLINE=175 */ ;   // v:/cpu2908/fpga/machxo2/top.v(175[9:52])
    defparam mem_0_6.initval = 32'b00000000000000110111000111010001;
    ROM32X1A mem_0_7 (.AD0(n593), .AD1(n589), .AD2(n585), .AD3(n581), 
            .AD4(n577), .DO0(bootROM_data[7])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=52, LSE_LLINE=175, LSE_RLINE=175 */ ;   // v:/cpu2908/fpga/machxo2/top.v(175[9:52])
    defparam mem_0_7.initval = 32'b00000000000000110111010111100000;
    ROM32X1A mem_0_5 (.AD0(n593), .AD1(n589), .AD2(n585), .AD3(n581), 
            .AD4(n577), .DO0(bootROM_data[5])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=52, LSE_LLINE=175, LSE_RLINE=175 */ ;   // v:/cpu2908/fpga/machxo2/top.v(175[9:52])
    defparam mem_0_5.initval = 32'b00000000000000110011010011100001;
    ROM32X1A mem_0_4 (.AD0(n593), .AD1(n589), .AD2(n585), .AD3(n581), 
            .AD4(n577), .DO0(bootROM_data[4])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=52, LSE_LLINE=175, LSE_RLINE=175 */ ;   // v:/cpu2908/fpga/machxo2/top.v(175[9:52])
    defparam mem_0_4.initval = 32'b00000000000000100110000110100001;
    ROM32X1A mem_0_3 (.AD0(n593), .AD1(n589), .AD2(n585), .AD3(n581), 
            .AD4(n577), .DO0(bootROM_data[3])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=52, LSE_LLINE=175, LSE_RLINE=175 */ ;   // v:/cpu2908/fpga/machxo2/top.v(175[9:52])
    defparam mem_0_3.initval = 32'b00000000000000011010100110110101;
    ROM32X1A mem_0_2 (.AD0(n593), .AD1(n589), .AD2(n585), .AD3(n581), 
            .AD4(n577), .DO0(bootROM_data[2])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=52, LSE_LLINE=175, LSE_RLINE=175 */ ;   // v:/cpu2908/fpga/machxo2/top.v(175[9:52])
    defparam mem_0_2.initval = 32'b00000000000000010101010101000101;
    ROM32X1A mem_0_1 (.AD0(n593), .AD1(n589), .AD2(n585), .AD3(n581), 
            .AD4(n577), .DO0(bootROM_data[1])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=52, LSE_LLINE=175, LSE_RLINE=175 */ ;   // v:/cpu2908/fpga/machxo2/top.v(175[9:52])
    defparam mem_0_1.initval = 32'b00000000000000010110000110000100;
    ROM32X1A mem_0_0 (.AD0(n593), .AD1(n589), .AD2(n585), .AD3(n581), 
            .AD4(n577), .DO0(bootROM_data[0])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=52, LSE_LLINE=175, LSE_RLINE=175 */ ;   // v:/cpu2908/fpga/machxo2/top.v(175[9:52])
    defparam mem_0_0.initval = 32'b00000000000000101011010011010110;
    
endmodule
//
// Verilog Description of module register16_U18
//

module register16_U18 (subPort, clkQ_c__inv, n593, n534, n537, n541, 
            n545, n549, n553, n557, n561, n565, n569, n573, 
            n577, n581, n585, n589) /* synthesis syn_module_defined=1 */ ;
    output [15:0]subPort;
    input clkQ_c__inv;
    input n593;
    input n534;
    input n537;
    input n541;
    input n545;
    input n549;
    input n553;
    input n557;
    input n561;
    input n565;
    input n569;
    input n573;
    input n577;
    input n581;
    input n585;
    input n589;
    
    wire clkQ_c__inv /* synthesis is_inv_clock=1, is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(14[14:18])
    
    FD1S3AX R_i0 (.D(n593), .CK(clkQ_c__inv), .Q(subPort[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=82, LSE_LLINE=146, LSE_RLINE=146 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i0.GSR = "DISABLED";
    FD1S3AX R_i15 (.D(n534), .CK(clkQ_c__inv), .Q(subPort[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=82, LSE_LLINE=146, LSE_RLINE=146 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i15.GSR = "DISABLED";
    FD1S3AX R_i14 (.D(n537), .CK(clkQ_c__inv), .Q(subPort[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=82, LSE_LLINE=146, LSE_RLINE=146 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i14.GSR = "DISABLED";
    FD1S3AX R_i13 (.D(n541), .CK(clkQ_c__inv), .Q(subPort[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=82, LSE_LLINE=146, LSE_RLINE=146 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i13.GSR = "DISABLED";
    FD1S3AX R_i12 (.D(n545), .CK(clkQ_c__inv), .Q(subPort[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=82, LSE_LLINE=146, LSE_RLINE=146 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i12.GSR = "DISABLED";
    FD1S3AX R_i11 (.D(n549), .CK(clkQ_c__inv), .Q(subPort[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=82, LSE_LLINE=146, LSE_RLINE=146 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i11.GSR = "DISABLED";
    FD1S3AX R_i10 (.D(n553), .CK(clkQ_c__inv), .Q(subPort[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=82, LSE_LLINE=146, LSE_RLINE=146 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i10.GSR = "DISABLED";
    FD1S3AX R_i9 (.D(n557), .CK(clkQ_c__inv), .Q(subPort[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=82, LSE_LLINE=146, LSE_RLINE=146 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i9.GSR = "DISABLED";
    FD1S3AX R_i8 (.D(n561), .CK(clkQ_c__inv), .Q(subPort[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=82, LSE_LLINE=146, LSE_RLINE=146 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i8.GSR = "DISABLED";
    FD1S3AX R_i7 (.D(n565), .CK(clkQ_c__inv), .Q(subPort[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=82, LSE_LLINE=146, LSE_RLINE=146 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i7.GSR = "DISABLED";
    FD1S3AX R_i6 (.D(n569), .CK(clkQ_c__inv), .Q(subPort[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=82, LSE_LLINE=146, LSE_RLINE=146 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i6.GSR = "DISABLED";
    FD1S3AX R_i5 (.D(n573), .CK(clkQ_c__inv), .Q(subPort[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=82, LSE_LLINE=146, LSE_RLINE=146 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i5.GSR = "DISABLED";
    FD1S3AX R_i4 (.D(n577), .CK(clkQ_c__inv), .Q(subPort[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=82, LSE_LLINE=146, LSE_RLINE=146 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i4.GSR = "DISABLED";
    FD1S3AX R_i3 (.D(n581), .CK(clkQ_c__inv), .Q(subPort[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=82, LSE_LLINE=146, LSE_RLINE=146 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i3.GSR = "DISABLED";
    FD1S3AX R_i2 (.D(n585), .CK(clkQ_c__inv), .Q(subPort[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=82, LSE_LLINE=146, LSE_RLINE=146 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i2.GSR = "DISABLED";
    FD1S3AX R_i1 (.D(n589), .CK(clkQ_c__inv), .Q(subPort[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=82, LSE_LLINE=146, LSE_RLINE=146 */ ;   // v:/cpu2908/fpga/machxo2/register.v(108[8] 110[4])
    defparam R_i1.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module divider
//

module divider (clk_c, nReset2_N_20, SerialClock_c_7, GND_net) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    input nReset2_N_20;
    output SerialClock_c_7;
    input GND_net;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(4[13:16])
    wire [7:0]n65;
    wire [7:0]n37;
    
    wire n4651, n4650, n4649, n4648;
    
    FD1S3DX counter_200__i0 (.D(n37[0]), .CK(clk_c), .CD(nReset2_N_20), 
            .Q(n65[0])) /* synthesis syn_use_carry_chain=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(271[14:28])
    defparam counter_200__i0.GSR = "DISABLED";
    FD1S3DX counter_200__i1 (.D(n37[1]), .CK(clk_c), .CD(nReset2_N_20), 
            .Q(n65[1])) /* synthesis syn_use_carry_chain=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(271[14:28])
    defparam counter_200__i1.GSR = "DISABLED";
    FD1S3DX counter_200__i2 (.D(n37[2]), .CK(clk_c), .CD(nReset2_N_20), 
            .Q(n65[2])) /* synthesis syn_use_carry_chain=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(271[14:28])
    defparam counter_200__i2.GSR = "DISABLED";
    FD1S3DX counter_200__i3 (.D(n37[3]), .CK(clk_c), .CD(nReset2_N_20), 
            .Q(n65[3])) /* synthesis syn_use_carry_chain=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(271[14:28])
    defparam counter_200__i3.GSR = "DISABLED";
    FD1S3DX counter_200__i4 (.D(n37[4]), .CK(clk_c), .CD(nReset2_N_20), 
            .Q(n65[4])) /* synthesis syn_use_carry_chain=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(271[14:28])
    defparam counter_200__i4.GSR = "DISABLED";
    FD1S3DX counter_200__i5 (.D(n37[5]), .CK(clk_c), .CD(nReset2_N_20), 
            .Q(n65[5])) /* synthesis syn_use_carry_chain=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(271[14:28])
    defparam counter_200__i5.GSR = "DISABLED";
    FD1S3DX counter_200__i6 (.D(n37[6]), .CK(clk_c), .CD(nReset2_N_20), 
            .Q(n65[6])) /* synthesis syn_use_carry_chain=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(271[14:28])
    defparam counter_200__i6.GSR = "DISABLED";
    FD1S3DX counter_200__i7 (.D(n37[7]), .CK(clk_c), .CD(nReset2_N_20), 
            .Q(SerialClock_c_7)) /* synthesis syn_use_carry_chain=1 */ ;   // v:/cpu2908/fpga/machxo2/top.v(271[14:28])
    defparam counter_200__i7.GSR = "DISABLED";
    CCU2D counter_200_add_4_9 (.A0(SerialClock_c_7), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4651), .S0(n37[7]));   // v:/cpu2908/fpga/machxo2/top.v(271[14:28])
    defparam counter_200_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_200_add_4_9.INIT1 = 16'h0000;
    defparam counter_200_add_4_9.INJECT1_0 = "NO";
    defparam counter_200_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_200_add_4_7 (.A0(n65[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n65[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4650), .COUT(n4651), .S0(n37[5]), .S1(n37[6]));   // v:/cpu2908/fpga/machxo2/top.v(271[14:28])
    defparam counter_200_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_200_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_200_add_4_7.INJECT1_0 = "NO";
    defparam counter_200_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_200_add_4_5 (.A0(n65[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n65[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4649), .COUT(n4650), .S0(n37[3]), .S1(n37[4]));   // v:/cpu2908/fpga/machxo2/top.v(271[14:28])
    defparam counter_200_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_200_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_200_add_4_5.INJECT1_0 = "NO";
    defparam counter_200_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_200_add_4_3 (.A0(n65[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n65[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4648), .COUT(n4649), .S0(n37[1]), .S1(n37[2]));   // v:/cpu2908/fpga/machxo2/top.v(271[14:28])
    defparam counter_200_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_200_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_200_add_4_3.INJECT1_0 = "NO";
    defparam counter_200_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_200_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n65[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n4648), .S1(n37[0]));   // v:/cpu2908/fpga/machxo2/top.v(271[14:28])
    defparam counter_200_add_4_1.INIT0 = 16'hF000;
    defparam counter_200_add_4_1.INIT1 = 16'h0555;
    defparam counter_200_add_4_1.INJECT1_0 = "NO";
    defparam counter_200_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

