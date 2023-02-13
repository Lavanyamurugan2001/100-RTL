`timescale 1ns/100ps
module axil_cdc_tb;
parameter ADDR_WIDTH =32;
parameter DATA_WIDTH =32;
parameter STRB_WIDTH =(DATA_WIDTH/8);

reg  s_clk;
reg  s_rst;
  reg [ADDR_WIDTH-1:0]  s_axil_awaddr;
reg[2:0]  s_axil_awprot;
reg  s_axil_awvalid;
wire s_axil_awready;
reg [DATA_WIDTH-1:0] s_axil_wdata;
reg[STRB_WIDTH-1:0]  s_axil_wstrb;
reg  s_axil_wvalid;
wire s_axil_wready;
wire [1:0]              s_axil_bresp;
wire                    s_axil_bvalid;
reg                     s_axil_bready;
reg  [ADDR_WIDTH-1:0]   s_axil_araddr;
reg  [2:0]              s_axil_arprot;
reg                     s_axil_arvalid;
wire                    s_axil_arready;
wire [DATA_WIDTH-1:0]   s_axil_rdata;
wire [1:0]              s_axil_rresp;
wire                    s_axil_rvalid;
reg                     s_axil_rready;
 /*
     * AXI lite master interface
     */
   	reg                 	 m_clk;
   	reg                 	 m_rst;
    	wire [ADDR_WIDTH-1:0]    m_axil_awaddr;
    	wire [2:0]               m_axil_awprot;
        wire                     m_axil_awvalid;
    	reg                      m_axil_awready;
    	wire [DATA_WIDTH-1:0]    m_axil_wdata;
   	wire [STRB_WIDTH-1:0]    m_axil_wstrb;
    	wire                     m_axil_wvalid;
    	reg                      m_axil_wready;
   	reg  [1:0]               m_axil_bresp;
   	reg                      m_axil_bvalid;
    	wire                     m_axil_bready;
    	wire [ADDR_WIDTH-1:0]    m_axil_araddr;
    	wire [2:0]               m_axil_arprot;
    	wire                     m_axil_arvalid;
    	reg                      m_axil_arready;
    	reg  [DATA_WIDTH-1:0]    m_axil_rdata;
    	reg  [1:0]               m_axil_rresp;
    	reg                      m_axil_rvalid;
  	wire                     m_axil_rready;


   axil_cdc   uut(.s_clk(s_clk),
	   .s_rst(s_rst),
	   .s_axil_awaddr(s_axil_awaddr),
	   .s_axil_awprot(s_axil_awprot),
	   .s_axil_awvalid(s_axil_awvalid),
	   .s_axil_awready(s_axil_awready),
	   .s_axil_wdata(s_axil_wdata),
	   .s_axil_wstrb(s_axil_wstrb),
	   .s_axil_wvalid(s_axil_wvalid),
	   .s_axil_wready(s_axil_wready),
	   .s_axil_bresp(s_axil_bresp),
	   .s_axil_bvalid(s_axil_bvalid),
	   .s_axil_bready(s_axil_bready),
	   .s_axil_araddr(s_axil_araddr),
	   .s_axil_arprot(s_axil_arprot),
	   .s_axil_arvalid(s_axil_arvalid),
	   .s_axil_arready(s_axil_arready),
	   .s_axil_rdata(s_axil_rdata),
	   .s_axil_rresp(s_axil_rresp),
	   .s_axil_rvalid(s_axil_rvalid),
	   .s_axil_rready(s_axil_rready),
	   .m_clk(m_clk),
	   .m_rst(m_rst),
	   .m_axil_awaddr(m_axil_awaddr),
	   .m_axil_awprot(m_axil_awprot),
	   .m_axil_awvalid(m_axil_awvalid),
	   .m_axil_awready(m_axil_awready),
	   .m_axil_wdata(m_axil_wdata),
	   .m_axil_wstrb(m_axil_wstrb),
	   .m_axil_wvalid(m_axil_wvalid),
	   .m_axil_wready(m_axil_wready),
	   .m_axil_bresp(m_axil_bresp),
	   .m_axil_bvalid(m_axil_bvalid),
	   .m_axil_bready(m_axil_bready));

   initial
   begin
	   $dumpfile("axilcdc.vcd");
	   $dumpvars (0,axil_cdc_tb);
   end
   always #5 s_clk=~s_clk;
   always #10 m_clk=~m_clk;
  initial
    begin
      s_clk=0;
      m_clk=1;
      s_rst=0;#5 s_rst=1;
      m_rst=0;#5 m_rst=1;
      end
  task s_waddcnl(input s_axil_awaddr);
    begin
     s_axil_awaddr=32'hFFFFFFFF;
     s_axil_awprot=111;
     s_axil_awvalid=0;
    #5 s_axil_awvalid=1;
    end
  endtask
  task s_wdatacnl(input s_axil_wdata);
    begin
   	s_axil_wdata=32'hFFFFFFFF;
     s_axil_wstrb=0000;#1  s_axil_wstrb=1111;
    s_axil_wvalid=0;#5 s_axil_wvalid=1;
    end
  endtask
  initial
    begin
    s_axil_bready=0;
    #1 s_axil_bready=1;
    end
  task s_raddcnl( input s_axil_araddr);
    begin
    s_axil_araddr=32'hFFFFFFFF;
     s_axil_arprot=111;
     s_axil_arvalid=0;
    #5 s_axil_arvalid=1;
    end
  endtask
  initial
    begin
   s_axil_rready=0;
      #5 s_axil_rready=1;
    end
  initial
    begin
       m_axil_awready=0;
      #5  m_axil_awready=1;
      m_axil_wready=0;
      #5 m_axil_wready=1;
    end
   task m_wrespcnl(input m_axil_bresp);
    begin
      m_axil_bresp=2'b00;m_axil_bvalid=0;
      #0.5 m_axil_bvalid=1;
      #1 m_axil_bresp=2'b01;
      #1 m_axil_bresp=2'b10;
      #1 m_axil_bresp=2'b11;
    end
  endtask
  initial
    begin
       m_axil_arready=0;
      #1  m_axil_arready=1;
    end
                    task m_rdatacnl(input m_axil_rdata);
    begin
    m_axil_rdata=32'hFFFFFFFF;m_axil_rvalid=0;m_axil_bresp=2'b00;
    #0.5 m_axil_rvalid=1;
   #1 m_axil_bresp=2'b01;
    #1 m_axil_bresp=2'b10;
    #1 m_axil_bresp=2'b11;
    end
  endtask
  
                    initial
                    repeat(3)
    begin
      s_waddcnl(32'hFFFFFFFF);
      s_wdatacnl(32'hFFFFFFFF);
      s_raddcnl(32'hFFFFFFFF);
      m_wrespcnl(2'bxx);
      m_rdatacnl(32'hFFFFFFFF);
    
  $finish;
    end
  
  
endmodule
