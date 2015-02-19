\name{R package for KAFKA}
\alias{RKAFKA package}
\docType{package}
\title{
RKAFKA
}
\description{
It provides functionalities of creating a KAFKA producer, simple consumer,high level consumer and sending and receiving messages.
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
To understand KAFKA
\link{kafka.apache.org/documentation.html}

}

\keyword{ package }

\examples{
prod1=rkafka.createProducer("127.0.0.1:9092")

rkafka.send(prod1,"test","127.0.0.1:9092","Testing once")
rkafka.send(prod1,"test","127.0.0.1:9092","Testing twice")
rkafka.send(prod1,"test","127.0.0.1:9092","Testing thrice")

rkafka.closeProducer(prod1)

cons1=rkafka.createSimpleConsumer("127.0.0.1","9092","100000","100000","test-client")

rkafka.receiveFromSimpleConsumer(cons1,"test","0","0","100000")

msg1=rkafka.readFromSimpleConsumer(cons1)
msg2=rkafka.readFromSimpleConsumer(cons1)
msg3=rkafka.readFromSimpleConsumer(cons1)

print(msg1)
print(msg2)
print(msg3)
}
