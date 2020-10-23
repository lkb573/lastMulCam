package com.sds.emp.view.purchase;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sds.emp.common.SearchVO;
import com.sds.emp.services.purchase.DeliveryCompanyService;
import com.sds.emp.services.purchase.DeliveryCompanyVO;
import com.sds.emp.view.paging.Page;

@Controller
public class DeliveryCompanyController {
	@Autowired
	private DeliveryCompanyService deliveryCompanyService;
	
	@RequestMapping("/addDeliveryCompanyView.do")
	public String showAddDeliveryCompany(){
		return "/purchase/addDeliveryCompany.jsp";
	}
	
	@RequestMapping("/addDeliveryCompany.do")
	public String addDeliveryCompany(DeliveryCompanyVO deliveryCompanyVO, HttpSession session) throws Exception {
		deliveryCompanyVO.setRegId((String)session.getAttribute("userId"));
		deliveryCompanyVO.setModifyId((String)session.getAttribute("userId"));
		deliveryCompanyService.addDeliveryCompany(deliveryCompanyVO);	
		return "redirect:getDeliveryCompanyList.do";
	}

	@RequestMapping("/updateDeliveryCompany.do")
	public String updateDeliveryCompany(DeliveryCompanyVO deliveryCompanyVO, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId"); 
		deliveryCompanyVO.setModifyId(userId);
		
		deliveryCompanyService.updateDeliveryCompany(deliveryCompanyVO);

		return "redirect:/getDeliveryCompanyList.do";
	}
	
	@RequestMapping("/getDeliveryCompany.do")
	public String getDeliveryCompany(DeliveryCompanyVO deliveryCompanyVO, HttpServletRequest request) throws Exception {
		DeliveryCompanyVO resultDeliveryCompanyVO = deliveryCompanyService.getDeliveryCompany(deliveryCompanyVO);
		request.setAttribute("resultDeliveryCompanyVO", resultDeliveryCompanyVO);
		
		return "/purchase/updateDeliveryCompany.jsp";
	}

	@RequestMapping("/getDeliveryCompanyList.do")
	public String getDeliveryCompanyList(
			@RequestParam(value = "pageIndex", defaultValue = "1") int pageIndex,
			HttpServletRequest request, 
			@ModelAttribute("searchVO") SearchVO searchVO) throws Exception {
		
		searchVO.setPageIndex(pageIndex);
		searchVO.setSearchKeyword(new String(searchVO.getSearchKeyword().getBytes("8859_1"), "euc-kr"));
		Page resultPage = deliveryCompanyService.getDeliveryCompanyList(searchVO);		
		request.setAttribute("searchVO", searchVO);
		request.setAttribute("resultPage", resultPage);
		return "/purchase/listDeliveryCompany.jsp";
	}


}
