module addr_decode_156cmp (
input [15:0]addr_in,
output reg [31:0]data_out,
output reg [155:0]acmp, // pipeline here
input [31:0]data_out1,
input [31:0]data_out2,
input [31:0]data_out3,
input [31:0]data_out4,
input [31:0]data_out5,
input [31:0]data_out6,
input [31:0]data_out7,
input [31:0]data_out8,
input [31:0]data_out9,
input [31:0]data_out10,
input [31:0]data_out11,
input [31:0]data_out12,
input [31:0]data_out13,
input [31:0]data_out14,
input [31:0]data_out15,
input [31:0]data_out16,
input [31:0]data_out17,
input [31:0]data_out18,
input [31:0]data_out19,
input [31:0]data_out20,
input [31:0]data_out21,
input [31:0]data_out22,
input [31:0]data_out23,
input [31:0]data_out24,
input [31:0]data_out25,
input [31:0]data_out26,
input [31:0]data_out27,
input [31:0]data_out28,
input [31:0]data_out29,
input [31:0]data_out30,
input [31:0]data_out31,
input [31:0]data_out32,
input [31:0]data_out33,
input [31:0]data_out34,
input [31:0]data_out35,
input [31:0]data_out36,
input [31:0]data_out37,
input [31:0]data_out38,
input [31:0]data_out39,
input [31:0]data_out40,
input [31:0]data_out41,
input [31:0]data_out42,
input [31:0]data_out43,
input [31:0]data_out44,
input [31:0]data_out45,
input [31:0]data_out46,
input [31:0]data_out47,
input [31:0]data_out48,
input [31:0]data_out49,
input [31:0]data_out50,
input [31:0]data_out51,
input [31:0]data_out52,
input [31:0]data_out53,
input [31:0]data_out54,
input [31:0]data_out55,
input [31:0]data_out56,
input [31:0]data_out57,
input [31:0]data_out58,
input [31:0]data_out59,
input [31:0]data_out60,
input [31:0]data_out61,
input [31:0]data_out62,
input [31:0]data_out63,
input [31:0]data_out64,
input [31:0]data_out65,
input [31:0]data_out66,
input [31:0]data_out67,
input [31:0]data_out68,
input [31:0]data_out69,
input [31:0]data_out70,
input [31:0]data_out71,
input [31:0]data_out72,
input [31:0]data_out73,
input [31:0]data_out74,
input [31:0]data_out75,
input [31:0]data_out76,
input [31:0]data_out77,
input [31:0]data_out78,
input [31:0]data_out79,
input [31:0]data_out80,
input [31:0]data_out81,
input [31:0]data_out82,
input [31:0]data_out83,
input [31:0]data_out84,
input [31:0]data_out85,
input [31:0]data_out86,
input [31:0]data_out87,
input [31:0]data_out88,
input [31:0]data_out89,
input [31:0]data_out90,
input [31:0]data_out91,
input [31:0]data_out92,
input [31:0]data_out93,
input [31:0]data_out94,
input [31:0]data_out95,
input [31:0]data_out96,
input [31:0]data_out97,
input [31:0]data_out98,
input [31:0]data_out99,
input [31:0]data_out100,
input [31:0]data_out101,
input [31:0]data_out102,
input [31:0]data_out103,
input [31:0]data_out104,
input [31:0]data_out105,
input [31:0]data_out106,
input [31:0]data_out107,
input [31:0]data_out108,
input [31:0]data_out109,
input [31:0]data_out110,
input [31:0]data_out111,
input [31:0]data_out112,
input [31:0]data_out113,
input [31:0]data_out114,
input [31:0]data_out115,
input [31:0]data_out116,
input [31:0]data_out117,
input [31:0]data_out118,
input [31:0]data_out119,
input [31:0]data_out120,
input [31:0]data_out121,
input [31:0]data_out122,
input [31:0]data_out123,
input [31:0]data_out124,
input [31:0]data_out125,
input [31:0]data_out126,
input [31:0]data_out127,
input [31:0]data_out128,
input [31:0]data_out129,
input [31:0]data_out130,
input [31:0]data_out131,
input [31:0]data_out132,
input [31:0]data_out133,
input [31:0]data_out134,
input [31:0]data_out135,
input [31:0]data_out136,
input [31:0]data_out137,
input [31:0]data_out138,
input [31:0]data_out139,
input [31:0]data_out140,
input [31:0]data_out141,
input [31:0]data_out142,
input [31:0]data_out143,
input [31:0]data_out144,
input [31:0]data_out145,
input [31:0]data_out146,
input [31:0]data_out147,
input [31:0]data_out148,
input [31:0]data_out149,
input [31:0]data_out150,
input [31:0]data_out151,
input [31:0]data_out152,
input [31:0]data_out153,
input [31:0]data_out154,
input [31:0]data_out155,
input [31:0]data_out156
);
always@(*)
case(addr_in[15:0])
16'h01:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 0);
data_out <= data_out1;
end
16'h02:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 1);
data_out <= data_out2;
end
16'h03:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 2);
data_out <= data_out3;
end
16'h04:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 3);
data_out <= data_out4;
end
16'h05:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 4);
data_out <= data_out5;
end
16'h06:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 5);
data_out <= data_out6;
end
16'h07:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 6);
data_out <= data_out7;
end
16'h08:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 7);
data_out <= data_out8;
end
16'h09:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 8);
data_out <= data_out9;
end
16'h0a:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 9);
data_out <= data_out10;
end
16'h0b:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 10);
data_out <= data_out11;
end
16'h0c:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 11);
data_out <= data_out12;
end
16'h0d:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 12);
data_out <= data_out13;
end
16'h0e:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 13);
data_out <= data_out14;
end
16'h0f:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 14);
data_out <= data_out15;
end
16'h10:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 15);
data_out <= data_out16;
end
16'h11:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 16);
data_out <= data_out17;
end
16'h12:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 17);
data_out <= data_out18;
end
16'h13:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 18);
data_out <= data_out19;
end
16'h14:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 19);
data_out <= data_out20;
end
16'h15:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 20);
data_out <= data_out21;
end
16'h16:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 21);
data_out <= data_out22;
end
16'h17:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 22);
data_out <= data_out23;
end
16'h18:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 23);
data_out <= data_out24;
end
16'h19:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 24);
data_out <= data_out25;
end
16'h1a:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 25);
data_out <= data_out26;
end
16'h1b:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 26);
data_out <= data_out27;
end
16'h1c:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 27);
data_out <= data_out28;
end
16'h1d:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 28);
data_out <= data_out29;
end
16'h1e:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 29);
data_out <= data_out30;
end
16'h1f:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 30);
data_out <= data_out31;
end
16'h20:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 31);
data_out <= data_out32;
end
16'h21:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 32);
data_out <= data_out33;
end
16'h22:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 33);
data_out <= data_out34;
end
16'h23:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 34);
data_out <= data_out35;
end
16'h24:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 35);
data_out <= data_out36;
end
16'h25:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 36);
data_out <= data_out37;
end
16'h26:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 37);
data_out <= data_out38;
end
16'h27:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 38);
data_out <= data_out39;
end
16'h28:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 39);
data_out <= data_out40;
end
16'h29:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 40);
data_out <= data_out41;
end
16'h2a:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 41);
data_out <= data_out42;
end
16'h2b:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 42);
data_out <= data_out43;
end
16'h2c:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 43);
data_out <= data_out44;
end
16'h2d:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 44);
data_out <= data_out45;
end
16'h2e:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 45);
data_out <= data_out46;
end
16'h2f:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 46);
data_out <= data_out47;
end
16'h30:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 47);
data_out <= data_out48;
end
16'h31:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 48);
data_out <= data_out49;
end
16'h32:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 49);
data_out <= data_out50;
end
16'h33:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 50);
data_out <= data_out51;
end
16'h34:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 51);
data_out <= data_out52;
end
16'h35:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 52);
data_out <= data_out53;
end
16'h36:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 53);
data_out <= data_out54;
end
16'h37:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 54);
data_out <= data_out55;
end
16'h38:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 55);
data_out <= data_out56;
end
16'h39:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 56);
data_out <= data_out57;
end
16'h3a:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 57);
data_out <= data_out58;
end
16'h3b:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 58);
data_out <= data_out59;
end
16'h3c:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 59);
data_out <= data_out60;
end
16'h3d:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 60);
data_out <= data_out61;
end
16'h3e:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 61);
data_out <= data_out62;
end
16'h3f:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 62);
data_out <= data_out63;
end
16'h40:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 63);
data_out <= data_out64;
end
16'h41:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 64);
data_out <= data_out65;
end
16'h42:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 65);
data_out <= data_out66;
end
16'h43:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 66);
data_out <= data_out67;
end
16'h44:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 67);
data_out <= data_out68;
end
16'h45:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 68);
data_out <= data_out69;
end
16'h46:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 69);
data_out <= data_out70;
end
16'h47:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 70);
data_out <= data_out71;
end
16'h48:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 71);
data_out <= data_out72;
end
16'h49:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 72);
data_out <= data_out73;
end
16'h4a:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 73);
data_out <= data_out74;
end
16'h4b:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 74);
data_out <= data_out75;
end
16'h4c:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 75);
data_out <= data_out76;
end
16'h4d:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 76);
data_out <= data_out77;
end
16'h4e:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 77);
data_out <= data_out78;
end
16'h4f:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 78);
data_out <= data_out79;
end
16'h50:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 79);
data_out <= data_out80;
end
16'h51:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 80);
data_out <= data_out81;
end
16'h52:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 81);
data_out <= data_out82;
end
16'h53:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 82);
data_out <= data_out83;
end
16'h54:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 83);
data_out <= data_out84;
end
16'h55:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 84);
data_out <= data_out85;
end
16'h56:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 85);
data_out <= data_out86;
end
16'h57:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 86);
data_out <= data_out87;
end
16'h58:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 87);
data_out <= data_out88;
end
16'h59:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 88);
data_out <= data_out89;
end
16'h5a:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 89);
data_out <= data_out90;
end
16'h5b:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 90);
data_out <= data_out91;
end
16'h5c:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 91);
data_out <= data_out92;
end
16'h5d:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 92);
data_out <= data_out93;
end
16'h5e:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 93);
data_out <= data_out94;
end
16'h5f:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 94);
data_out <= data_out95;
end
16'h60:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 95);
data_out <= data_out96;
end
16'h61:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 96);
data_out <= data_out97;
end
16'h62:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 97);
data_out <= data_out98;
end
16'h63:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 98);
data_out <= data_out99;
end
16'h64:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 99);
data_out <= data_out100;
end
16'h65:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 100);
data_out <= data_out101;
end
16'h66:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 101);
data_out <= data_out102;
end
16'h67:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 102);
data_out <= data_out103;
end
16'h68:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 103);
data_out <= data_out104;
end
16'h69:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 104);
data_out <= data_out105;
end
16'h6a:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 105);
data_out <= data_out106;
end
16'h6b:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 106);
data_out <= data_out107;
end
16'h6c:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 107);
data_out <= data_out108;
end
16'h6d:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 108);
data_out <= data_out109;
end
16'h6e:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 109);
data_out <= data_out110;
end
16'h6f:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 110);
data_out <= data_out111;
end
16'h70:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 111);
data_out <= data_out112;
end
16'h71:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 112);
data_out <= data_out113;
end
16'h72:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 113);
data_out <= data_out114;
end
16'h73:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 114);
data_out <= data_out115;
end
16'h74:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 115);
data_out <= data_out116;
end
16'h75:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 116);
data_out <= data_out117;
end
16'h76:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 117);
data_out <= data_out118;
end
16'h77:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 118);
data_out <= data_out119;
end
16'h78:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 119);
data_out <= data_out120;
end
16'h79:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 120);
data_out <= data_out121;
end
16'h7a:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 121);
data_out <= data_out122;
end
16'h7b:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 122);
data_out <= data_out123;
end
16'h7c:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 123);
data_out <= data_out124;
end
16'h7d:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 124);
data_out <= data_out125;
end
16'h7e:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 125);
data_out <= data_out126;
end
16'h7f:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 126);
data_out <= data_out127;
end
16'h80:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 127);
data_out <= data_out128;
end
16'h81:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 128);
data_out <= data_out129;
end
16'h82:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 129);
data_out <= data_out130;
end
16'h83:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 130);
data_out <= data_out131;
end
16'h84:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 131);
data_out <= data_out132;
end
16'h85:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 132);
data_out <= data_out133;
end
16'h86:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 133);
data_out <= data_out134;
end
16'h87:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 134);
data_out <= data_out135;
end
16'h88:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 135);
data_out <= data_out136;
end
16'h89:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 136);
data_out <= data_out137;
end
16'h8a:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 137);
data_out <= data_out138;
end
16'h8b:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 138);
data_out <= data_out139;
end
16'h8c:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 139);
data_out <= data_out140;
end
16'h8d:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 140);
data_out <= data_out141;
end
16'h8e:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 141);
data_out <= data_out142;
end
16'h8f:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 142);
data_out <= data_out143;
end
16'h90:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 143);
data_out <= data_out144;
end
16'h91:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 144);
data_out <= data_out145;
end
16'h92:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 145);
data_out <= data_out146;
end
16'h93:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 146);
data_out <= data_out147;
end
16'h94:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 147);
data_out <= data_out148;
end
16'h95:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 148);
data_out <= data_out149;
end
16'h96:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 149);
data_out <= data_out150;
end
16'h97:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 150);
data_out <= data_out151;
end
16'h98:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 151);
data_out <= data_out152;
end
16'h99:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 152);
data_out <= data_out153;
end
16'h9a:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 153);
data_out <= data_out154;
end
16'h9b:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 154);
data_out <= data_out155;
end
16'h9c:
begin
acmp[155:0] <= ((156'd0) | 1'b1 << 155);
data_out <= data_out156;
end
default:
begin
acmp[155:0] <= 156'd0;
data_out <= 32'h00000000;
end
endcase

endmodule
