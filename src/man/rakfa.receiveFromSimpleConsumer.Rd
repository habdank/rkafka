\name{rkafka.receiveFromSimpleConsumer}
\alias{rkafka.receiveFromSimpleConsumer}
\alias{SimpleConsumerObj}
\aias{topicName}
\alias{partition}
\alias{Offset}
\alias{msgReadSize}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
KAKFA Simple Consumer receiving messages
}
\description{
This function allows the KAKFA Simple Consumer to receive messages from a particular topic. However, this doesn't display the messages. To read the messages, use the rkafka.readFromSimpleConsumer function.
}
\usage{
rkafka.receiveFromSimpleConsumer(SimpleConsumerObj,topicName,partition,Offset,msgReadSize){
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{topicName}{
   *!!Mandatory(String)- topicName: Name of the topic from where to read messages
   }
\item{partition}
	{ *!!Mandatory(String)- partition: Partition Number}
\item{Offset}
	{} *!!Mandatory(String)- Offset :Offset Number}
\item{msgReadSize}
	 {*!!Mandatory(String)-msgReadSize : Size of the message to be read}
}
\details{
There are two types of KAFKA consumers:High-Level and Simple. This function receives messages using the Simple Consumer. Use caution on deciding to use the Simple Consumer as it doesn't persist offset.This function needs to be run before executing the rkafka.readFromSimpleConsumer function
}
\value{
Nothing
}
\references{To know when to use simple consumer and when to use High-level Consumer, refer the link below:
\link{https://cwiki.apache.org/confluence/display/KAFKA/0.8.0+SimpleConsumer+Example}
}
\author{
Shruti Gupta
}
\note{
Warning: Ensure to close the consumer after reading messages. Won't work correctly next time otherwise
}

\examples{
consumer1=rkafka.createSimpleConsumer("172.25.1.78","9092","10000","100000","test")
rkafka.receiveFromSimpleConsumer(consumer1,"test","0","0","test-group")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kafka}
\keyword{ ~simple}
\keyword{ ~consumer }

