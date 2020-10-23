package com.sds.emp.services.purchase.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.emp.common.SearchVO;
import com.sds.emp.services.keygen.KeyGenService;
import com.sds.emp.services.purchase.PurchaseService;
import com.sds.emp.services.purchase.PurchaseVO;
import com.sds.emp.view.paging.Page;

@Service
public class PurchaseServiceImpl implements PurchaseService {
	@Autowired
	private PurchaseDAO purchaseDAO;
	@Autowired
	private KeyGenService pkGenService;

	public int countPurchaseListByDeliveryCompany(String dlvyCompNo) throws Exception {
		try {
			int purchaseCount = purchaseDAO.countPurchaseListByDeliveryCompany(dlvyCompNo);
			return purchaseCount;
		} catch (Exception e) {
			throw new Exception("주문 목록 조회 실패.", e);
		}
	}

	public String addPurchase(PurchaseVO purchaseVO) throws Exception {
		try {
			String tranNo = pkGenService.getNextPk("TRANSACTION", "TRAN_NO");
			purchaseVO.setTranNo(tranNo);
			purchaseDAO.addPurchase(purchaseVO);
			return tranNo;
		} catch (Exception e) {
			throw new Exception(purchaseVO.getTranNo() + "' 등록 실패.", e);
		}
	}

	public void updatePurchase(PurchaseVO purchaseVO) throws Exception {
		try {
			purchaseDAO.updatePurchase(purchaseVO);
		} catch (Exception e) {
			throw new Exception("주문 정보 수정 실패", e);
		}
	}

	public Page getPurchaseList(SearchVO searchVO) throws Exception {
		try {
			return purchaseDAO.getPurchaseList(searchVO);
		} catch (Exception e) {
			throw new Exception("구매 목록 조회에 실패", e);
		}
	}

	public PurchaseVO getPurchase(String tranNo) throws Exception {
		try {
			PurchaseVO purchaseVO = purchaseDAO.getPurchase(tranNo);
			if (purchaseVO == null) {
				throw new Exception("구매 정보 없음");
			}
			return purchaseVO;
		} catch (Exception e) {
			throw new Exception("구매 정보 조회 실패.", e);
		}
	}
}
