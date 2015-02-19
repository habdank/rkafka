\name{rkafka.createHighConsumer}
\alias{rkafka.createHighConsumer}
\alias{zookeeperConnect}
\alias{groupId}
\alias{zookeeperConnectionTimeoutMs}
\alias{consumerTimeoutMs}
\alias{autoCommitEnable}
\alias{autoCommitInterval}
\alias{autoOffsetReset}
\title{
Creating high level KAFKA consumer
}
\description{
This function creates a high level KAFKA consumer
}
\usage{
rkafka.createHighConsumer(zookeeperConnect,groupId="test-consumer-group",zookeeperConnectionTimeoutMs="100000",consumerTimeoutMs="5000",autoCommitEnable="true",autoCommitInterval="1000",autoOffsetReset="largest")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{zookeeperConnect}{
#@param zookeeperConnect
#*            !!Mandatory:Zookeeper connection string comma separated
#*            host:port pairs, each corresponding to a zk server. e.g.
#*            "127.0.0.1:3000,127.0.0.1:3001,127.0.0.1:3002"
#*  		  default:"127.0.0.1:2181"
}
  \item{groupId}{
#* @param groupId
#*            !!Mandatory:consumer group id default:test-consumer-group
}
  \item{zookeeperConnectionTimeoutMs}{
#* @param zookeeperConnectionTimeoutMs
#*            !!Mandatory:timeout in ms for connecting to zookeeper
#*            default:100000
}
 \item{consumerTimeoutMs}{
#* @param consumerTimeoutMs
#*            !!Mandatory:Throw a timeout exception to the consumer if no
#*            message is available for consumption after the specified
#*            interval default:1000
}
  \item{autoCommitEnable}{
#*            --Optional:default:true If true, periodically commit to
#*            ZooKeeper the offset of messages already fetched by the
#*            consumer. This committed offset will be used when the process
#*            fails as the position from which the new consumer will begin.
}
  \item{autoCommitInterval}{
#* @param autoCommitIntervalMs
#*            --Optional:default:60*1000 The frequency in ms that the
#*            consumer offsets are committed to zookeeper.
}
  \item{autoOffsetReset}{
#*            --Optional:default:largest * smallest : automatically reset
#*            the offset to the smallest offset largest : automatically
#*            reset the offset to the largest offset anything else: throw
#*            exception to the consumer
}
 
}
\details{
There are two types of KAFKA consumers: High-level and Simple. This functions creates a high level consumer and if it doesn't receives any messages for 'x' ms(set by consumerTimeout), it stops listening.
}
\value{
Returns a consumer
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

\examples{
consumer1=rkafka.createHighConsumer("127.0.0.1:2181")
consumer2=rkafka.createHighConsumer("127.0.0.1:2181","test-consumer-group","50000","1000")

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kafka }
\keyword{ ~consumer }
\keyword{ ~high}% __ONLY ONE__ keyword per line
