\name{rkafka.closeProducer}
\alias{rkafka.closeProducer}
\alias{producerObj}
\title{
KAFKA producer shutdown
}
\description{
This function closes the KAFKA producer
}
\usage{
rkafka.closeProducer(producerObj)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{producerObj}{
#     * @param producerObj:producerObj(Java object)
#   *            !!Mandatory: Producer which is to be terminated
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Doesn't return anything
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
rkafka.closeProducer(producer1)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kafka }
\keyword{ ~producer }% __ONLY ONE__ keyword per line
\keyword{ ~close }