package com.sds.emp.services.purchase;

import com.sds.emp.common.SearchVO;
import com.sds.emp.view.paging.Page;

public interface DeliveryCompanyService {
	public String addDeliveryCompany(DeliveryCompanyVO deliveryCompVO) throws Exception;	
	public void updateDeliveryCompany(DeliveryCompanyVO deliveryCompVO) throws Exception;
	public Page getDeliveryCompanyList(SearchVO searchVO) throws Exception;	
	public DeliveryCompanyVO getDeliveryCompany(DeliveryCompanyVO deliveryCompVO) throws Exception;
}
