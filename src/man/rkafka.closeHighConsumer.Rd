\name{rkafka.closeHighConsumer}
\alias{rkafka.closeHighConsumer}
\alias{HighConsumerObj}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Closing KAKFA consumer
}
\description{
This functions shuts down the KAFKA consumer
}
\usage{
rkafka.closeHighConsumer(HighConsumerObj)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{HighConsumerObj}{
#  	  @param HighConsumerObj:Consumer through which messages are to be read(Java Object)	
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Function doesn't return anything
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
consumer1=rkafka.createHighConsumer("127.0.0.1:2181")
rkafka.closeHighConsumer(consumer1)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kafka }
\keyword{ ~high }
\keyword{ ~consumer }
\keyword{ ~close }% __ONLY ONE__ keyword per line
