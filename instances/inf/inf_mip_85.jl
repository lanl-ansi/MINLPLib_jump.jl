using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104]
@variable(m, x[x_Idx])
b_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64]
@variable(m, b[b_Idx], Bin)
setlowerbound(x[85], 0.0)
setlowerbound(x[101], 0.0)
setlowerbound(x[89], 0.0)
setlowerbound(x[93], 0.0)
setlowerbound(x[78], 0.0)
setlowerbound(x[91], 0.0)
setlowerbound(x[77], 0.0)
setlowerbound(x[74], 0.0)
setlowerbound(x[92], 0.0)
setlowerbound(x[100], 0.0)
setlowerbound(x[69], 0.0)
setlowerbound(x[81], 0.0)
setlowerbound(x[71], 0.0)
setlowerbound(x[96], 0.0)
setlowerbound(x[87], 0.0)
setlowerbound(x[88], 0.0)
setlowerbound(x[94], 0.0)
setlowerbound(x[82], 0.0)
setlowerbound(x[104], 0.0)
setlowerbound(x[72], 0.0)
setlowerbound(x[80], 0.0)
setlowerbound(x[67], 0.0)
setlowerbound(x[86], 0.0)
setlowerbound(x[79], 0.0)
setlowerbound(x[103], 0.0)
setlowerbound(x[66], 0.0)
setlowerbound(x[75], 0.0)
setlowerbound(x[95], 0.0)
setlowerbound(x[98], 0.0)
setlowerbound(x[90], 0.0)
setlowerbound(x[68], 0.0)
setlowerbound(x[99], 0.0)
setlowerbound(x[97], 0.0)
setlowerbound(x[84], 0.0)
setlowerbound(x[73], 0.0)
setlowerbound(x[70], 0.0)
setlowerbound(x[83], 0.0)
setlowerbound(x[102], 0.0)
setlowerbound(x[65], 0.0)
setlowerbound(x[76], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-18.09*b[2]-18.09*b[3]-18.09*b[4]-20.07*b[5]-20.07*b[6]-20.07*b[7]-19.29*b[8]-19.29*b[9]-19.29*b[10]-17.05*b[11]-17.05*b[12]-17.05*b[13]-17.99*b[14]-17.99*b[15]-17.99*b[16]-16.79*b[17]-16.79*b[18]-16.79*b[19]-19.29*b[20]-19.29*b[21]-19.29*b[22]-16.79*b[23]-16.79*b[24]-16.79*b[25]-16.95*b[26]-16.79*b[27]-16.79*b[28]-17.68*b[29]-17.68*b[30]-17.68*b[31]-18.77*b[32]-18.77*b[33]-18.77*b[34]-18.77*b[35]-18.77*b[36]-18.77*b[37]-17.11*b[38]-17.11*b[39]-17.11*b[40]-17*b[41]-17*b[42]-17*b[43]-18.51*b[44]-18.51*b[45]-18.51*b[46]-17.31*b[47]-17.21*b[48]-17.26*b[49]-17.16*b[50]-17.16*b[51]-17.16*b[52]-18.77*b[53]-18.77*b[54]-18.77*b[55]-18.77*b[56]-18.77*b[57]-18.77*b[58]-16.69*b[59]-16.69*b[60]-16.69*b[61]-19.81*b[62]-19.81*b[63]-19.81*b[64]-0.13*x[65]-0.13*x[66]-0.13*x[67]-0.13*x[68]-0.13*x[69]-0.13*x[70]-0.13*x[71]-0.13*x[72]-0.13*x[73]-0.13*x[74]-0.13*x[75]-0.13*x[76]-0.13*x[77]-0.13*x[78]-0.13*x[79]-0.13*x[80]-0.13*x[81]-0.13*x[82]-0.13*x[83]-0.13*x[84] == 0.0)
@constraint(m, e2, b[2]+b[3]+b[4] == 1.0)
@constraint(m, e3, b[2]-b[5] == 0.0)
@constraint(m, e4, b[3]-b[6] == 0.0)
@constraint(m, e5, b[4]-b[7] == 0.0)
@constraint(m, e6, b[5]-b[8] == 0.0)
@constraint(m, e7, b[6]-b[9] == 0.0)
@constraint(m, e8, b[7]-b[10] == 0.0)
@constraint(m, e9, b[8]-b[11] == 0.0)
@constraint(m, e10, b[9]-b[12] == 0.0)
@constraint(m, e11, b[10]-b[13] == 0.0)
@constraint(m, e12, b[11]-b[14] == 0.0)
@constraint(m, e13, b[12]-b[15] == 0.0)
@constraint(m, e14, b[13]-b[16] == 0.0)
@constraint(m, e15, b[14]-b[17] == 0.0)
@constraint(m, e16, b[15]-b[18] == 0.0)
@constraint(m, e17, b[16]-b[19] == 0.0)
@constraint(m, e18, b[17]-b[20] == 0.0)
@constraint(m, e19, b[18]-b[21] == 0.0)
@constraint(m, e20, b[19]-b[22] == 0.0)
@constraint(m, e21, b[20]-b[23] == 0.0)
@constraint(m, e22, b[21]-b[24] == 0.0)
@constraint(m, e23, b[22]-b[25] == 0.0)
@constraint(m, e24, b[23]-b[26] == 0.0)
@constraint(m, e25, b[24]-b[27] == 0.0)
@constraint(m, e26, b[25]-b[28] == 0.0)
@constraint(m, e27, b[26]-b[29] == 0.0)
@constraint(m, e28, b[27]-b[30] == 0.0)
@constraint(m, e29, b[28]-b[31] == 0.0)
@constraint(m, e30, b[29]-b[32] == 0.0)
@constraint(m, e31, b[30]-b[33] == 0.0)
@constraint(m, e32, b[31]-b[34] == 0.0)
@constraint(m, e33, b[32]-b[35] == 0.0)
@constraint(m, e34, b[33]-b[36] == 0.0)
@constraint(m, e35, b[34]-b[37] == 0.0)
@constraint(m, e36, b[35]-b[38] == 0.0)
@constraint(m, e37, b[36]-b[39] == 0.0)
@constraint(m, e38, b[37]-b[40] == 0.0)
@constraint(m, e39, b[38]-b[41] == 0.0)
@constraint(m, e40, b[39]-b[42] == 0.0)
@constraint(m, e41, b[40]-b[43] == 0.0)
@constraint(m, e42, b[41]-b[44] == 0.0)
@constraint(m, e43, b[42]-b[45] == 0.0)
@constraint(m, e44, b[43]-b[46] == 0.0)
@constraint(m, e45, b[44]-b[47] == 0.0)
@constraint(m, e46, b[45]-b[48] == 0.0)
@constraint(m, e47, b[46]-b[49] == 0.0)
@constraint(m, e48, b[47]-b[50] == 0.0)
@constraint(m, e49, b[48]-b[51] == 0.0)
@constraint(m, e50, b[49]-b[52] == 0.0)
@constraint(m, e51, b[50]-b[53] == 0.0)
@constraint(m, e52, b[51]-b[54] == 0.0)
@constraint(m, e53, b[52]-b[55] == 0.0)
@constraint(m, e54, b[53]-b[56] == 0.0)
@constraint(m, e55, b[54]-b[57] == 0.0)
@constraint(m, e56, b[55]-b[58] == 0.0)
@constraint(m, e57, b[56]-b[59] == 0.0)
@constraint(m, e58, b[57]-b[60] == 0.0)
@constraint(m, e59, b[58]-b[61] == 0.0)
@constraint(m, e60, b[59]-b[62] == 0.0)
@constraint(m, e61, b[60]-b[63] == 0.0)
@constraint(m, e62, b[61]-b[64] == 0.0)
@constraint(m, e63, b[2] == 1.0)
@constraint(m, e64, b[3] == 1.0)
@constraint(m, e65, b[4] == 1.0)
@constraint(m, e66, 2*b[5]+b[8]+b[11]+2*b[14]+b[17]+b[20]+2*b[23]+3*b[26]+3*b[29]+b[32]+b[35]+b[38]+2*b[41]+3*b[44]+2*b[47]+b[50]+2*b[53]+b[56]+2*b[59]+3*b[62] <= 35.0)
@constraint(m, e67, 2*b[6]+b[9]+b[12]+2*b[15]+b[18]+b[21]+2*b[24]+3*b[27]+3*b[30]+b[33]+b[36]+b[39]+2*b[42]+3*b[45]+2*b[48]+b[51]+2*b[54]+b[57]+2*b[60]+3*b[63] <= 35.0)
@constraint(m, e68, 2*b[7]+b[10]+b[13]+2*b[16]+b[19]+b[22]+2*b[25]+3*b[28]+3*b[31]+b[34]+b[37]+b[40]+2*b[43]+3*b[46]+2*b[49]+b[52]+2*b[55]+b[58]+2*b[61]+3*b[64] <= 35.0)
@constraint(m, e69, -x[65]+x[85] <= 53.0)
@constraint(m, e70, -x[66]+x[86] <= 58.0)
@constraint(m, e71, -x[67]+x[87] <= 61.0)
@constraint(m, e72, -x[68]+x[88] <= 4.0)
@constraint(m, e73, -x[69]+x[89] <= 8.0)
@constraint(m, e74, -x[70]+x[90] <= 14.0)
@constraint(m, e75, -x[71]+x[91] <= 17.0)
@constraint(m, e76, -x[72]+x[92] <= 22.0)
@constraint(m, e77, -x[73]+x[93] <= 26.0)
@constraint(m, e78, -x[74]+x[94] <= 29.0)
@constraint(m, e79, -x[75]+x[95] <= 33.0)
@constraint(m, e80, -x[76]+x[96] <= 36.0)
@constraint(m, e81, -x[77]+x[97] <= 41.0)
@constraint(m, e82, -x[78]+x[98] <= 45.0)
@constraint(m, e83, -x[79]+x[99] <= 48.0)
@constraint(m, e84, -x[80]+x[100] <= 54.0)
@constraint(m, e85, -x[81]+x[101] <= 59.0)
@constraint(m, e86, -x[82]+x[102] <= 3.0)
@constraint(m, e87, -x[83]+x[103] <= 6.0)
@constraint(m, e88, -x[84]+x[104] <= 13.0)
@constraint(m, e89, x[85] >= 51.0)
@constraint(m, e90, x[86] >= 56.0)
@constraint(m, e91, x[87] >= 59.0)
@constraint(m, e92, x[88] >= 2.0)
@constraint(m, e93, x[89] >= 6.0)
@constraint(m, e94, x[90] >= 12.0)
@constraint(m, e95, x[91] >= 15.0)
@constraint(m, e96, x[92] >= 20.0)
@constraint(m, e97, x[93] >= 24.0)
@constraint(m, e98, x[94] >= 27.0)
@constraint(m, e99, x[95] >= 31.0)
@constraint(m, e100, x[96] >= 34.0)
@constraint(m, e101, x[97] >= 39.0)
@constraint(m, e102, x[98] >= 43.0)
@constraint(m, e103, x[99] >= 46.0)
@constraint(m, e104, x[100] >= 52.0)
@constraint(m, e105, x[101] >= 57.0)
@constraint(m, e106, x[102] >= 1.0)
@constraint(m, e107, x[103] >= 4.0)
@constraint(m, e108, x[104] >= 11.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
