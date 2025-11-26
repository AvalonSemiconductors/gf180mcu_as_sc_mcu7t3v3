module qcpu_spi(
    input [7:0] divisor,
    input [7:0] din,
    
    output reg [7:0] dout,
    
    output reg SCLK,
    output reg DO,
    input DI,
    
    input start,
    output reg busy,

    input clk,
    input rst
);

reg [7:0] data_out_buff;
reg [7:0] data_in_buff;
reg [7:0] div_counter;
reg [4:0] counter;

always @(posedge clk) begin
    if(rst) begin
        counter <= 5'b11111;
        dout <= 0;
        div_counter <= 0;
        data_in_buff <= 0;
        data_out_buff <= 0;
    end else begin
        if(start) begin
            counter <= 5'b10000;
            div_counter <= 0;
            data_out_buff <= din;
            data_in_buff <= 1;
            SCLK <= 0;
        end
        if(counter != 5'b11111) begin
            busy <= 1;
            div_counter <= div_counter + 1;
            if(div_counter == divisor) begin
                div_counter <= 0;
                counter <= counter - 1;
                if(!counter[0]) begin
                    DO <= data_out_buff[7];
                    data_out_buff <= {data_out_buff[6:0], 1'b0};
                    SCLK <= 0;
                end else begin
                    SCLK <= 1;
                    data_in_buff <= {data_in_buff[6:0], DI};
                end
            end
        end else begin
            SCLK <= 0;
            DO <= 0;
            busy <= 0;
            dout <= data_in_buff;
        end
    end
end

endmodule
