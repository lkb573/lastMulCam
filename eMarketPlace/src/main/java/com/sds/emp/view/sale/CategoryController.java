package com.sds.emp.view.sale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sds.emp.common.SearchVO;
import com.sds.emp.services.sale.CategoryService;
import com.sds.emp.services.sale.CategoryVO;
import com.sds.emp.view.paging.Page;

@Controller
public class CategoryController {
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/addCategoryView.do")
	public String addCategoryView()	throws Exception {
		return "/sale/addCategory.jsp";
	}
	
	@RequestMapping("/addCategory.do")
	public String addCategory(CategoryVO categoryVO, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		categoryVO.setRegId(userId);
		categoryVO.setModifyId(userId);
		categoryService.addCategory(categoryVO);
		return "getCategoryList.do";
	}
	
	@RequestMapping("/updateCategory.do")
	public String updateCategory(CategoryVO categoryVO, HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();		
		categoryVO.setModifyId((String)session.getAttribute("userId"));
		
		categoryService.updateCategory(categoryVO);
		return "redirect:/getCategoryList.do";
	}
	
	@RequestMapping("/getCategory.do")
	public String getCategory(CategoryVO categoryVO,
			HttpServletRequest request)	throws Exception {
		CategoryVO resultCategoryVO = categoryService.getCategory(categoryVO.getCategoryNo());
		request.setAttribute("resultCategoryVO", resultCategoryVO);		
		return "/sale/updateCategory.jsp";
	}

	@RequestMapping("/getCategoryList.do")
	public String getCategoryList(
			@RequestParam(value = "pageIndex", defaultValue = "1") int pageIndex,
			SearchVO searchVO,
			HttpServletRequest request)	throws Exception {
		searchVO.setSearchKeyword(new String(searchVO.getSearchKeyword().getBytes("8859_1"), "euc-kr"));
		Page resultPage = categoryService.getCategoryList(searchVO);
		searchVO.setPageIndex(pageIndex);
		request.setAttribute("searchVO", searchVO);
		request.setAttribute("resultPage", resultPage);
		
		return "/sale/listCategory.jsp";
	}

}
