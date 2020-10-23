package com.sds.emp.services.sale;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.sds.emp.common.SearchVO;
import com.sds.emp.services.sale.CategoryService;
import com.sds.emp.services.sale.CategoryVO;
import com.sds.emp.view.paging.Page;

public class CategoryServiceTest {
	
	public static void main(String[] args) throws Exception {
		ApplicationContext ctx = new FileSystemXmlApplicationContext("src/main/resources/spring/spring-common-service.xml");
		
		CategoryService categoryService = (CategoryService) ctx.getBean("categoryService");
		
		SearchVO searchVO = new SearchVO();
		searchVO.setSearchCondition("0");
		searchVO.setSearchKeyword("");
		searchVO.setSearchSellerId("");
		searchVO.setSearchTranStatusCode("");
		searchVO.setSearchUseYn("Y");
		
		Page resultPage = categoryService.getCategoryList(searchVO);
		ArrayList<CategoryVO> categoryList = (ArrayList<CategoryVO>)resultPage.getList();
		for (CategoryVO categoryVO : categoryList) {
			System.out.println("---> " + categoryVO);
		}
	}
}


