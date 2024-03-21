module top(
    input clk,
    input rst_n,
    inout usb_dm,
    inout usb_dp,
    output [7:0] key1
);
Gowin_PLL your_instance_name(
    .clkout0(clkout0_o), //output clkout0
    .clkin(clk) //input clkin
);
usb_hid_host hid_inst(
    .usbclk(clkout0_o),
    .usbrst_n(rst_n),
    .usb_dm(usb_dm),
    .usb_dp(usb_dp),
    .typ(key1[1:0]),
    .conerr(key1[7])
);

endmodule
