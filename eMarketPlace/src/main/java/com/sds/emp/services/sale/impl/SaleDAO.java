package com.sds.emp.services.sale.impl;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sds.emp.common.SearchVO;
import com.sds.emp.services.sale.SaleVO;
import com.sds.emp.view.paging.Page;

@Repository
public class SaleDAO {
	@Autowired
	private SqlSessionTemplate myBatis;

	public void updateTranStatusCode(SaleVO saleVO) throws Exception {
		myBatis.update("Sale.updateProductTranStatusCode", saleVO);		
		myBatis.update("Sale.updateTransactionTranStatusCode", saleVO);
	}
	
	public SaleVO getSale(String prodNo) throws Exception {
		return (SaleVO) myBatis.selectOne("Sale.getSale", prodNo);
	}

	public Page getSaleList(SearchVO searchVO) throws Exception {
		int pageIndex = searchVO.getPageIndex();
		SaleVO saleVO = new SaleVO();
		
		String searchCondition = searchVO.getSearchCondition();
		if(searchCondition == null)
			searchCondition = "";
		
		String searchKeyword = searchVO.getSearchKeyword();
		if(searchKeyword == null)
			searchKeyword = "";
		
		if("".equals(searchCondition) || "0".equals(searchCondition))
			saleVO.setProdNo("%" + searchKeyword + "%");
		else
			saleVO.setProdName("%" + searchKeyword + "%");
		if(searchVO.getSearchTranStatusCode()!=null && !"A".equals(searchVO.getSearchTranStatusCode()))
			saleVO.setTranStatusCode(searchVO.getSearchTranStatusCode());
		
		if(searchVO.getSearchSellerId() != null && !"".equals(searchVO.getSearchSellerId()))
			saleVO.setSellerId(searchVO.getSearchSellerId());
		
		RowBounds rowBounds = new RowBounds((pageIndex * 3) - 3, 3);		
		List<SaleVO> saleList = (List<SaleVO>)myBatis.selectList("Sale.getSaleList", saleVO, rowBounds);
		Integer saleListCnt = (Integer)myBatis.selectOne("Sale.getSaleListCnt", saleVO);		
		Page resultPage = new Page(saleList, pageIndex, saleListCnt, 5, 3);
		
		return resultPage;
	}
}










