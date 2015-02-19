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

\value{
Doesn't return anything
}

\author{
Shruti Gupta
}

\examples{
producer1=rkafka.createProducer("127.0.0.1:9092")
rkafka.closeProducer(producer1)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kafka }
\keyword{ ~producer }% __ONLY ONE__ keyword per line
\keyword{ ~close }