package com.sds.emp.services.user;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.sds.emp.common.SearchVO;
import com.sds.emp.services.user.UserService;
import com.sds.emp.services.user.UserVO;
import com.sds.emp.view.paging.Page;

public class UserServiceTest {
	
	public static void main(String[] args) throws Exception {
		ApplicationContext ctx = new FileSystemXmlApplicationContext("src/main/resources/spring/spring-common-service.xml");
		
		UserService userService = (UserService) ctx.getBean("userService");
		
		SearchVO searchVO = new SearchVO();
		searchVO.setSearchCondition("0");
		searchVO.setSearchKeyword("");
		
		Page resultPage = userService.getUserList(searchVO);
		ArrayList<UserVO> userList = (ArrayList)resultPage.getList();
		for (UserVO userVO : userList) {
			System.out.println("---> " + userVO);
		}
		System.out.println("====================================");
		System.out.println(userService.getUser("any.lee"));
	}
}


