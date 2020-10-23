package com.sds.emp.services.purchase.impl;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sds.emp.common.SearchVO;
import com.sds.emp.services.purchase.DeliveryCompanyVO;
import com.sds.emp.services.sale.CategoryVO;
import com.sds.emp.view.paging.Page;

@Repository
public class DeliveryCompanyDAO {
	@Autowired
	private SqlSessionTemplate myBatis;
	
	public void addDeliveryCompany(DeliveryCompanyVO deliveryCompanyVO) throws Exception {
		myBatis.insert("DeliveryCompany.addDeliveryCompany", deliveryCompanyVO);
	}

	public void updateDeliveryCompany(DeliveryCompanyVO deliveryCompanyVO) throws Exception {
		myBatis.update("DeliveryCompany.updateDeliveryCompany", deliveryCompanyVO);
	}
	
	public DeliveryCompanyVO getDeliveryCompany(DeliveryCompanyVO deliveryCompanyVO) throws Exception {
		return (DeliveryCompanyVO) myBatis.selectOne("DeliveryCompany.getDeliveryCompany", deliveryCompanyVO);
	}

	public Page getDeliveryCompanyList(SearchVO searchVO) throws Exception {
		DeliveryCompanyVO deliveryCompanyVO = new DeliveryCompanyVO();
		
		String searchCondition = searchVO.getSearchCondition();
		if(searchCondition == null)
			searchCondition = "";
		
		String searchKeyword = searchVO.getSearchKeyword();
		if(searchKeyword == null)
			searchKeyword = "";
	
		if("".equals(searchCondition) || "0".equals(searchCondition))
			deliveryCompanyVO.setDlvyCompNo("%" + searchKeyword + "%");
		else
			deliveryCompanyVO.setDlvyCompName("%" + searchKeyword + "%");
		
		if(searchVO.getSearchUseYn()!= null && !"A".equals(searchVO.getSearchUseYn()))
			deliveryCompanyVO.setUseYn(searchVO.getSearchUseYn());		
		
		RowBounds rowBounds = new RowBounds((searchVO.getPageIndex() * 3) - 3, 3);	
		List<CategoryVO> deliveryCompanyList = (List) myBatis.selectList("DeliveryCompany.getDeliveryCompanyList", deliveryCompanyVO, rowBounds);
		Integer deliveryCompanyListCnt = (Integer) myBatis.selectOne("DeliveryCompany.getDeliveryCompanyListCnt", deliveryCompanyVO);

		Page resultPage = new Page(deliveryCompanyList, searchVO.getPageIndex(), deliveryCompanyListCnt, 5, 3);
		return resultPage;
	}
}
