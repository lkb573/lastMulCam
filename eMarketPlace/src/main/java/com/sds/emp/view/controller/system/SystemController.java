package com.sds.emp.view.controller.system;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sds.emp.services.user.UserService;
import com.sds.emp.services.user.UserVO;

@Controller
public class SystemController {
	@Autowired
	private UserService userService;	
	
	@RequestMapping("/loginView.do")
	public String loginView(){
		return "/system/login.jsp";
	}

	@RequestMapping("/login.do")
	public String login(UserVO userVO,
			            HttpSession session) throws Exception {
		UserVO resultUserVO = userService.getUser(userVO.getUserId());		
		if(resultUserVO != null){
			session.setAttribute("userId", resultUserVO.getUserId());
			return "/index.jsp";
		}else{
			return "/loginView.do";
		}		
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) throws Exception {
		session.removeAttribute("subject");
		return "redirect:.";
	}
}
