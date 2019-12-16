#Arief Rahman Fajri
#Haris Riski Rakhman
#18523092
#18523113

############################################## Soal No. 1 ######################################
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

###################################### Soal No. 2 #######################################

# Set coefficients of the objective function
f.obj <- c(8000,12000)

# Set matrix corresponding to coefficients of constraints by rows
# Do not consider the non-negative constraint; it is automatically assumed
f.con <- matrix(c(9,12,
                  1,3),nrow=2,byrow=TRUE)

# Set unequality signs
f.dir <- c("<=",
           "<=")

# Set right hand side coefficients
f.rhs <- c(180,
           30)

# Final value (z)
lp("max",f.obj,f.con,f.dir,f.rhs)

# Variables final values
lp("max",f.obj,f.con,f.dir,f.rhs)$solution

# Sensitivities
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$sens.coef.from
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$sens.coef.to

# Dual Values (first dual of the constraints and then dual of the variables)
# Duals of the constraints and variables are mixed
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$duals

# Duals lower and upper limits
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$duals.from
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$duals.to

