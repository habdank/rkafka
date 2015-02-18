is.installed <- function(mypkg){
  is.element(mypkg, installed.packages()[,1])
} 
library(rkafka1.0)
  
producer1=rkafka.startProducer("127.0.0.1:9092")
condition=rJava::.jinstanceof(producer1,"com/musigma/producer/MuProducer")
RUnit::checkTrue(condition,"check1")

