package com.sds.emp.view.purchase;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sds.emp.common.SearchVO;
import com.sds.emp.services.code.CodeService;
import com.sds.emp.services.code.CodeVO;
import com.sds.emp.services.purchase.DeliveryCompanyService;
import com.sds.emp.services.purchase.DeliveryCompanyVO;
import com.sds.emp.services.purchase.PurchaseService;
import com.sds.emp.services.purchase.PurchaseVO;
import com.sds.emp.services.sale.ProductService;
import com.sds.emp.services.sale.ProductVO;
import com.sds.emp.view.paging.Page;

@Controller
public class PurchaseController {
	@Autowired
	private ProductService productService;
	@Autowired
	private DeliveryCompanyService deliveryCompanyService;
	@Autowired
	private CodeService codeService;
	@Autowired
	private PurchaseService purchaseService;
	
	@RequestMapping("/addPurchaseView.do")
	public String getProductSearch(ProductVO productVO, HttpServletRequest request)	throws Exception {
		
		//������ �ڵ� 
		List<CodeVO> paymentOptionList = codeService.getCodeList("A04");
		//��۾�ü ��� ��ȸ
		Page resultPage = deliveryCompanyService.getDeliveryCompanyList(new SearchVO());
		ArrayList<DeliveryCompanyVO> deliveryCompanyList = (ArrayList)resultPage.getList();
		
		ProductVO resultProductSearchVO = productService.getProduct(productVO); 
		
		// ���ϸ��� Properties�� ��ϵǾ� �ִ� ��θ��� �߰��Ͽ� �������� - imageFile �׸��� ��ȸ�����θ� ����
		String path = "C:/workspace/eMarketPlace/web/images/upload_files/productImage/";
		resultProductSearchVO.setImageFile(path + resultProductSearchVO.getImageFile());

		request.setAttribute("resultProductSearchVO", resultProductSearchVO);
		request.setAttribute("paymentOptionList", paymentOptionList);
		request.setAttribute("deliveryCompanyList", deliveryCompanyList);

		return "/purchase/addPurchase.jsp";
	}

	@RequestMapping("/addPurchase.do")
	public String addPurchase(HttpServletRequest request, @ModelAttribute("purchaseVO") PurchaseVO purchaseVO) throws Exception {
		
		//session���� userId �����Ͽ� ����� ID Setting 
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId"); 
		
		purchaseVO.setBuyerId(userId);		
		purchaseService.addPurchase(purchaseVO);

		return "redirect:/getPurchaseList.do";
	}
	
	@RequestMapping("/updatePurchaseView.do")
	public String updatePurchaseView(PurchaseVO purchaseVO, HttpServletRequest request)	throws Exception {
		// ������ �ڵ� 
		List<CodeVO> paymentOptionList = codeService.getCodeList("A04");
		
		//��۾�ü ��� ��ȸ
		Page resultPage = deliveryCompanyService.getDeliveryCompanyList(new SearchVO());
		List<DeliveryCompanyVO> deliveryCompanyList = (List)resultPage.getList();
		
		PurchaseVO resultPurchaseVO = purchaseService.getPurchase(purchaseVO.getTranNo());
		
		// ���ϸ��� Properties�� ��ϵǾ� �ִ� ��θ��� �߰��Ͽ� �������� - imageFile �׸��� ��ȸ�����θ� ����
		String path = "C:/workspace/eMarketPlace/web/images/upload_files/productImage/";
		resultPurchaseVO.setImageFile(path + resultPurchaseVO.getImageFile());
		
		request.setAttribute("resultPurchaseVO", resultPurchaseVO);
		request.setAttribute("paymentOptionList", paymentOptionList);
		request.setAttribute("deliveryCompanyList", deliveryCompanyList); 
		
		return "/purchase/updatePurchaseView.jsp";
	}
	
	@RequestMapping("/updatePurchase.do")
	public String updatePurchase(@ModelAttribute("purchaseVO") PurchaseVO purchaseVO) throws Exception {
		purchaseService.updatePurchase(purchaseVO);
		return "/getPurchaseList.do";
	}
	
	@RequestMapping("/getPurchase.do")
	public String getPurchase(PurchaseVO purchaseVO, HttpServletRequest request) throws Exception {
		// ������ �ڵ� 
		List<CodeVO> paymentOptionList = codeService.getCodeList("A04");
		
		//��۾�ü ��� ��ȸ
		Page resultPage = deliveryCompanyService.getDeliveryCompanyList(new SearchVO());
		ArrayList<DeliveryCompanyVO> deliveryCompanyList = (ArrayList)resultPage.getList();
		
		PurchaseVO resultPurchaseVO = purchaseService.getPurchase(purchaseVO.getTranNo());
		
		// ���ϸ��� Properties�� ��ϵǾ� �ִ� ��θ��� �߰��Ͽ� �������� - imageFile �׸��� ��ȸ�����θ� ����
		resultPurchaseVO.setImageFile(resultPurchaseVO.getImageFile());
		
		request.setAttribute("resultPurchaseVO", resultPurchaseVO);
		request.setAttribute("paymentOptionList", paymentOptionList);
		request.setAttribute("deliveryCompanyList", deliveryCompanyList); 
		
		return "/purchase/getPurchase.jsp";
	}

	@RequestMapping("/getPurchaseList.do")
	public String getPurchaseList(@RequestParam(value = "pageIndex", defaultValue = "1") int pageIndex, 
			                      @ModelAttribute("searchVO") SearchVO searchVO, 
			                      HttpServletRequest request) throws Exception {
		//Ư�� ������� ���Ÿ���� ��ȸ�ϱ� ����  session���� userId ������
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		searchVO.setSearchBuyerId(userId);
		searchVO.setPageIndex(pageIndex);
		Page resultPage = purchaseService.getPurchaseList(searchVO);
		
		request.setAttribute("searchVO", searchVO);
		request.setAttribute("resultPage", resultPage);
		
		return "/purchase/listPurchase.jsp";
	}

	
}
