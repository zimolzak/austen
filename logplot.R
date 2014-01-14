X = read.csv("~/Desktop/austen/linelengths.txt")
require(ggplot2)
X$Line_Length = X$X57
X$ln = log(X$X57)
qplot(Line_Length, data=X, xlab="Sentence length (characters)", log="x", ylab="Count")
