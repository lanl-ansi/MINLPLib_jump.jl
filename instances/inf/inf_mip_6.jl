using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
@variable(m, x[x_Idx])
b_Idx = Any[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97]
@variable(m, b[b_Idx], Bin)
setlowerbound(x[16], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[15], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-x[2]-2*x[3]-4*x[4]-8*x[5]-16*x[6]-32*x[7]-x[8]-2*x[9]-4*x[10]-8*x[11]-16*x[12]-32*x[13]-x[14]-2*x[15]-4*x[16]-8*x[17]-16*x[18]-32*x[19]-x[20]-2*x[21]-4*x[22]-8*x[23]-16*x[24]-32*x[25] == 7986.0)
@constraint(m, e2, -x[2]+x[8] >= 3.0)
@constraint(m, e3, -x[3]+x[9] >= 16.0)
@constraint(m, e4, -x[4]+x[10] >= 50.0)
@constraint(m, e5, -x[5]+x[11] >= 100.0)
@constraint(m, e6, -x[6]+x[12] >= 20.0)
@constraint(m, e7, -x[7]+x[13] >= 34.0)
@constraint(m, e8, -x[8]+x[14] >= 5.0)
@constraint(m, e9, -x[9]+x[15] >= 15.0)
@constraint(m, e10, -x[10]+x[16] >= 20.0)
@constraint(m, e11, -x[11]+x[17] >= 130.0)
@constraint(m, e12, -x[12]+x[18] >= 23.0)
@constraint(m, e13, -x[13]+x[19] >= 30.0)
@constraint(m, e14, -x[14]+x[20] >= 7.0)
@constraint(m, e15, -x[15]+x[21] >= 14.0)
@constraint(m, e16, -x[16]+x[22] >= 10.0)
@constraint(m, e17, -x[17]+x[23] >= 10.0)
@constraint(m, e18, -x[18]+x[24] >= 20.0)
@constraint(m, e19, -x[19]+x[25] >= 21.0)
@constraint(m, e20, -x[20] >= 3.0)
@constraint(m, e21, -x[21] >= 15.0)
@constraint(m, e22, -x[22] >= 30.0)
@constraint(m, e23, -x[23] >= 110.0)
@constraint(m, e24, -x[24] >= 19.0)
@constraint(m, e25, -x[25] >= 18.0)
@constraint(m, e26, b[26]+b[44] == 1.0)
@constraint(m, e27, b[27]+b[45] == 1.0)
@constraint(m, e28, b[28]+b[46] == 1.0)
@constraint(m, e29, b[29]+b[47] == 1.0)
@constraint(m, e30, b[30]+b[48] == 1.0)
@constraint(m, e31, b[31]+b[49] == 1.0)
@constraint(m, e32, b[32]+b[62] == 1.0)
@constraint(m, e33, b[33]+b[63] == 1.0)
@constraint(m, e34, b[34]+b[64] == 1.0)
@constraint(m, e35, b[35]+b[65] == 1.0)
@constraint(m, e36, b[36]+b[66] == 1.0)
@constraint(m, e37, b[37]+b[67] == 1.0)
@constraint(m, e38, b[38]+b[80] == 1.0)
@constraint(m, e39, b[39]+b[81] == 1.0)
@constraint(m, e40, b[40]+b[82] == 1.0)
@constraint(m, e41, b[41]+b[83] == 1.0)
@constraint(m, e42, b[42]+b[84] == 1.0)
@constraint(m, e43, b[43]+b[85] == 1.0)
@constraint(m, e44, b[26]+b[44] == 1.0)
@constraint(m, e45, b[27]+b[45] == 1.0)
@constraint(m, e46, b[28]+b[46] == 1.0)
@constraint(m, e47, b[29]+b[47] == 1.0)
@constraint(m, e48, b[30]+b[48] == 1.0)
@constraint(m, e49, b[31]+b[49] == 1.0)
@constraint(m, e50, b[50]+b[68] == 1.0)
@constraint(m, e51, b[51]+b[69] == 1.0)
@constraint(m, e52, b[52]+b[70] == 1.0)
@constraint(m, e53, b[53]+b[71] == 1.0)
@constraint(m, e54, b[54]+b[72] == 1.0)
@constraint(m, e55, b[55]+b[73] == 1.0)
@constraint(m, e56, b[56]+b[86] == 1.0)
@constraint(m, e57, b[57]+b[87] == 1.0)
@constraint(m, e58, b[58]+b[88] == 1.0)
@constraint(m, e59, b[59]+b[89] == 1.0)
@constraint(m, e60, b[60]+b[90] == 1.0)
@constraint(m, e61, b[61]+b[91] == 1.0)
@constraint(m, e62, b[32]+b[62] == 1.0)
@constraint(m, e63, b[33]+b[63] == 1.0)
@constraint(m, e64, b[34]+b[64] == 1.0)
@constraint(m, e65, b[35]+b[65] == 1.0)
@constraint(m, e66, b[36]+b[66] == 1.0)
@constraint(m, e67, b[37]+b[67] == 1.0)
@constraint(m, e68, b[50]+b[68] == 1.0)
@constraint(m, e69, b[51]+b[69] == 1.0)
@constraint(m, e70, b[52]+b[70] == 1.0)
@constraint(m, e71, b[53]+b[71] == 1.0)
@constraint(m, e72, b[54]+b[72] == 1.0)
@constraint(m, e73, b[55]+b[73] == 1.0)
@constraint(m, e74, b[74]+b[92] == 1.0)
@constraint(m, e75, b[75]+b[93] == 1.0)
@constraint(m, e76, b[76]+b[94] == 1.0)
@constraint(m, e77, b[77]+b[95] == 1.0)
@constraint(m, e78, b[78]+b[96] == 1.0)
@constraint(m, e79, b[79]+b[97] == 1.0)
@constraint(m, e80, b[38]+b[80] == 1.0)
@constraint(m, e81, b[39]+b[81] == 1.0)
@constraint(m, e82, b[40]+b[82] == 1.0)
@constraint(m, e83, b[41]+b[83] == 1.0)
@constraint(m, e84, b[42]+b[84] == 1.0)
@constraint(m, e85, b[43]+b[85] == 1.0)
@constraint(m, e86, b[56]+b[86] == 1.0)
@constraint(m, e87, b[57]+b[87] == 1.0)
@constraint(m, e88, b[58]+b[88] == 1.0)
@constraint(m, e89, b[59]+b[89] == 1.0)
@constraint(m, e90, b[60]+b[90] == 1.0)
@constraint(m, e91, b[61]+b[91] == 1.0)
@constraint(m, e92, b[74]+b[92] == 1.0)
@constraint(m, e93, b[75]+b[93] == 1.0)
@constraint(m, e94, b[76]+b[94] == 1.0)
@constraint(m, e95, b[77]+b[95] == 1.0)
@constraint(m, e96, b[78]+b[96] == 1.0)
@constraint(m, e97, b[79]+b[97] == 1.0)
@constraint(m, e98, -x[2]+x[8]-99999999*b[26] >= -9.9999996e7)
@constraint(m, e99, -x[3]+x[9]-99999999*b[27] >= -9.9999983e7)
@constraint(m, e100, -x[4]+x[10]-99999999*b[28] >= -9.9999949e7)
@constraint(m, e101, -x[5]+x[11]-99999999*b[29] >= -9.9999899e7)
@constraint(m, e102, -x[6]+x[12]-99999999*b[30] >= -9.9999979e7)
@constraint(m, e103, -x[7]+x[13]-99999999*b[31] >= -9.9999965e7)
@constraint(m, e104, -x[2]+x[14]-99999999*b[32] >= -9.9999996e7)
@constraint(m, e105, -x[3]+x[15]-99999999*b[33] >= -9.9999983e7)
@constraint(m, e106, -x[4]+x[16]-99999999*b[34] >= -9.9999949e7)
@constraint(m, e107, -x[5]+x[17]-99999999*b[35] >= -9.9999899e7)
@constraint(m, e108, -x[6]+x[18]-99999999*b[36] >= -9.9999979e7)
@constraint(m, e109, -x[7]+x[19]-99999999*b[37] >= -9.9999965e7)
@constraint(m, e110, -x[2]+x[20]-99999999*b[38] >= -9.9999996e7)
@constraint(m, e111, -x[3]+x[21]-99999999*b[39] >= -9.9999983e7)
@constraint(m, e112, -x[4]+x[22]-99999999*b[40] >= -9.9999949e7)
@constraint(m, e113, -x[5]+x[23]-99999999*b[41] >= -9.9999899e7)
@constraint(m, e114, -x[6]+x[24]-99999999*b[42] >= -9.9999979e7)
@constraint(m, e115, -x[7]+x[25]-99999999*b[43] >= -9.9999965e7)
@constraint(m, e116, x[2]-x[8]-99999999*b[44] >= -9.9999994e7)
@constraint(m, e117, x[3]-x[9]-99999999*b[45] >= -9.9999984e7)
@constraint(m, e118, x[4]-x[10]-99999999*b[46] >= -9.9999979e7)
@constraint(m, e119, x[5]-x[11]-99999999*b[47] >= -9.9999869e7)
@constraint(m, e120, x[6]-x[12]-99999999*b[48] >= -9.9999976e7)
@constraint(m, e121, x[7]-x[13]-99999999*b[49] >= -9.9999969e7)
@constraint(m, e122, -x[8]+x[14]-99999999*b[50] >= -9.9999994e7)
@constraint(m, e123, -x[9]+x[15]-99999999*b[51] >= -9.9999984e7)
@constraint(m, e124, -x[10]+x[16]-99999999*b[52] >= -9.9999979e7)
@constraint(m, e125, -x[11]+x[17]-99999999*b[53] >= -9.9999869e7)
@constraint(m, e126, -x[12]+x[18]-99999999*b[54] >= -9.9999976e7)
@constraint(m, e127, -x[13]+x[19]-99999999*b[55] >= -9.9999969e7)
@constraint(m, e128, -x[8]+x[20]-99999999*b[56] >= -9.9999994e7)
@constraint(m, e129, -x[9]+x[21]-99999999*b[57] >= -9.9999984e7)
@constraint(m, e130, -x[10]+x[22]-99999999*b[58] >= -9.9999979e7)
@constraint(m, e131, -x[11]+x[23]-99999999*b[59] >= -9.9999869e7)
@constraint(m, e132, -x[12]+x[24]-99999999*b[60] >= -9.9999976e7)
@constraint(m, e133, -x[13]+x[25]-99999999*b[61] >= -9.9999969e7)
@constraint(m, e134, x[2]-x[14]-99999999*b[62] >= -9.9999992e7)
@constraint(m, e135, x[3]-x[15]-99999999*b[63] >= -9.9999985e7)
@constraint(m, e136, x[4]-x[16]-99999999*b[64] >= -9.9999989e7)
@constraint(m, e137, x[5]-x[17]-99999999*b[65] >= -9.9999989e7)
@constraint(m, e138, x[6]-x[18]-99999999*b[66] >= -9.9999979e7)
@constraint(m, e139, x[7]-x[19]-99999999*b[67] >= -9.9999978e7)
@constraint(m, e140, x[8]-x[14]-99999999*b[68] >= -9.9999992e7)
@constraint(m, e141, x[9]-x[15]-99999999*b[69] >= -9.9999985e7)
@constraint(m, e142, x[10]-x[16]-99999999*b[70] >= -9.9999989e7)
@constraint(m, e143, x[11]-x[17]-99999999*b[71] >= -9.9999989e7)
@constraint(m, e144, x[12]-x[18]-99999999*b[72] >= -9.9999979e7)
@constraint(m, e145, x[13]-x[19]-99999999*b[73] >= -9.9999978e7)
@constraint(m, e146, -x[14]+x[20]-99999999*b[74] >= -9.9999992e7)
@constraint(m, e147, -x[15]+x[21]-99999999*b[75] >= -9.9999985e7)
@constraint(m, e148, -x[16]+x[22]-99999999*b[76] >= -9.9999989e7)
@constraint(m, e149, -x[17]+x[23]-99999999*b[77] >= -9.9999989e7)
@constraint(m, e150, -x[18]+x[24]-99999999*b[78] >= -9.9999979e7)
@constraint(m, e151, -x[19]+x[25]-99999999*b[79] >= -9.9999978e7)
@constraint(m, e152, x[2]-x[20]-99999999*b[80] >= -9.9999996e7)
@constraint(m, e153, x[3]-x[21]-99999999*b[81] >= -9.9999984e7)
@constraint(m, e154, x[4]-x[22]-99999999*b[82] >= -9.9999969e7)
@constraint(m, e155, x[5]-x[23]-99999999*b[83] >= -9.9999889e7)
@constraint(m, e156, x[6]-x[24]-99999999*b[84] >= -9.999998e7)
@constraint(m, e157, x[7]-x[25]-99999999*b[85] >= -9.9999981e7)
@constraint(m, e158, x[8]-x[20]-99999999*b[86] >= -9.9999996e7)
@constraint(m, e159, x[9]-x[21]-99999999*b[87] >= -9.9999984e7)
@constraint(m, e160, x[10]-x[22]-99999999*b[88] >= -9.9999969e7)
@constraint(m, e161, x[11]-x[23]-99999999*b[89] >= -9.9999889e7)
@constraint(m, e162, x[12]-x[24]-99999999*b[90] >= -9.999998e7)
@constraint(m, e163, x[13]-x[25]-99999999*b[91] >= -9.9999981e7)
@constraint(m, e164, x[14]-x[20]-99999999*b[92] >= -9.9999996e7)
@constraint(m, e165, x[15]-x[21]-99999999*b[93] >= -9.9999984e7)
@constraint(m, e166, x[16]-x[22]-99999999*b[94] >= -9.9999969e7)
@constraint(m, e167, x[17]-x[23]-99999999*b[95] >= -9.9999889e7)
@constraint(m, e168, x[18]-x[24]-99999999*b[96] >= -9.999998e7)
@constraint(m, e169, x[19]-x[25]-99999999*b[97] >= -9.9999981e7)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
