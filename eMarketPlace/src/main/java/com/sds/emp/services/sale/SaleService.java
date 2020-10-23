package com.sds.emp.services.sale;

import com.sds.emp.common.SearchVO;
import com.sds.emp.view.paging.Page;

public interface SaleService {
	public void updateTranStatusCode(SaleVO saleVO) throws Exception;
	public Page getSaleList(SearchVO searchVO) throws Exception;	
	public SaleVO getSale(String prodNo) throws Exception;	
}
