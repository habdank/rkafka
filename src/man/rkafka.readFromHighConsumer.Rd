\name{rkafka.readFromHighConsumer}
\alias{rkafka.readFromHighConsumer}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
KAFKA High Level Consumer Reading
}
\description{
This function reads messages received by a KAFKA High Level consumer
}
\usage{
rkafka.readFromHighConsumer(HighConsumerObj, topicName)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{HighConsumerObj}{
#  	  @param HighConsumerObj:Consumer through which messages are to be read(Java Object)	
}
  \item{topicName}{
#  	  @param topicName
#*            :The topic from which message is to be read
}
}
\details{
After this function is called, the consumer continuously reads messages until there are no new messages. Once it detects no new messages, it waits for 'x' ms(set by ConsumerTimeout property) for new messages. If no new messages come, the function finishes execution and returns an array of strings consisting of all the messages it read.
}
\value{
Array Of Strings
}
\references{
To know when to use simple consumer and when to use High-level Consumer, refer the link below:
\link{https://cwiki.apache.org/confluence/display/KAFKA/0.8.0+SimpleConsumer+Example}

To know how to use a high level consumer refer this:
\link{https://cwiki.apache.org/confluence/display/KAFKA/Consumer+Group+Example}
}
\author{
Shruti Gupta
}
\note{
Warning: Ensure to close the consumer after reading messages. Won't work correctly next time otherwise
}

%% ~Make other sections like Warning with \section{Warning }{....} ~


\examples{
consumer1=rkafka.createHighConsumer("127.0.0.1:2181")
print(rkafka.readFromHighConsumer(consumer1,"test"))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kafka}
\keyword{ ~high}
\keyword{ ~consumer }
\keyword{ ~read}% __ONLY ONE__ keyword per line
