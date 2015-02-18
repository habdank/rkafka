\name{R package for KAFKA}
\alias{RKAFKA package}
\docType{package}
\title{
RKAFKA
}
\description{
It provides functionalities of creating a KAFKA producer and consumer, and sending and receiving messages.
}
\details{
\tabular{ll}{
Package: \tab rkafka\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-02-11\cr
License: \tab GPL-3\cr
}
~~ An overview of how to use the package, including the most important functions ~~
}
\author{
Shruti Gupta

Maintainer: Who to complain to shruti.gupta@mu-sigma.com

}
\references{
~~ Literature or other references for background information ~~
}

\keyword{ package }
\seealso{
~~ Optional links to other man pages, e.g. ~~
~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
}
\examples{
producer1=rkafka.startProducer("127.0.0.1:9092")
rkafka.send(producer1,"ind1","127.0.0.1:9092","this2")
rkafka.send(producer1,"ind1","127.0.0.1:9092","is21")
rkafka.closeProducer(producer1)
consumer1=rkafka.startConsumer("127.0.0.1:2181")
msgs=rkafka.read(consumer1,"ind1")
print(msgs)
rkafka.closeConsumer(consumer1)
}
