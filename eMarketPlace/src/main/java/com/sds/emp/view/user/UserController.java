package com.sds.emp.view.user;

import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.sds.emp.common.SearchVO;
import com.sds.emp.services.code.CodeService;
import com.sds.emp.services.code.CodeVO;
import com.sds.emp.services.user.UserService;
import com.sds.emp.services.user.UserVO;
import com.sds.emp.view.paging.Page;

@Controller
public class UserController {
	@Autowired
	private CodeService codeService;
	@Autowired
	private UserService userService;

	@RequestMapping("/addUserView.do")
	public String addUserView(Model model) throws Exception {
		List<CodeVO> cellPhoneCodeList = codeService.getCodeList("A01");
		List<CodeVO> emailCodeList = codeService.getCodeList("A02");		
		model.addAttribute("cellPhoneCodeList", cellPhoneCodeList);
		model.addAttribute("emailCodeList", emailCodeList);		
		return "/user/addUser.jsp";
	}
	
	@RequestMapping("/checkDuplication.do")
	public String checkDuplication(UserVO userVO, Model model) throws Exception {
		boolean duplicated = userService.checkDuplication(userVO.getUserId());		
		model.addAttribute("duplicated", Boolean.valueOf(duplicated));
		model.addAttribute("userVO", userVO);		
		return "/user/checkDuplication.jsp";
	}
	
	@RequestMapping("/addUser.do")
	public String addUser(@RequestParam(value = "realImageFile", required = false) MultipartFile posterFile,
						  UserVO userVO, 
						  HttpSession session) throws Exception {
		if (posterFile != null && !posterFile.getOriginalFilename().equals("")) {
			String pictureName = posterFile.getOriginalFilename();
			File dirPath = new File("C:/workspace/eMarketPlace/web/images/upload_files/userImage/");
//			if (!dirPath.exists()) {
//				boolean created = dirPath.mkdirs();
//				if (!created) 
//					throw new Exception("Fail to create a directory for user image.");
//			}
			File destination = File.createTempFile("file", pictureName, dirPath);
			FileCopyUtils.copy(posterFile.getInputStream(),	new FileOutputStream(destination));
			userVO.setImageFile(destination.getName());
		}
		userService.addUser(userVO);
		return "redirect:/loginView.do";
	}
	
	@RequestMapping("/updateUser.do")
	public String updateUser(UserVO userVO) throws Exception {
		userService.updateUser(userVO);
		return "redirect:/getUserList.do";
	}
	
	@RequestMapping("/getUser.do")
	public String getUser(UserVO userVO, 
						  HttpSession session, 
						  Model model) throws Exception {
		List<CodeVO> cellPhoneCodeList = codeService.getCodeList("A01");
		List<CodeVO> emailCodeList = codeService.getCodeList("A02");

		String userId = userVO.getUserId();
		if(userId == null)
			userId = (String)session.getAttribute("userId");
		UserVO user = userService.getUser(userId);		
		
		model.addAttribute("cellPhoneCodeList", cellPhoneCodeList);
		model.addAttribute("emailCodeList", emailCodeList);
		model.addAttribute("user", user);		
		model.addAttribute("flag", "user");
		return "/user/updateUser.jsp";
	}
	
	@RequestMapping("/getUserList.do")
	public String getUserList(@RequestParam(value = "pageIndex", defaultValue = "1") int pageIndex,
							  SearchVO searchVO, 
							  Model model) throws Exception {
		Page resultPage = userService.getUserList(searchVO);
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("searchVO", searchVO);
		model.addAttribute("pageSize", new Integer(3));
		return "/user/listUser.jsp";
	}
}
