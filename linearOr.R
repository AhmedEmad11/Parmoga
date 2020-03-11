library(lpSolve)

objective.in=c(40,50)

const.mat=matrix(c(2, 2, 3, 1, 1, 4),nrow = 3,byrow = T)

man.hour=60
mach.hour=75
wood=84

const.rhs=c(man.hour, mach.hour, wood)

const.dir=c("<=", "<=", "<=")

opt=lp(direction = "max", objective.in, const.mat, const.dir, const.rhs)

print(opt$solution)

print(opt$objval)