package com.sds.emp.services.sale;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.sds.emp.common.SearchVO;
import com.sds.emp.services.sale.ProductService;
import com.sds.emp.services.sale.ProductVO;
import com.sds.emp.view.paging.Page;

public class ProductServiceTest {
	
	public static void main(String[] args) throws Exception {
		ApplicationContext ctx = new FileSystemXmlApplicationContext("src/main/resources/spring/spring-common-service.xml");
		ProductService productService = (ProductService) ctx.getBean("productService");
		
		SearchVO searchVO = new SearchVO();
		searchVO.setSearchCondition("0");
		searchVO.setSearchKeyword("");
		searchVO.setSearchAsYn("A");
		Page resultPage = productService.getProductList(searchVO);
		ArrayList<ProductVO> productList = (ArrayList<ProductVO>) resultPage.getList();
		
		for (ProductVO productSearchVO : productList) {
			System.out.println("---> " + productSearchVO);
		}
	}
}


