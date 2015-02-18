pkgname <- "rkafka"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('rkafka')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("rkafka-package")
### * rkafka-package

flush(stderr()); flush(stdout())

### Name: R package for KAFKA
### Title: RKAFKA
### Aliases: 'RKAFKA package'
### Keywords: package

### ** Examples

producer1=rkafka.startProducer("127.0.0.1:9092")
rkafka.send(producer1,"ind1","127.0.0.1:9092","this2")
rkafka.send(producer1,"ind1","127.0.0.1:9092","is21")
rkafka.closeProducer(producer1)
consumer1=rkafka.startConsumer("127.0.0.1:2181")
msgs=rkafka.read(consumer1,"ind1")
print(msgs)
rkafka.closeConsumer(consumer1)



cleanEx()
nameEx("rkafka.closeConsumer")
### * rkafka.closeConsumer

flush(stderr()); flush(stdout())

### Name: rkafka.closeConsumer
### Title: Closing KAKFA consumer
### Aliases: rkafka.closeConsumer
### Keywords: ~kafka ~consumer ~close

### ** Examples

consumer1=rkafka.startConsumer("127.0.0.1:2181")
rkafka.closeConsumer(consumer1)



cleanEx()
nameEx("rkafka.closeProducer")
### * rkafka.closeProducer

flush(stderr()); flush(stdout())

### Name: rkafka.closeProducer
### Title: KAFKA producer shutdown
### Aliases: rkafka.closeProducer producerObj
### Keywords: ~kafka ~producer ~close

### ** Examples

producer1=rkafka.startProducer("127.0.0.1:9092")
rkafka.closeProducer(producer1)



cleanEx()
nameEx("rkafka.read")
### * rkafka.read

flush(stderr()); flush(stdout())

### Name: rkafka.read
### Title: KAFKA Consumer Reading
### Aliases: rkafka.read
### Keywords: ~kafka ~consumer ~read

### ** Examples

consumer1=rkafka.startConsumer("127.0.0.1:2181")
print(rkafka.read(consumer1,"test"))



cleanEx()
nameEx("rkafka.send")
### * rkafka.send

flush(stderr()); flush(stdout())

### Name: rkafka.send
### Title: KAFKA producer sending message
### Aliases: rkafka.send producer topicName ip message
### Keywords: ~KAFKA ~Producer ~Message sending

### ** Examples

producer1=rkafka.startProducer("127.0.0.1:9092")
rkafka.send(producer1,"test","127.0.0.1:9092","Testing")



cleanEx()
nameEx("rkafka.startConsumer")
### * rkafka.startConsumer

flush(stderr()); flush(stdout())

### Name: rkafka.startConsumer
### Title: Creating high level KAFKA consumer
### Aliases: rkafka.startConsumer zookeeperConnect groupId
###   zookeeperConnectionTimeoutMs consumerTimeoutMs autoCommitEnable
###   autoCommitInterval autoOffsetReset
### Keywords: ~kafka ~consumer ~create

### ** Examples

consumer1=rkafka.startConsumer("127.0.0.1:2181")
consumer2=rkafka.startConsumer("127.0.0.1:2181","test-consumer-group","50000","1000")




cleanEx()
nameEx("rkafka.startProducer")
### * rkafka.startProducer

flush(stderr()); flush(stdout())

### Name: start.Producer
### Title: Creating producer
### Aliases: rkafka.startProducer metadataBrokerList producerType
###   compressionCodec serializerClass partitionerClass compressedTopics
###   queueBufferingMaxTime queueBufferingMaxMessages
###   queueEnqueueTimeoutTime batchNumMessages
### Keywords: ~KAFKA ~producer

### ** Examples

producer1=rkafka.startProducer("127.0.0.1:9092")
producer2=rkafka.startProducer("127.0.0.1:9092","sync","none","kafka.serializer.StringEncoder")
  


### * <FOOTER>
###
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
