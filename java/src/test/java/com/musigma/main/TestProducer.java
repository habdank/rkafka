package com.musigma.main;
import java.util.Properties;

import com.musigma.producer.MuProducer;
import com.musigma.producer.ProducerProperties;


public class TestProducer {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Properties st=new Properties();
		ProducerProperties pp=new ProducerProperties();
		st=pp.setProducerProperties("172.25.1.78:9092", "sync", "none","kafka.serializer.StringEncoder", "NULL", "NULL", "NULL", "NULL", "NULL", "NULL");
		
		System.out.println("====================");
		MuProducer prod1=new MuProducer(st);
		prod1.sendMessage("testing1", "172.25.1.78:9092", "Testing producer 1");
		System.out.println("1");
		prod1.sendMessage("testing1", "172.25.1.78:9092", "Testing producer 2");
		System.out.println("1");
		prod1.sendMessage("testing1", "172.25.1.78:9092", "Testing producer 3");
		System.out.println("1");
		prod1.sendMessage("testing1", "172.25.1.78:9092", "Testing producer 4");
		prod1.sendMessage("testing1", "172.25.1.78:9092", "Testing producer 5");
		prod1.sendMessage("testing1", "172.25.1.78:9092", "Testing producer 6");
		prod1.sendMessage("testing1", "172.25.1.78:9092", "Testing producer 7");
		prod1.sendMessage("testing1", "172.25.1.78:9092", "Testing producer 8");
		prod1.sendMessage("testing1", "172.25.1.78:9092", "Testing producer 9");
	}

}
