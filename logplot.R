require(ggplot2)

X = read.csv("~/Desktop/austen/linelengths.txt")
X$Line_Length = X$X57
X$ln = log(X$X57)
qplot(Line_Length, data=X, xlab="Sentence length (characters)", log="x", ylab="Count")

S= read.csv("~/Desktop/austen/sense.txt")
P= read.csv("~/Desktop/austen/pride.txt")
M= read.csv("~/Desktop/austen/mans.txt")
E= read.csv("~/Desktop/austen/emma.txt")
Pe= read.csv("~/Desktop/austen/pers.txt")
N= read.csv("~/Desktop/austen/north.txt")

qplot(len, data=All)

ggplot(All, aes(x=len, fill=book)) + geom_bar() + scale_x_log10() #stacked
ggplot(All, aes(len, colour=book)) + geom_density() + scale_x_log10() # nice
ggplot(All, aes(y=len, x=book)) + geom_boxplot() + scale_y_log10() # fullscale box, log
ggplot(All, aes(y=len, x=book)) + geom_boxplot() + ylim(0,150) # zoomed in box, linear

#next step is to log transform it and do a T test!
