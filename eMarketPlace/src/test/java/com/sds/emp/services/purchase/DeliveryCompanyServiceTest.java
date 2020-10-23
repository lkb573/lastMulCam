package com.sds.emp.services.purchase;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.sds.emp.services.purchase.DeliveryCompanyService;

public class DeliveryCompanyServiceTest {
	
	public static void main(String[] args) throws Exception {
		ApplicationContext ctx = new FileSystemXmlApplicationContext("src/main/resources/spring/spring-common-service.xml");
		
		DeliveryCompanyService deliveryCompanyService = (DeliveryCompanyService) ctx.getBean("deliveryCompanyService");
		

	}
}


