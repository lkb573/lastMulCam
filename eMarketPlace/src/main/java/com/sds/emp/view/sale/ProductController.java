package com.sds.emp.view.sale;

import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.sds.emp.common.SearchVO;
import com.sds.emp.services.sale.CategoryService;
import com.sds.emp.services.sale.CategoryVO;
import com.sds.emp.services.sale.ProductService;
import com.sds.emp.services.sale.ProductVO;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/addProductView.do")
	public String addProductView(@ModelAttribute("searchVO") SearchVO searchVO, 
			HttpServletRequest request) throws Exception {
		searchVO.setSearchUseYn("Y");
		
		// 카테고리 분류
		List<CategoryVO> categoryList = categoryService.getDropDownCategoryList();
		
		// 페이징 처리된 List는 전건이 아닐 수가 있으므로 보완 필요!!
		request.setAttribute("categoryList", categoryList);
		
		return "/sale/addProduct.jsp";
	}
	
	@RequestMapping("/addProduct.do")
	public String addProduct(@RequestParam(value = "realImageFile", required = false) MultipartFile posterFile,
			ProductVO productVO,
			HttpSession session) throws Exception {
		// 파일 업로드 포함한 상품 등록 로직 구현		
		if (posterFile != null && !posterFile.getOriginalFilename().equals("")) {
			String pictureName = posterFile.getOriginalFilename();
			File dirPath = new File("C:/DEV/workspace/eMarketPlace/web/images/upload_files/productImage/");
			if (!dirPath.exists()) {
				boolean created = dirPath.mkdirs();
				if (!created) {
					throw new Exception("Fail to create a directory for product image.");
				}
			}
			File destination = File.createTempFile("file", pictureName, dirPath);
			FileCopyUtils.copy(posterFile.getInputStream(),	new FileOutputStream(destination));
			productVO.setImageFile(destination.getName());
		}
		productVO.setSellerId((String)session.getAttribute("userId"));
		productVO.setTranStatusCode("001");
		productService.addProduct(productVO);

		return "redirect:getSaleList.do";
	}	
	
	@RequestMapping("/updateProduct.do")
	public String updateProduct(ProductVO productVO, HttpServletRequest request, HttpServletResponse response)throws Exception {
		productService.updateProduct(productVO);
		return "redirect:/getSaleList.do";
	}
	
	@RequestMapping("/getProduct.do")
	public String GetProduct(ProductVO productVO, HttpServletRequest request) throws Exception {
		SearchVO searchVO = new SearchVO();
		searchVO.setSearchUseYn("Y");

		List<CategoryVO> categoryList = categoryService.getDropDownCategoryList();
		request.setAttribute("categoryList", categoryList);

		ProductVO resultProductVO = productService.getProduct(productVO);
		request.setAttribute("product", resultProductVO);		
		return "/sale/updateProduct.jsp";
	}


}
