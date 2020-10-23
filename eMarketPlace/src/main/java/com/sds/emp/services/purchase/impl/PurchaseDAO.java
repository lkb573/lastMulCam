package com.sds.emp.services.purchase.impl;
 
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sds.emp.common.SearchVO;
import com.sds.emp.services.purchase.PurchaseVO;
import com.sds.emp.services.sale.CategoryVO;
import com.sds.emp.view.paging.Page;

@Repository
public class PurchaseDAO {
	@Autowired
	private SqlSessionTemplate myBatis;
	
	public int countPurchaseListByDeliveryCompany(String dlvyCompNo) throws Exception {
		Integer cnt = (Integer) myBatis.selectOne("Purchase.getPurchaseListByDeliveryCompany", dlvyCompNo);
		return cnt.intValue();
	}
	
	public PurchaseVO getPurchase(String tranNo) throws Exception {
		return (PurchaseVO) myBatis.selectOne("Purchase.getPurchase", tranNo);
	}

	public void addPurchase(PurchaseVO purchaseVO) throws Exception {
		String tranStatusCode = "002";  //주문접수
		purchaseVO.setTranStatusCode(tranStatusCode);

		myBatis.insert("Purchase.addPurchase", purchaseVO);		
		myBatis.update("Purchase.updateProdTranStatusCode", purchaseVO);
	}
		
	public void updatePurchase(PurchaseVO purchaseVO) throws Exception {
		myBatis.update("Purchase.updatePurchase", purchaseVO);
	}

	public Page getPurchaseList(SearchVO searchVO) throws Exception {
		PurchaseVO purchaseVO = new PurchaseVO();
		
		String searchCondition = searchVO.getSearchCondition();
		if(searchCondition == null)
			searchCondition = "";
		
		String searchKeyword = searchVO.getSearchKeyword();
		if(searchKeyword == null)
			searchKeyword = "";
	
		if("".equals(searchCondition) || "0".equals(searchCondition))
			purchaseVO.setProdNo("%" + searchKeyword + "%");
		else
			purchaseVO.setProdName("%" + searchKeyword + "%");
		
		if(searchVO.getSearchTranStatusCode()!= null && !"A".equals(searchVO.getSearchTranStatusCode()))
			purchaseVO.setTranStatusCode(searchVO.getSearchTranStatusCode());	

		purchaseVO.setBuyerId(searchVO.getSearchBuyerId());

		RowBounds rowBounds = new RowBounds((searchVO.getPageIndex() * 3) - 3, 3);
		List<CategoryVO> deliveryCompanyList = (List<CategoryVO>) myBatis.selectList("Purchase.getPurchaseList", purchaseVO, rowBounds);
		Integer deliveryCompanyListCnt = (Integer)myBatis.selectOne("Purchase.getPurchaseListCnt", purchaseVO);
		
		Page resultPage = new Page(deliveryCompanyList, searchVO.getPageIndex(), deliveryCompanyListCnt, 5, 3);
		return resultPage;
	}
}
