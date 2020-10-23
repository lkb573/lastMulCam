package com.sds.emp.services.purchase;

import com.sds.emp.common.SearchVO;
import com.sds.emp.view.paging.Page;

public interface PurchaseService {
	public int countPurchaseListByDeliveryCompany(String dlvyCompNo) throws Exception;
	public String addPurchase(PurchaseVO purchaseVO) throws Exception;	
	public void updatePurchase(PurchaseVO purchaseVO) throws Exception;
	public Page getPurchaseList(SearchVO searchVO) throws Exception;	
	public PurchaseVO getPurchase(String tranNo) throws Exception;	
}
