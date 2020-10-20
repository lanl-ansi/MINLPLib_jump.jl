using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27]
@variable(m, x[x_Idx])
b_Idx = Any[28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53]
@variable(m, b[b_Idx], Bin)
setlowerbound(x[16], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[27], 0.0)
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
setlowerbound(x[26], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[15], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(log(1+b[28]*x[2])-0.2*b[28]*x[2]+log(1+b[29]*x[3])-0.2*b[29]*x[3]+log(1+b[30]*x[4])-0.2*b[30]*x[4]+log(1+b[31]*x[5])-0.2*b[31]*x[5]+log(1+b[32]*x[6])-0.2*b[32]*x[6]+log(1+b[33]*x[7])-0.2*b[33]*x[7]+log(1+b[34]*x[8])-0.2*b[34]*x[8]+log(1+b[35]*x[9])+log(1+b[36]*x[10])+log(1+b[37]*x[11])+log(1+b[38]*x[12])+log(1+b[39]*x[13])+log(1+b[40]*x[14])+log(1+b[41]*x[15])+log(1+b[42]*x[16])+log(1+b[43]*x[17])+log(1+b[44]*x[18])+log(1+b[45]*x[19])+log(1+b[46]*x[20])+log(1+b[47]*x[21])+log(1+b[48]*x[22])-0.4*b[48]*x[22]+log(1+b[49]*x[23])-0.4*b[49]*x[23]+log(1+b[50]*x[24])-0.4*b[50]*x[24]+log(1+b[51]*x[25])-0.4*b[51]*x[25]+log(1+b[52]*x[26])-0.4*b[52]*x[26]+log(1+b[53]*x[27])-0.4*b[53]*x[27])+x[1] == 0.0)
@NLconstraint(m, e2, b[28]*x[2]+b[29]*x[3]+b[30]*x[4]+b[31]*x[5]+b[32]*x[6]+b[33]*x[7]+b[34]*x[8]+b[35]*x[9]+b[36]*x[10]+b[37]*x[11]+b[38]*x[12]+b[39]*x[13]+b[40]*x[14] <= 4.0)
@NLconstraint(m, e3, b[41]*x[15]+b[42]*x[16]+b[43]*x[17]+b[44]*x[18]+b[45]*x[19]+b[46]*x[20]+b[47]*x[21]+b[48]*x[22]+b[49]*x[23]+b[50]*x[24]+b[51]*x[25]+b[52]*x[26]+b[53]*x[27] <= 1.248)
@NLconstraint(m, e4, b[28]*x[2]+b[41]*x[15] <= 0.512)
@NLconstraint(m, e5, b[29]*x[3]+b[42]*x[16] <= 0.512)
@NLconstraint(m, e6, b[30]*x[4]+b[43]*x[17] <= 0.512)
@NLconstraint(m, e7, b[31]*x[5]+b[44]*x[18] <= 0.128)
@NLconstraint(m, e8, b[32]*x[6]+b[45]*x[19] <= 0.128)
@NLconstraint(m, e9, b[33]*x[7]+b[46]*x[20] <= 0.128)
@NLconstraint(m, e10, b[34]*x[8]+b[47]*x[21] <= 0.128)
@NLconstraint(m, e11, b[35]*x[9]+b[48]*x[22] <= 0.128)
@NLconstraint(m, e12, b[36]*x[10]+b[49]*x[23] <= 0.128)
@NLconstraint(m, e13, b[37]*x[11]+b[50]*x[24] <= 0.128)
@NLconstraint(m, e14, b[38]*x[12]+b[51]*x[25] <= 0.128)
@NLconstraint(m, e15, b[39]*x[13]+b[52]*x[26] <= 0.128)
@NLconstraint(m, e16, b[40]*x[14]+b[53]*x[27] <= 0.128)
@NLconstraint(m, e17, b[28]*x[2]+b[41]*x[15] >= 0.256)
@NLconstraint(m, e18, b[29]*x[3]+b[42]*x[16] >= 0.256)
@NLconstraint(m, e19, b[30]*x[4]+b[43]*x[17] >= 0.256)
@NLconstraint(m, e20, b[31]*x[5]+b[44]*x[18] >= 0.256)
@NLconstraint(m, e21, b[32]*x[6]+b[45]*x[19] >= 0.64)
@NLconstraint(m, e22, b[33]*x[7]+b[46]*x[20] >= 0.064)
@NLconstraint(m, e23, b[34]*x[8]+b[47]*x[21] >= 0.064)
@NLconstraint(m, e24, b[35]*x[9]+b[48]*x[22] >= 0.064)
@NLconstraint(m, e25, b[36]*x[10]+b[49]*x[23] >= 0.064)
@NLconstraint(m, e26, b[37]*x[11]+b[50]*x[24] >= 0.064)
@NLconstraint(m, e27, b[38]*x[12]+b[51]*x[25] >= 0.064)
@NLconstraint(m, e28, b[39]*x[13]+b[52]*x[26] >= 0.064)
@NLconstraint(m, e29, b[40]*x[14]+b[53]*x[27] >= 0.064)
@constraint(m, e30, b[28] == 1.0)
@constraint(m, e31, b[29] == 1.0)
@constraint(m, e32, b[30] == 1.0)
@constraint(m, e33, b[41] == 1.0)
@constraint(m, e34, b[42] == 1.0)
@constraint(m, e35, b[43] == 1.0)
@constraint(m, e36, b[31]+b[44] == 1.0)
@constraint(m, e37, b[32]+b[45] == 1.0)
@constraint(m, e38, b[33]+b[46] == 1.0)
@constraint(m, e39, b[34]+b[47] == 1.0)
@constraint(m, e40, b[35]+b[48] == 1.0)
@constraint(m, e41, b[36]+b[49] == 1.0)
@constraint(m, e42, b[37]+b[50] == 1.0)
@constraint(m, e43, b[38]+b[51] == 1.0)
@constraint(m, e44, b[39]+b[52] == 1.0)
@constraint(m, e45, b[40]+b[53] == 1.0)


# ----- Objective ----- #
@objective(m, Max, x[1])

m = m 		 # model get returned when including this script. 
