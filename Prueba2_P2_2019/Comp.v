module compararBits(
    input x,
    input y,
    output equal
);

    assign equal = x & y;

endmodule

module Comp(
    input [7:0] x,
    input [7:0] y,
    output mayorQue
);
    

    wire cmp1, cmp2, cmp3, cmp4;
    wire cmp5, cmp6, cmp7, cmp8;

    wire [1:0] gt1, gt2, gt3, gt4;
    wire [1:0] gt5, gt6, gt7, gt8;

    compararBits ciclo8(x[7], y[7], cmp8);
    assign gt8[1] = cmp8;
    assign gt8[0] = cmp8 ? 0 : x[7] & ~y[7];


    compararBits ciclo7(x[6], y[6], cmp7);
    assign gt7[1] = cmp7;
    assign gt7[0] = gt8[1] ? cmp7 ? 0 : x[6] & ~y[6] : gt8[0];


    compararBits ciclo6(x[5], y[5], cmp6);
    assign gt6[1] = cmp6;
    assign gt6[0] = gt7[1] ? cmp6 ? 0 : x[5] & ~y[5] : gt7[0];


    compararBits ciclo5(x[4], y[4], cmp5);
    assign gt5[1] = cmp5;
    assign gt5[0] = gt6[1] ? cmp5 ? 0 : x[4] & ~y[4] : gt6[0];


    compararBits ciclo4(x[3], y[3], cmp4);
    assign gt4[1] = cmp4;
    assign gt4[0] = gt5[1] ? cmp4 ? 0 : x[3] & ~y[3] : gt5[0];


    compararBits ciclo3(x[2], y[2], cmp3);
    assign gt3[1] = cmp3;
    assign gt3[0] = gt4[1] ? cmp3 ? 0 : x[2] & ~y[2] : gt4[0];


    compararBits ciclo2(x[1], y[1], cmp2);
    assign gt2[1] = cmp2;
    assign gt2[0] = gt3[1] ? cmp2 ? 0 : x[1] & ~y[1] : gt3[0];


    compararBits ciclo1(x[0], y[0], cmp1);
    assign gt1[1] = cmp1;
    assign gt1[0] = gt2[1] ? cmp1 ? 0 : x[0] & ~y[0] : gt2[0];

    assign equal = gt1[0];

endmodule



