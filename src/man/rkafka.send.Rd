\name{rkafka.send}
\alias{rkafka.send}
\alias{producer}
\alias{topicName}
\alias{ip}
\alias{message}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
KAFKA producer sending message
}
\description{
This function sends message to a particular name through a producer
}
\usage{
rkafka.send(producer, topicName, ip, message)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{producer}{
#     * @param producer:producer(Java object)
#   *            !!Mandatory: Producer through which messages are to be sent
}
  \item{topicName}{
* @param topicName:String
#   *            !!Mandatory: Topic to which messages are to be sent. If topicName doesn't exist, new topic is created
#   * 
}
  \item{ip}{
#     * @param ip:String
#   *            !!Mandatory: ip on which producer is running
}
  \item{message}{
#     * @param message:String
#   *            !!Mandatory: message to be sent
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Doesn't return a value
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Shruti Gupta
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
producer1=rkafka.startProducer("127.0.0.1:9092")
rkafka.send(producer1,"test","127.0.0.1:9092","Testing")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~KAFKA}
\keyword{ ~Producer }% __ONLY ONE__ keyword per line
\keyword{ ~Message sending }