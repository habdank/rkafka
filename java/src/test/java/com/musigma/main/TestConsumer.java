package com.musigma.main;
import java.io.UnsupportedEncodingException;

import com.musigma.consumer.MuConsumer;
import com.musigma.consumer.MuSimpleConsumer;


public class TestConsumer {

	

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		MuSimpleConsumer cons1=new MuSimpleConsumer();
//		cons1.CreateSimpleConsumer("172.25.1.78","9092","10000","100000","test");
//		
//		try {
//			cons1.receive("testing1","0","0", "10000");
//		} catch (UnsupportedEncodingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		//MuSimpleConsumer cons2=new MuSimpleConsumer();
//		int counter=1;
//		while(counter<10){
//		System.out.println("Round 1"+cons1.read());
//		counter++;
//		}
//		
//		try {
//			cons1.receive("testing1","0","0", "10000");
//		} catch (UnsupportedEncodingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		//MuSimpleConsumer cons2=new MuSimpleConsumer();
//		int counters=1;
//		while(counters<10){
//		System.out.println("Round 2"+cons1.read());
//		counters++;
//		}
		/*while(!cons2.queue.isEmpty()){
			
			System.out.println("Round "+counter);
			System.out.println(cons2.read());
			counter++;
		}*/
		
		MuConsumer cons1=new MuConsumer();
		cons1.CreateConsumer("172.25.1.78:2181","test-consumer-group","100000","1000","NULL","NULL","NULL");
		cons1.startConsumer("testing1");
		int counter=1;
		while(counter<5){
			System.out.println("First round");
		System.out.println(cons1.tail());
		counter++;
		}
//		counter=1;
//		while(counter<5){
//			System.out.println("------------------------------/nSecond round");
//		System.out.println(cons1.tail());
//		counter++;
////		}
		
		cons1.startConsumer("testing");
		System.out.println("Started consumer again");
		counter=1;
		while(counter<5){
			System.out.println("Third round");
		System.out.println(cons1.tail());
		counter++;
		}
//		while(true)
//		{
//			System.out.println(cons1.tail());
//		}
//		}
		
		
		//MuConsumer cons2=new MuConsumer();
		//int counter=1;
		//while(counter<20){
			//System.out.println("Round "+counter);
//		MuConsumer consumer = new MuConsumer();
//		System.out.println(consumer.readTest( cons1));
			//counter++;
		//}
		
		}
	}
