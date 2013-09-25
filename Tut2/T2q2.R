data = read.table("t2q2.txt",header=TRUE)
attach(data)
model = lm(y ~ x1+x2)
summary(model)