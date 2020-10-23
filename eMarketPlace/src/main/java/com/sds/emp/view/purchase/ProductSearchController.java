package com.sds.emp.view.purchase;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sds.emp.common.SearchVO;
import com.sds.emp.services.sale.ProductService;
import com.sds.emp.services.sale.ProductVO;
import com.sds.emp.view.paging.Page;

@Controller
public class ProductSearchController {
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/getProductSearch.do")
	public String getProductSearch(ProductVO productVO, HttpServletRequest request)	throws Exception {
		ProductVO resultProductVO = productService.getProduct(productVO);
		request.setAttribute("resultProductVO", resultProductVO);	

		return "/purchase/getProductSearch.jsp";
	}
	
	@RequestMapping("/getProductSearchList.do")
	public String getProductSearchList(SearchVO searchVO, HttpServletRequest request) throws Exception {
		Page resultPage = productService.getProductList(searchVO);

		request.setAttribute("searchVO", searchVO);
		request.setAttribute("resultPage", resultPage);
		
		return "/purchase/listProductSearch.jsp";
	}
}
