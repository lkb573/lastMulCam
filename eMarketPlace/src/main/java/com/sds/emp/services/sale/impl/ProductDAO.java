package com.sds.emp.services.sale.impl;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sds.emp.common.SearchVO;
import com.sds.emp.services.sale.ProductVO;
import com.sds.emp.view.paging.Page;

@Repository
public class ProductDAO {
	@Autowired
	private SqlSessionTemplate myBatis;
	
	public int countProductListByCategory(ProductVO productVO) throws Exception {
		Integer cnt = (Integer) myBatis.selectOne("Product.countProductListByCategory", productVO);
		return cnt.intValue();
	}

	public void addProduct(ProductVO productVO) throws Exception {
		myBatis.insert("Product.addProduct", productVO);
	}

	public void updateProduct(ProductVO productVO) throws Exception {	
		myBatis.update("Product.updateProduct", productVO);
	}
	
	public ProductVO getProduct(ProductVO productVO) throws Exception {
		ProductVO product = (ProductVO) myBatis.selectOne("Product.getProduct", productVO);
		return product;
	}

	public Page getProductList(SearchVO searchVO) throws Exception {
		ProductVO productSearchVO = new ProductVO();	
	
		String searchCondition = searchVO.getSearchCondition();
		if(searchCondition == null)
			searchCondition = "";
		
		String searchKeyword = searchVO.getSearchKeyword();
		if(searchKeyword == null)
			searchKeyword = "";
		
		if("".equals(searchCondition) || "0".equals(searchCondition))
			productSearchVO.setProdNo("%" + searchKeyword + "%");
		else
			productSearchVO.setProdName("%" + searchKeyword + "%");
		if(searchVO.getSearchAsYn()!=null && !"A".equals(searchVO.getSearchAsYn()))
			productSearchVO.setAsYn(searchVO.getSearchAsYn());		
		
		RowBounds rowBounds = new RowBounds((searchVO.getPageIndex() * 3) - 3, 3);	
		List<ProductVO> productList = (List) myBatis.selectList("Product.getProductList", productSearchVO, rowBounds);
		Integer productListCnt = (Integer) myBatis.selectOne("ProductSearch.getProductListCnt", productSearchVO);

		Page resultPage = new Page(productList, searchVO.getPageIndex(), productListCnt, 5, 3);
		return resultPage;
		
	}
}
