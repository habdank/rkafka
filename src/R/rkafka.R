# TODO: Add comment
# 
# Author: shrutigupta34
###############################################################################
.onLoad <- function(libname, pkgname) {
	#Loading required libraries
  tryCatch({library("rJava")},error=function(e){stop("rJava is not installed. Please install before proceeding")})

	#specifying package location
  .jaddClassPath("inst/java/rkafka-1.0-jar-with-dependencies.jar")
	.jpackage(pkgname, lib.loc = libname)

}

#function to create Producer

#Definition of the arguments
#   /**
#     * @param metadataBrokerList:String
#   *            !!Mandatory list of brokers used for bootstrapping knowledge
#   *            about the rest of the cluster format: host1:port1,host2:port2
#   *            ... default:localhost:9092
#   * 
#     * @param producerType:String
#   *            !!Mandatory specifies whether the messages are sent
#   *            asynchronously (async) or synchronously (sync) default:sync
#   * 
#     * @param compressionCodec:String
#   *            !!Mandatory specify the compression codec for all data
#   *            generated: none , gzip, snappy. default:none
#   * 
#     * @param serializerClass:String
#   *            !!Mandatory message encoder
#   *            default:kafka.serializer.StringEncoder
#   * 
#     * @param partitionerClass:String
#   *            --Optional name of the partitioner class for partitioning
#   *            events; default partition spreads data randomly
#               default:NULL
#   * 
#     * @param compressedTopics:String
#   *            --Optional allow topic level compression
#   * #               default:NULL
#     * @param queueBufferingMaxTime:String
#   *            --Optional(for Async Producer only) maximum time, in
#   *            milliseconds, for buffering data on the producer queue
#   * #               default:NULL
#     * @param queueBufferingMaxMessages:String
#   *            --Optional(for Async Producer only) the maximum size of the
#   *            blocking queue for buffering on the producer
#   *#               default:NULL
#     * @param queueEnqueueTimeoutTime:String
#   *            --Optional(for Async Producer only) 0: events will be enqueued
#   *            immediately or dropped if the queue is full -ve: enqueue will
#   *            block indefinitely if the queue is full +ve: enqueue will
#   *            block up to this many milliseconds if the queue is full
#   *#               default:NULL
#     * @param batchNumMessages:String
#   *            --Optional(for Async Producer only) the number of messages
#   *            batched at the producer
#   * #               default:NULL
#     * @return returns a Properties Object containing properties for the
#   *         Producer, to be passed to MuProducer class
#   */
rkafka.startProducer = function(metadataBrokerList,producerType="sync",compressionCodec="none",
		serializerClass="kafka.serializer.StringEncoder",partitionerClass="NULL",compressedTopics="NULL",
		queueBufferingMaxTime="NULL",
		queueBufferingMaxMessages="NULL",
		queueEnqueueTimeoutTime="NULL",
		batchNumMessages="NULL")
{
	producerType=as.character(producerType);
	compressionCodec=as.character(compressionCodec);
	serializerClass=as.character(serializerClass);
	partitionerClass=as.character(partitionerClass);
	queueBufferingMaxTime=as.character(queueBufferingMaxTime);
	queueBufferingMaxMessages=as.character(queueBufferingMaxMessages);
	queueEnqueueTimeoutTime=as.character(queueEnqueueTimeoutTime);
	batchNumMessages=as.character(batchNumMessages);
	
	# Create an object of the producer properties class
	producerProperties <- .jnew("com/musigma/producer/ProducerProperties")
	
	#set Properties from passed arguments and receive Properties Object
	producerPropertiesObj <- .jcall(producerProperties,"Ljava/util/Properties;","setProducerProperties",metadataBrokerList,producerType,compressionCodec,serializerClass,partitionerClass,compressedTopics,queueBufferingMaxTime,queueBufferingMaxMessages,queueEnqueueTimeoutTime,batchNumMessages)
	
	#Creating a producer
	producer<- .jnew("com/musigma/producer/MuProducer",producerPropertiesObj)
	return(producer)
}

