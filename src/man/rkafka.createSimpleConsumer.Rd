\name{rkafka.createSimpleConsumer}
\alias{rkafka.createSimpleConsumer}
\alias{kafkaServerURL}
\alias{kafkaServerPort}
\alias{connectionTimeOut}
\alias{kafkaProducerBufferSize}
\alias{clientId}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Creating simple KAFKA consumer
}
\description{
This function creates a simple KAFKA consumer
}
\usage{
rkafka.createSimpleConsumer(kafkaServerURL, kafkaServerPort,connectionTimeOut, kafkaProducerBufferSize, clientId)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{kafkaServerURL}{
!!Mandatory(String):URL of the KAFKA server
}
  \item{kafkaServerPort}{
!!Mandatory(String):Port number of the KAFKA server
}
  \item{connectionTimeOut}{
!!Mandatory(String):Connection Timeout in ms
}
 \item{kafkaProducerBufferSize}{
!!Mandatory(String):Buffer size
}
  \item{clientID}{
!!Mandatory(String):ID of the client
}
 
\details{
There are two types of KAFKA consumers:High-Level and Simple. This function creates the Simple Consumer. Use caution on deciding to use the Simple Consumer as it doesn't persist offset.

}
\value{
Doesn't return anything
}
\references{
To know when to use simple consumer and when to use High-level Consumer, refer the link below:
\link{https://cwiki.apache.org/confluence/display/KAFKA/0.8.0+SimpleConsumer+Example}
}
\author{
Shruti Gupta
}
\note{
Warning: Ensure to run the rkafka.receiveFromSimpleConsumer() function before executing the rkafka.runFromSimpleConsumer() function
}

\examples{
consumer1=rkafka.createSimpleConsumer("172.25.1.78","9092","10000","100000","test")

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kafka }
\keyword{ ~simple }
\keyword{ ~consumer }
\keyword{ ~create}% __ONLY ONE__ keyword per line
