\name{rkafka.createProducer}
\alias{rkafka.createProducer}
\alias{metadataBrokerList}
\alias{producerType}
\alias{compressionCodec}
\alias{serializerClass}
\alias{partitionerClass}
\alias{compressedTopics}
\alias{queueBufferingMaxTime}
\alias{queueBufferingMaxMessages}
\alias{queueEnqueueTimeoutTime}
\alias{batchNumMessages}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Creating KAFKA producer
}
\description{
This function is used to create a KAFKA producer
}
\usage{
rkafka.createProducer(metadataBrokerList,producerType="sync",compressionCodec="none",
  	serializerClass="kafka.serializer.StringEncoder",partitionerClass="NULL",compressedTopics="NULL",
		queueBufferingMaxTime="NULL",
		queueBufferingMaxMessages="NULL",
		queueEnqueueTimeoutTime="NULL",
		batchNumMessages="NULL")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{metadataBrokerList}{
#     * @param metadataBrokerList:String
#   *            !!Mandatory list of brokers used for bootstrapping knowledge
#   *            about the rest of the cluster format: host1:port1,host2:port2
#   *            ... default:localhost:9092
}
  \item{producerType}{
#     * @param producerType:String
#   *            !!Mandatory specifies whether the messages are sent
#   *            asynchronously (async) or synchronously (sync) default:sync
}
  \item{compressionCodec}{
#     * @param compressionCodec:String
#   *            !!Mandatory specify the compression codec for all data
#   *            generated: none , gzip, snappy. default:none
}
  \item{serializerClass}{
#     * @param serializerClass:String
#   *            !!Mandatory message encoder
#   *            default:kafka.serializer.StringEncoder
}
  \item{partitionerClass}{
#     * @param partitionerClass:String
#   *            --Optional name of the partitioner class for partitioning
#   *            events; default partition spreads data randomly
#               default:NULL
}
  \item{compressedTopics}{
#     * @param compressedTopics:String
#   *            --Optional allow topic level compression
#   * #               default:NULL
}
  \item{queueBufferingMaxTime}{
#     * @param queueBufferingMaxTime:String
#   *            --Optional(for Async Producer only) maximum time, in
#   *            milliseconds, for buffering data on the producer queue
#   * #               default:NULL
}
  \item{queueBufferingMaxMessages}{
#     * @param queueBufferingMaxMessages:String
#   *            --Optional(for Async Producer only) the maximum size of the
#   *            blocking queue for buffering on the producer
#   *#               default:NULL
}
  \item{queueEnqueueTimeoutTime}{
#   *            --Optional(for Async Producer only) 0: events will be enqueued
#   *            immediately or dropped if the queue is full -ve: enqueue will
#   *            block indefinitely if the queue is full +ve: enqueue will
#   *            block up to this many milliseconds if the queue is full
#   *#               default:NULL
}
  \item{batchNumMessages}{
#     * @param batchNumMessages:String
#   *            --Optional(for Async Producer only) the number of messages
#   *            batched at the producer
#   * #               default:NULL
}
}
\value{
#     * @return returns a Properties Object containing properties for the
#   *         Producer, to be passed to MuProducer class
}
\author{
Shruti Gupta
}
\examples{
producer1=rkafka.createProducer("127.0.0.1:9092")
producer2=rkafka.createProducer("127.0.0.1:9092","sync","none","kafka.serializer.StringEncoder")
  }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~KAFKA }
\keyword{ ~producer }% __ONLY ONE__ keyword per line
