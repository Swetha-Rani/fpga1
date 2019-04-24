module fa(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
assign sum=a^b^cin;
assign carry=((a&b)|(b&cin)|(cin&a));
endmodule
module ha(a,b,sum,carry);
input a,b;
output sum,carry;
assign sum=a^b;
assign carry=a&b;
endmodule


module vedic(input wire clk,input wire [7:0]sig,output reg [15:0]Product);
reg [7:0] a;// = 8'b00000000;
reg [7:0] b;// = 8'b00000000;
wire [15:0]Product;
reg [26:0] delay;
reg t;
signed reg [31:0] delta; 

initial
begin
a <=8'd0;
b <=8'd0;
delay <= 27'd0;
t<=1'b0;
delta <= 32'd0;
end


always@ (posedge clk)
begin
delay <= delay+ 27'd1;
if(delay==27'b000000011110100001001000000)
begin
delay <= 27'd0;
a[0]=sig[0];
a[1]=sig[1];
a[2]=sig[2];
a[3]=sig[3];
b[0]=sig[4];
b[1]=sig[5];
b[2]=sig[6];
b[3]=sig[7];
end
end
initial
begin

a[4]=1'b0;
a[5]=1'b0;
a[6]=1'b0;
a[7]=1'b0;
b[4]=1'b0;
b[5]=1'b0;
b[6]=1'b0;
b[7]=1'b0;
end

wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,w21,w22,w23,w24,w25,w26,w27,w28,w29,w30,w31,w32,w33,w34,w35,w36,w37,w38,w39,w40,w41,w42,w43,w45,w46,w47,w48,w49,w50,w51,w52,w53,w54,w55,w56,w57,w58,w59,w60,w61,w62,w63;
wire c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32,c33,c34,c35,c36,c37,c38,c39,c40,c41,c42,c43,c44,c45,c46,c47,c48,c49,c50,c51,c52,c53,c54;
wire s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41;

assign w1=a[1]&b[0];
assign w2=a[0]&b[1];
assign w3=a[2]&b[0];
assign w4=a[1]&b[1];
assign w5=a[0]&b[2];
assign w6=a[3]&b[0];
assign w7=a[2]&b[1];
assign w8=a[1]&b[2];
assign w9=a[0]&b[3];
assign w10=a[4]&b[0];
assign w11=a[3]&b[1];
assign w12=a[2]&b[2];
assign w13=a[1]&b[3];
assign w14=a[0]&b[4];
assign w15=a[5]&b[0];
assign w16=a[4]&b[1];
assign w17=a[3]&b[2];
assign w18=a[2]&b[3];
assign w19=a[1]&b[4];
assign w20=a[0]&b[5];
assign w21=a[6]&b[0];
assign w22=a[5]&b[1];
assign w23=a[4]&b[2];
assign w24=a[3]&b[3];
assign w25=a[2]&b[4];
assign w26=a[1]&b[5];
assign w27=a[0]&b[6];
assign w28=a[7]&b[0];
assign w29=a[6]&b[1];
assign w30=a[5]&b[2];
assign w31=a[4]&b[3];
assign w32=a[3]&b[4];
assign w33=a[2]&b[5];
assign w34=a[1]&b[6];
assign w35=a[0]&b[7];
assign w36=a[7]&b[1];
assign w37=a[6]&b[2];
assign w38=a[5]&b[3];
assign w39=a[4]&b[4];
assign w40=a[3]&b[5];
assign w41=a[2]&b[6];
assign w42=a[1]&b[7];
assign w43=a[7]&b[2];
assign w44=a[6]&b[3];
assign w45=a[5]&b[4];
assign w46=a[4]&b[5];
assign w47=a[3]&b[6];
assign w48=a[2]&b[7];
assign w49=a[7]&b[3];
assign w50=a[6]&b[4];
assign w51=a[5]&b[5];
assign w52=a[4]&b[6];
assign w53=a[3]&b[7];
assign w54=a[7]&b[4];
assign w55=a[6]&b[5];
assign w56=a[5]&b[6];
assign w57=a[4]&b[7];
assign w58=a[7]&b[5];
assign w59=a[6]&b[6];
assign w60=a[5]&b[7];
assign w61=a[7]&b[6];
assign w62=a[6]&b[7];
assign w63=a[7]&b[7];


assign Product[0]=a[0]&b[0];

ha h1(.a(w1),.b(w2),.sum(Product[1]),.carry(c0));
fa f1(.a(w3),.b(w4),.cin(c0),.sum(s0),.carry(c1));
ha h2(.a(w5),.b(s0),.sum(Product[2]),.carry(c2));
fa f2(.a(w6),.b(w7),.cin(c1),.sum(s1),.carry(c3));
fa f3(.a(w8),.b(s1),.cin(c2),.sum(s2),.carry(c4));
ha h3(.a(s2),.b(w9),.sum(Product[3]),.carry(c5));
fa f4(.a(w10),.b(w11),.cin(c3),.sum(s3),.carry(c6));

fa f5(.a(w12),.b(s3),.cin(c4),.sum(s4),.carry(c7));
fa f6(.a(w13),.b(s4),.cin(c5),.sum(s5),.carry(c8));
ha h4(.a(w14),.b(s5),.sum(Product[4]),.carry(c9));
fa f7(.a(w15),.b(w16),.cin(c6),.sum(s6),.carry(c10));
fa f8(.a(s6),.b(w17),.cin(c7),.sum(s7),.carry(c11));

fa f9(.a(w18),.b(s7),.cin(c8),.sum(s8),.carry(c12));
fa f10(.a(w19),.b(s8),.cin(c9),.sum(s9),.carry(c13));
ha h5(.a(w20),.b(s9),.sum(Product[5]),.carry(c14));
fa f11(.a(w21),.b(w22),.cin(c10),.sum(s10),.carry(c15));
fa f12(.a(w23),.b(s10),.cin(c11),.sum(s11),.carry(c16));
fa f13(.a(w24),.b(s11),.cin(c12),.sum(s12),.carry(c17));
fa f14(.a(w25),.b(s12),.cin(c13),.sum(s13),.carry(c18));
fa f15(.a(w26),.b(s13),.cin(c14),.sum(s14),.carry(c19));

ha h6(.a(s14),.b(w27),.sum(Product[6]),.carry(c20));
fa f16(.a(w28),.b(w29),.cin(c15),.sum(s15),.carry(c21));
fa f17(.a(w30),.b(s15),.cin(c16),.sum(s16),.carry(c22));
fa f18(.a(w31),.b(s16),.cin(c17),.sum(s17),.carry(c23));
fa f19(.a(w32),.b(s17),.cin(c18),.sum(s18),.carry(c24));
fa f20(.a(w33),.b(s18),.cin(c19),.sum(s19),.carry(c25));
fa f21(.a(w34),.b(s19),.cin(c20),.sum(s20),.carry(c26));
ha h7(.a(s20),.b(w35),.sum(Product[7]),.carry(c27));

fa f22(.a(w36),.b(w37),.cin(c21),.sum(s21),.carry(c28));
fa f23(.a(w38),.b(s21),.cin(c22),.sum(s22),.carry(c29));
fa f24(.a(w39),.b(s22),.cin(c23),.sum(s23),.carry(c30));
fa f25(.a(w40),.b(s23),.cin(c24),.sum(s24),.carry(c31));

fa f26(.a(w41),.b(s24),.cin(c25),.sum(s25),.carry(c32));
fa f27(.a(w42),.b(s25),.cin(c26),.sum(s26),.carry(c33));

ha h8(.a(s26),.b(c27),.sum(Product[8]),.carry(c34));
fa f29(.a(w43),.b(w44),.cin(c28),.sum(s27),.carry(c35));
fa f30(.a(w45),.b(s27),.cin(c29),.sum(s28),.carry(c36));
fa f31(.a(w46),.b(s28),.cin(c30),.sum(s29),.carry(c37));
fa f32(.a(w47),.b(s29),.cin(c31),.sum(s30),.carry(c38));
fa f33(.a(w48),.b(s30),.cin(c32),.sum(s31),.carry(c39));
fa f34(.a(s31),.b(c33),.cin(c34),.sum(Product[9]),.carry(c40));

fa f35(.a(w49),.b(w50),.cin(c35),.sum(s32),.carry(c41));
fa f36(.a(w51),.b(s32),.cin(c36),.sum(s33),.carry(c42));
fa f37(.a(w52),.b(s33),.cin(c37),.sum(s34),.carry(c43));
fa f38(.a(w53),.b(s34),.cin(c38),.sum(s35),.carry(c44));
fa f39(.a(s35),.b(c40),.cin(c39),.sum(Product[10]),.carry(c45));

fa f40(.a(w54),.b(w55),.cin(c41),.sum(s36),.carry(c46));
fa f41(.a(w56),.b(s36),.cin(c42),.sum(s37),.carry(c47));
fa f42(.a(w57),.b(s37),.cin(c43),.sum(s38),.carry(c48));
fa f43(.a(s38),.b(c44),.cin(c45),.sum(Product[11]),.carry(c49));

fa f44(.a(w58),.b(w59),.cin(c46),.sum(s39),.carry(c50));

fa f45(.a(w60),.b(s39),.cin(c47),.sum(s40),.carry(c51));
fa f46(.a(s40),.b(c48),.cin(c49),.sum(Product[12]),.carry(c52));
fa f47(.a(w61),.b(w62),.cin(c50),.sum(s41),.carry(c53));

fa f48(.a(s41),.b(c51),.cin(c52),.sum(Product[13]),.carry(c54));
fa f49(.a(w63),.b(c53),.cin(c54),.sum(Product[14]),.carry(Product[15]));


endmodule
