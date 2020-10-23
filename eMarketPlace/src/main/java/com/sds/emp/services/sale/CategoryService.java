package com.sds.emp.services.sale;

import java.util.List;

import com.sds.emp.common.SearchVO;
import com.sds.emp.view.paging.Page;

public interface CategoryService {
	public String addCategory(CategoryVO categoryVO) throws Exception;	
	public void updateCategory(CategoryVO categoryVO) throws Exception;
	public Page getCategoryList(SearchVO searchVO) throws Exception;	
	public List<CategoryVO> getDropDownCategoryList() throws Exception;	
	public CategoryVO getCategory(String categoryNo) throws Exception;	
}
