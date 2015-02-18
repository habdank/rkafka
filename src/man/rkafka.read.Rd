\name{rkafka.read}
\alias{rkafka.read}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
KAFKA Consumer Reading
}
\description{
This function reads messages received by a KAFKA consumer
}
\usage{
rkafka.read(HighConsumerObj, topicName)
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
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Array Of Strings
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Shruti Gupta
}
\note{
Warning: Ensure to close the consumer after reading messages. Won't work correctly next time otherwise
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
consumer1=rkafka.startConsumer("127.0.0.1:2181")
print(rkafka.read(consumer1,"test"))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kafka}
\keyword{ ~consumer }
\keyword{ ~read}% __ONLY ONE__ keyword per line
