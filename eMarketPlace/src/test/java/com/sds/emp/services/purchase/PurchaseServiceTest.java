package com.sds.emp.services.purchase;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.sds.emp.common.SearchVO;
import com.sds.emp.services.purchase.PurchaseService;
import com.sds.emp.services.purchase.PurchaseVO;
import com.sds.emp.view.paging.Page;

public class PurchaseServiceTest {
	
	public static void main(String[] args) throws Exception {
		ApplicationContext ctx = new FileSystemXmlApplicationContext("src/main/resources/spring/spring-common-service.xml");
		
		PurchaseService purchaseService = (PurchaseService) ctx.getBean("purchaseService");
		
//		int tranNo = purchaseService.countPurchaseListByDeliveryCompany("DLVYCOMP-00030");
//		System.out.println("�ŷ� ��ȣ : " + tranNo);
		 
//		PurchaseVO purchaseVO = purchaseService.getPurchase("TRANSACT-00040");
//		System.out.println(purchaseVO);
		
		SearchVO searchVO = new SearchVO();
		searchVO.setPageIndex(1);
		searchVO.setSearchAsYn("Y");
		searchVO.setSearchBuyerId("%%");
		searchVO.setSearchCondition("1");//��ǰ�� : 0, ��ǰ��ȣ : 1
		searchVO.setSearchKeyword("");
		searchVO.setSearchTranStatusCode("A");//�ֹ����� : 002, ��ۿϷ� : 003
		searchVO.setSearchUseYn("");
		
		Page resultPage = purchaseService.getPurchaseList(searchVO);
		ArrayList<PurchaseVO> purchaseList = (ArrayList<PurchaseVO>)resultPage.getList();
		for (PurchaseVO purchaseVO : purchaseList) {
			System.out.println("--->" + purchaseVO);
		}

	}
}


