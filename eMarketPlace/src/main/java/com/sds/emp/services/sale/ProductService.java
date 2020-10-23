package com.sds.emp.services.sale;

import com.sds.emp.common.SearchVO;
import com.sds.emp.view.paging.Page;

public interface ProductService {
	public int countProductListByCategory(ProductVO productVO) throws Exception;
	public String addProduct(ProductVO productVO) throws Exception;	
	public void updateProduct(ProductVO productVO) throws Exception;
	public ProductVO getProduct(ProductVO productVO) throws Exception;	
	public Page getProductList(SearchVO searchVO) throws Exception;	
}
