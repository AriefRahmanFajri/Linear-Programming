#Soal No.1
#Arief Rahman Fajri
#18523092
library(lpSolve)

f.obj <- c(3,9)

f.con <- matrix(c(1,3,
                  1,1,
                  1,-1),nrow=3,byrow=TRUE)

f.dir<- c("<=", ">=", "<=")

f.rhs <- c(60,10,0)

#final value (z)
lp("max",f.obj,f.con,f.dir,f.rhs)

#variable final value
lp("max",f.obj,f.con,f.dir,f.rhs)$solution

#Sensitivities
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$sens.coef.from
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$sens.coef.to

# Dual Values (first dual of the constraints and then dual of the variables)
# Duals of the constraints and variables are mixed
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$duals

# Duals lower and upper limits
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$duals.from
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$duals.to

################################# MINIMUM VALUES #################################

#final value (z)
lp("min",f.obj,f.con,f.dir,f.rhs)

#variable final value
lp("min",f.obj,f.con,f.dir,f.rhs)$solution

#Sensitivities
lp("min",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$sens.coef.from
lp("min",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$sens.coef.to

# Dual Values (first dual of the constraints and then dual of the variables)
# Duals of the constraints and variables are mixed
lp("min",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$duals

# Duals lower and upper limits
lp("min",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$duals.from
lp("min",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$duals.to
