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
			throw new Exception(saleVO.getProdName()	+ "' 판매 정보의 거래상태코드 수정 실패.", e);
		}
	}

	public Page getSaleList(SearchVO searchVO) throws Exception {
		try {
			return saleDAO.getSaleList(searchVO);
		} catch (Exception e) {
			throw new Exception("판매 목록 조회 실패.", e);
		}
	}

	public SaleVO getSale(String prodNo) throws Exception {
		try {
			SaleVO saleVO = saleDAO.getSale(prodNo);

			if (saleVO == null) {
				throw new Exception("판매 정보 없음");
			}

			return saleVO;
		} catch (Exception e) {
			throw new Exception("판매 상세 정보 조회 실패.", e);		
		}
	}
}
