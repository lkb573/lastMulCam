package com.sds.emp.services.sale.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.emp.common.SearchVO;
import com.sds.emp.services.sale.SaleService;
import com.sds.emp.services.sale.SaleVO;
import com.sds.emp.view.paging.Page;

@Service
public class SaleServiceImpl implements SaleService {

	@Autowired
	private SaleDAO saleDAO;

	public void updateTranStatusCode(SaleVO saleVO) throws Exception {
		try {
			saleDAO.updateTranStatusCode(saleVO);
		} catch (Exception e) {
			throw new Exception(saleVO.getProdName()	+ "' �Ǹ� ������ �ŷ������ڵ� ���� ����.", e);
		}
	}

	public Page getSaleList(SearchVO searchVO) throws Exception {
		try {
			return saleDAO.getSaleList(searchVO);
		} catch (Exception e) {
			throw new Exception("�Ǹ� ��� ��ȸ ����.", e);
		}
	}

	public SaleVO getSale(String prodNo) throws Exception {
		try {
			SaleVO saleVO = saleDAO.getSale(prodNo);

			if (saleVO == null) {
				throw new Exception("�Ǹ� ���� ����");
			}

			return saleVO;
		} catch (Exception e) {
			throw new Exception("�Ǹ� �� ���� ��ȸ ����.", e);		
		}
	}
}
