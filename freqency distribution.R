# The weights of a diamond and other precious stones are usually measured in carats.  One carat is traditionally equal to 200 milligrams.  A random sample of the weights(in carats) of conflict-free loose diamonds is as follows:
# 0.23	0.27	0.30	0.25	0.27	0.26	0.40	0.40
# 0.51	0.58	0.61	0.80	0.90	1.02	0.92	1.01
# 0.76	0.90	1.14	1.11	1.38	1.52	0.96	1.16
# 1.52	1.05	1.51	1.36	0.91	1.22	1.54	1.35
# 1.76	2.00	1.01	1.69	1.51	2.00	1.45	1.38
# a.) constuct a frequency distrtibution and a histogram for the data
# b.) multiply each ovservation in the table by 200, to convert the weights into milligrams.  Construct a frequency distribution and a histogram for the new transformed data.
# c.) compare the two histograms.  Are the shapes simlilar? Describe any differences.

x<-c(0.23,0.27,0.30,0.25,0.27,0.26,0.40,0.40,0.51,0.58,0.61,0.80,0.90,1.02,0.92,1.01,0.76,0.90,1.14,1.11,1.38,1.52,0.96,1.16,1.52,1.05,1.51,1.36,0.91,1.22,1.54,1.35,1.76,2.00,1.01,1.69,1.51,2.00,1.45,1.38)
range(x)
bin1<-seq(min(x),max(x),by=.25)
x.cut<- cut(x, bin1, right=FALSE)
x.freq<-table(x.cut)
data.frame(x.freq)
hist(x,breaks = 15)


y<-200*x
range(y)
bin2<-seq(min(y),max(y),by=25)
y.cut<- cut(y, bin2, right=FALSE)
y.freq<-table(y.cut)
data.frame(y.freq)
hist(y,breaks = 15)
