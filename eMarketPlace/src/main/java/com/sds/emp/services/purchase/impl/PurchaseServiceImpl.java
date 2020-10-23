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
			throw new Exception("�ֹ� ��� ��ȸ ����.", e);
		}
	}

	public String addPurchase(PurchaseVO purchaseVO) throws Exception {
		try {
			String tranNo = pkGenService.getNextPk("TRANSACTION", "TRAN_NO");
			purchaseVO.setTranNo(tranNo);
			purchaseDAO.addPurchase(purchaseVO);
			return tranNo;
		} catch (Exception e) {
			throw new Exception(purchaseVO.getTranNo() + "' ��� ����.", e);
		}
	}

	public void updatePurchase(PurchaseVO purchaseVO) throws Exception {
		try {
			purchaseDAO.updatePurchase(purchaseVO);
		} catch (Exception e) {
			throw new Exception("�ֹ� ���� ���� ����", e);
		}
	}

	public Page getPurchaseList(SearchVO searchVO) throws Exception {
		try {
			return purchaseDAO.getPurchaseList(searchVO);
		} catch (Exception e) {
			throw new Exception("���� ��� ��ȸ�� ����", e);
		}
	}

	public PurchaseVO getPurchase(String tranNo) throws Exception {
		try {
			PurchaseVO purchaseVO = purchaseDAO.getPurchase(tranNo);
			if (purchaseVO == null) {
				throw new Exception("���� ���� ����");
			}
			return purchaseVO;
		} catch (Exception e) {
			throw new Exception("���� ���� ��ȸ ����.", e);
		}
	}
}