#Function for producer to send message
#Definition of the arguments
#   /**
#     * @param producer:producer(Java object)
#   *            !!Mandatory: Producer through which messages are to be sent
#   * 
#   * @param topicName:String
#   *            !!Mandatory: Topic to which messages are to be sent. If topicName doesn't exist, new topic is created
#   * 
#     * @param ip:String
#   *            !!Mandatory: ip on which producer is running
#   * 
#     * @param message:String
#   *            !!Mandatory: message to be sent
#   */
rkafka.send <-function(producer, topicName, ip, message)
{
	topicName <- as.character(topicName)
	ip <- as.character(ip)
	message <- as.character(message)
	
	.jcall(producer,"V","sendMessage", topicName, ip, message)
	print("INFO:Remember to close the producer after done sending messages");
}

#function to shut down the producer
#Definition of the arguments
#   /**
#     * @param producer:producer(Java object)
#   *            !!Mandatory: Producer which is to be terminated
rkafka.closeProducer <-function(producer)
{
	.jcall(producer,"V","close")
}

#function to create high level consumer

#/**
#		* Definition of arguments
#* 
#@param zookeeperConnect
#*            !!Mandatory:Zookeeper connection string comma separated
#*            host:port pairs, each corresponding to a zk server. e.g.
#*            "127.0.0.1:3000,127.0.0.1:3001,127.0.0.1:3002"
#*			  default:"127.0.0.1:2181"
#* @param groupId
#*            !!Mandatory:consumer group id default:test-consumer-group
#* @param zookeeperConnectionTimeoutMs
#*            !!Mandatory:timeout in ms for connecting to zookeeper
#*            default:100000
#* @param consumerTimeoutMs
#*            !!Mandatory:Throw a timeout exception to the consumer if no
#*            message is available for consumption after the specified
#*            interval default:1000
#* @param autoCommitEnable
#*            --Optional:default:true If true, periodically commit to
#*            ZooKeeper the offset of messages already fetched by the
#*            consumer. This committed offset will be used when the process
#*            fails as the position from which the new consumer will begin.
#* @param autoCommitIntervalMs
#*            --Optional:default:60*1000 The frequency in ms that the
#*            consumer offsets are committed to zookeeper.
#* @param autoOffsetReset
#*            --Optional:default:largest * smallest : automatically reset
#*            the offset to the smallest offset largest : automatically
#*            reset the offset to the largest offset anything else: throw
#*            exception to the consumer
#*/

rkafka.startConsumer<- function(zookeeperConnect,groupId="test-consumer-group",zookeeperConnectionTimeoutMs="100000",consumerTimeoutMs="5000",autoCommitEnable="true",autoCommitInterval="1000",autoOffsetReset="largest"){
	
	zookeeperConnect=as.character(zookeeperConnect)
	groupId=as.character(groupId)
	zookeeperConnectionTimeoutMs=as.character(zookeeperConnectionTimeoutMs)
	autoCommitEnable=as.character(autoCommitEnable)
	autoCommitInterval=as.character(autoCommitInterval)
	autoOffsetReset=as.character(autoOffsetReset)
	consumerTimeoutMs=as.character(consumerTimeoutMs)
	
	HighConsumerObj<-.jnew("com/musigma/consumer/MuHighConsumer",zookeeperConnect,groupId,zookeeperConnectionTimeoutMs,consumerTimeoutMs,autoCommitEnable,autoCommitInterval,autoOffsetReset)

  return(HighConsumerObj)
}

#/**
#		* Reads messages from the topic passed as parameter.Waits for a time
#* specified by consumer timeout property and then returns the messages
#		  @param HighConsumerObj:Consumer through which messages are to be read(Java Object)	
#		  @param topicName
#*            :The topic from which message is to be read
#*		  @return String[]: array of messages read
#*/
rkafka.read<-function(HighConsumerObj,topicName)
{
	
	messages=.jcall(HighConsumerObj,"[Ljava/lang/String;","read", topicName)
	print("INFO: Remember to close the consumer after reading messages. It won't work correctly next time otherwise")
  return(messages)
	
}

#function to shut down the consumer
rkafka.closeConsumer<-function(HighConsumerObj){
	.jcall(HighConsumerObj,"V","close")
}



