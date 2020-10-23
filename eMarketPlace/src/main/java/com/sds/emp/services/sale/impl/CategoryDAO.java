package com.sds.emp.services.sale.impl;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sds.emp.common.SearchVO;
import com.sds.emp.services.sale.CategoryVO;
import com.sds.emp.view.paging.Page;

@Repository
public class CategoryDAO {
	@Autowired
	private SqlSessionTemplate myBatis;
	
	public void addCategory(CategoryVO categoryVO) throws Exception {
		myBatis.insert("Category.addCategory", categoryVO);
	}

	public void updateCategory(CategoryVO categoryVO) throws Exception {
		myBatis.update("Category.updateCategory", categoryVO);
	}
	
	public CategoryVO getCategory(String categoryNo) throws Exception {
		return (CategoryVO) myBatis.selectOne("Category.getCategory", categoryNo);
	}

	public Page getCategoryList(SearchVO searchVO) throws Exception {
		CategoryVO categoryVO = new CategoryVO();
		
		String searchCondition = searchVO.getSearchCondition();
		if(searchCondition == null)
			searchCondition = "";
		
		String searchKeyword = searchVO.getSearchKeyword();
		if(searchKeyword == null)
			searchKeyword = "";
		
		if("".equals(searchCondition) || "0".equals(searchCondition))
			categoryVO.setCategoryNo("%" + searchKeyword + "%");
		else
			categoryVO.setCategoryName("%" + searchKeyword + "%");
		
		if(searchVO.getSearchUseYn()!= null && !"A".equals(searchVO.getSearchUseYn()))
			categoryVO.setUseYn(searchVO.getSearchUseYn());
		
		RowBounds rowBounds = new RowBounds((searchVO.getPageIndex() * 3) - 3, 3);	
		List<CategoryVO> categoryList = (List) myBatis.selectList("Category.getCategoryList", categoryVO, rowBounds);
		Integer categoryListCnt = (Integer) myBatis.selectOne("Category.getCategoryListCnt", categoryVO);

		Page resultPage = new Page(categoryList, searchVO.getPageIndex(), categoryListCnt, 5, 3);
		return resultPage;
	}
	
	public List<CategoryVO> getDropDownCategoryList() throws Exception {
		return (List) myBatis.selectList("Category.getDropDownCategoryList", new Object[] {});
	}
}
