/* Generated by Yosys 0.9+2406 (git sha1 9ac3484, x86_64-conda_cos6-linux-gnu-gcc 1.24.0.133_b0863d8_dirty -fvisibility-inlines-hidden -fmessage-length=0 -march=nocona -mtune=haswell -ftree-vectorize -fPIC -fstack-protector-strong -fno-plt -O2 -ffunction-sections -fdebug-prefix-map=/root/anaconda3/conda-bld/yosys_1607410735049/work=/usr/local/src/conda/yosys-0.8.0_0003_e80fb742f_20201208_122808 -fdebug-prefix-map=/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/conda=/usr/local/src/conda-prefix -fPIC -Os) */

(* top =  1  *)
(* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:8.1-53.10" *)
module helloworldfpga(redled, greenled, blueled, a, b, c, d, e, f, g);
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:23.25-25.6|/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:979.17-979.32" *)
  (* unused_bits = "0" *)
  wire _00_;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:23.25-25.6|/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:962.17-962.25" *)
  (* unused_bits = "0" *)
  wire _01_;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:23.25-25.6|/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:959.17-959.28" *)
  (* unused_bits = "0 1 2 3" *)
  wire [3:0] _02_;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:23.25-25.6|/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:958.17-958.26" *)
  (* unused_bits = "0 1 2 3" *)
  wire [3:0] _03_;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:23.25-25.6|/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:986.17-986.28" *)
  (* unused_bits = "0" *)
  wire _04_;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:23.25-25.6|/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:987.17-987.29" *)
  (* unused_bits = "0" *)
  wire _05_;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:23.25-25.6|/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:988.17-988.28" *)
  (* unused_bits = "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31" *)
  wire [31:0] _06_;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:23.25-25.6|/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:978.17-978.27" *)
  (* unused_bits = "0 1 2 3 4 5 6 7" *)
  wire [7:0] _07_;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:23.25-25.6|/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:967.17-967.29" *)
  (* unused_bits = "0" *)
  wire _08_;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:23.25-25.6|/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:968.17-968.25" *)
  (* unused_bits = "0" *)
  wire _09_;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:23.25-25.6|/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:969.17-969.29" *)
  (* unused_bits = "0" *)
  wire _10_;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:23.25-25.6|/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:965.17-965.29" *)
  (* unused_bits = "0" *)
  wire _11_;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:23.25-25.6|/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:970.17-970.25" *)
  (* unused_bits = "0" *)
  wire _12_;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:23.25-25.6|/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:971.17-971.29" *)
  (* unused_bits = "0" *)
  wire _13_;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:23.25-25.6|/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:980.17-980.26" *)
  (* unused_bits = "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23" *)
  wire [23:0] _14_;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:23.25-25.6|/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:964.17-964.23" *)
  (* unused_bits = "0" *)
  wire _15_;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:23.25-25.6|/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:955.17-955.24" *)
  (* unused_bits = "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16" *)
  wire [16:0] _16_;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:23.25-25.6|/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:950.17-950.29" *)
  (* unused_bits = "0 1 2 3" *)
  wire [3:0] _17_;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:23.25-25.6|/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:951.17-951.24" *)
  (* unused_bits = "0" *)
  wire _18_;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:23.25-25.6|/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:953.17-953.23" *)
  (* unused_bits = "0" *)
  wire _19_;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:23.25-25.6|/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:954.17-954.24" *)
  (* unused_bits = "0" *)
  wire _20_;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:23.25-25.6|/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:952.17-952.23" *)
  (* unused_bits = "0" *)
  wire _21_;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:23.25-25.6|/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:974.17-974.27" *)
  (* unused_bits = "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31" *)
  wire [31:0] _22_;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:12.25-12.26" *)
  output a;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:13.25-13.26" *)
  output b;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:11.17-11.24" *)
  output blueled;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:14.25-14.26" *)
  output c;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:21.10-21.13" *)
  (* unused_bits = "0" *)
  wire clk;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:15.21-15.22" *)
  output d;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:16.23-16.24" *)
  output e;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:17.22-17.23" *)
  output f;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:18.23-18.24" *)
  output g;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:10.17-10.25" *)
  output greenled;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:28.10-28.13" *)
  wire led;
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:9.17-9.23" *)
  output redled;
  (* module_not_derived = 32'd1 *)
  (* src = "/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:81.9-88.8" *)
  BIDIR_CELL #(
    .DS(1'h0),
    .ESEL(1'h1),
    .FIXHOLD(1'h0),
    .OSEL(1'h1),
    .WPD(1'h0)
  ) _23_ (
    .I_DAT(),
    .I_EN(1'h0),
    .\I_PAD_$inp (),
    .O_DAT(1'h1),
    .O_EN(1'h1),
    .\O_PAD_$out (a)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:81.9-88.8" *)
  BIDIR_CELL #(
    .DS(1'h0),
    .ESEL(1'h1),
    .FIXHOLD(1'h0),
    .OSEL(1'h1),
    .WPD(1'h0)
  ) _24_ (
    .I_DAT(),
    .I_EN(1'h0),
    .\I_PAD_$inp (),
    .O_DAT(1'h0),
    .O_EN(1'h1),
    .\O_PAD_$out (b)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:81.9-88.8" *)
  BIDIR_CELL #(
    .DS(1'h0),
    .ESEL(1'h1),
    .FIXHOLD(1'h0),
    .OSEL(1'h1),
    .WPD(1'h0)
  ) _25_ (
    .I_DAT(),
    .I_EN(1'h0),
    .\I_PAD_$inp (),
    .O_DAT(1'h0),
    .O_EN(1'h1),
    .\O_PAD_$out (blueled)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:81.9-88.8" *)
  BIDIR_CELL #(
    .DS(1'h0),
    .ESEL(1'h1),
    .FIXHOLD(1'h0),
    .OSEL(1'h1),
    .WPD(1'h0)
  ) _26_ (
    .I_DAT(),
    .I_EN(1'h0),
    .\I_PAD_$inp (),
    .O_DAT(1'h0),
    .O_EN(1'h1),
    .\O_PAD_$out (c)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:81.9-88.8" *)
  BIDIR_CELL #(
    .DS(1'h0),
    .ESEL(1'h1),
    .FIXHOLD(1'h0),
    .OSEL(1'h1),
    .WPD(1'h0)
  ) _27_ (
    .I_DAT(),
    .I_EN(1'h0),
    .\I_PAD_$inp (),
    .O_DAT(1'h1),
    .O_EN(1'h1),
    .\O_PAD_$out (d)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:81.9-88.8" *)
  BIDIR_CELL #(
    .DS(1'h0),
    .ESEL(1'h1),
    .FIXHOLD(1'h0),
    .OSEL(1'h1),
    .WPD(1'h0)
  ) _28_ (
    .I_DAT(),
    .I_EN(1'h0),
    .\I_PAD_$inp (),
    .O_DAT(1'h1),
    .O_EN(1'h1),
    .\O_PAD_$out (e)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:81.9-88.8" *)
  BIDIR_CELL #(
    .DS(1'h0),
    .ESEL(1'h1),
    .FIXHOLD(1'h0),
    .OSEL(1'h1),
    .WPD(1'h0)
  ) _29_ (
    .I_DAT(),
    .I_EN(1'h0),
    .\I_PAD_$inp (),
    .O_DAT(1'h1),
    .O_EN(1'h1),
    .\O_PAD_$out (f)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:81.9-88.8" *)
  BIDIR_CELL #(
    .DS(1'h0),
    .ESEL(1'h1),
    .FIXHOLD(1'h0),
    .OSEL(1'h1),
    .WPD(1'h0)
  ) _30_ (
    .I_DAT(),
    .I_EN(1'h0),
    .\I_PAD_$inp (),
    .O_DAT(1'h1),
    .O_EN(1'h1),
    .\O_PAD_$out (g)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:81.9-88.8" *)
  BIDIR_CELL #(
    .DS(1'h0),
    .ESEL(1'h1),
    .FIXHOLD(1'h0),
    .OSEL(1'h1),
    .WPD(1'h0)
  ) _31_ (
    .I_DAT(),
    .I_EN(1'h0),
    .\I_PAD_$inp (),
    .O_DAT(1'h1),
    .O_EN(1'h1),
    .\O_PAD_$out (greenled)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:81.9-88.8" *)
  BIDIR_CELL #(
    .DS(1'h0),
    .ESEL(1'h1),
    .FIXHOLD(1'h0),
    .OSEL(1'h1),
    .WPD(1'h0)
  ) _32_ (
    .I_DAT(),
    .I_EN(1'h0),
    .\I_PAD_$inp (),
    .O_DAT(1'h0),
    .O_EN(1'h1),
    .\O_PAD_$out (redled)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/raghavendra/qorc-sdk/vaman/trunk/fpga/sevenseg/codes/counter/sevenseg.v:23.25-25.6|/home/raghavendra/qorc-sdk/fpga_toolchain_install/v1.3.1/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:1015.12-1060.4" *)
  ASSP u_qlal4s3b_cell_macro (
    .Device_ID(16'h0000),
    .FB_Busy(1'h0),
    .FB_Int_Clr(8'h00),
    .FB_PKfbData(32'd0),
    .FB_PKfbEOF(1'h0),
    .FB_PKfbOverflow(_00_),
    .FB_PKfbPush(4'h0),
    .FB_PKfbSOF(1'h0),
    .FB_Start(_01_),
    .FB_msg_out(4'h0),
    .SDMA_Active(_02_),
    .SDMA_Done(_03_),
    .SDMA_Req(4'h0),
    .SDMA_Sreq(4'h0),
    .SPIm_PEnable(1'h0),
    .SPIm_PReady(_04_),
    .SPIm_PSlvErr(_05_),
    .SPIm_PWdata(32'd0),
    .SPIm_PWrite(1'h0),
    .SPIm_Paddr(16'h0000),
    .SPIm_Prdata(_06_),
    .Sensor_Int(_07_),
    .Sys_Clk0(clk),
    .Sys_Clk0_Rst(_08_),
    .Sys_Clk1(_09_),
    .Sys_Clk1_Rst(_10_),
    .Sys_PKfb_Clk(1'h0),
    .Sys_PKfb_Rst(_11_),
    .Sys_PSel(1'h0),
    .Sys_Pclk(_12_),
    .Sys_Pclk_Rst(_13_),
    .TimeStamp(_14_),
    .WB_CLK(1'h0),
    .WB_RST(_15_),
    .WBs_ACK(1'h0),
    .WBs_ADR(_16_),
    .WBs_BYTE_STB(_17_),
    .WBs_CYC(_18_),
    .WBs_RD(_19_),
    .WBs_RD_DAT(32'd0),
    .WBs_STB(_20_),
    .WBs_WE(_21_),
    .WBs_WR_DAT(_22_)
  );
  assign led = 1'h0;
endmodule
