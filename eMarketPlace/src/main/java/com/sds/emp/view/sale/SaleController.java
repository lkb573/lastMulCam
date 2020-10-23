package com.sds.emp.view.sale;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sds.emp.common.SearchVO;
import com.sds.emp.services.code.CodeService;
import com.sds.emp.services.code.CodeVO;
import com.sds.emp.services.sale.SaleService;
import com.sds.emp.services.sale.SaleVO;
import com.sds.emp.view.paging.Page;

@Controller
public class SaleController {
	@Autowired
	private CodeService codeService;
	@Autowired
	private SaleService saleService;
	
	@RequestMapping("/updateTranStatusCode.do")
	public String updateTranStatusCode() throws Exception {
		// 거래 상태 코드를 수정하는 로직은 아직 구현 안됨
		return "";
	}
	
	@RequestMapping("/getSale.do")
	public String getSale(SaleVO saleVO, Model model)throws Exception {
		SaleVO resultSaleVO = saleService.getSale(saleVO.getProdNo());
		resultSaleVO.getImageFile();
		model.addAttribute("resultSaleVO", resultSaleVO);
		
		return "/sale/getSale.jsp";
	}
	
	@RequestMapping("/getSaleList.do")
	public String getSaleList(SearchVO searchVO, HttpSession session, Model model) throws Exception {
		List<CodeVO> tranStatusCodeList = codeService.getCodeList("A03");
		model.addAttribute("tranStatusCodeList", tranStatusCodeList);
		
		String userId = (String)session.getAttribute("userId");
		searchVO.setSearchSellerId(userId);
		
		Page resultPage = saleService.getSaleList(searchVO);		
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("searchVO", searchVO);
		model.addAttribute("pageSize", new Integer(3));
		return "/sale/listSale.jsp";
	}
}
