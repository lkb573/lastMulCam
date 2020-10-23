package com.sds.emp.services.purchase.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.emp.common.SearchVO;
import com.sds.emp.services.keygen.KeyGenService;
import com.sds.emp.services.purchase.DeliveryCompanyService;
import com.sds.emp.services.purchase.DeliveryCompanyVO;
import com.sds.emp.services.purchase.PurchaseService;
import com.sds.emp.view.paging.Page;

@Service
public class DeliveryCompanyServiceImpl implements DeliveryCompanyService {
	@Autowired
	private DeliveryCompanyDAO deliveryCompanyDAO;
	@Autowired
	private PurchaseService purchaseService;
	@Autowired
	private KeyGenService pkGenService;
	
	public String addDeliveryCompany(DeliveryCompanyVO deliveryCompanyVO) throws Exception {
		try {
			String delvyCompNo = pkGenService.getNextPk("DELIVERY_COMPANY", "DLVY_COMP_NO");
			deliveryCompanyVO.setDlvyCompNo(delvyCompNo);
			deliveryCompanyDAO.addDeliveryCompany(deliveryCompanyVO);
			return delvyCompNo;
		} catch (Exception e) {
			throw new Exception(deliveryCompanyVO.getDlvyCompName() + "' 등록 실패.", e);
		}
	}

	public void updateDeliveryCompany(DeliveryCompanyVO deliveryCompanyVO) throws Exception {
		try {
			if ("N".equals(deliveryCompanyVO.getUseYn())&& purchaseService.countPurchaseListByDeliveryCompany(deliveryCompanyVO.getDlvyCompNo()) > 0) {
				throw new Exception("사용중인 배송업체로 삭제 불가.");
			}
			deliveryCompanyDAO.updateDeliveryCompany(deliveryCompanyVO);
		} catch (Exception e) {
			throw new Exception("배송업체 삭제 실패.", e);
		}
	}

	public Page getDeliveryCompanyList(SearchVO searchVO) throws Exception {
		try {
			return deliveryCompanyDAO.getDeliveryCompanyList(searchVO);
		} catch (Exception e) {
			throw new Exception("배송업체 목록 조회 실패.", e);
		}
	}

	public DeliveryCompanyVO getDeliveryCompany(DeliveryCompanyVO deliveryCompanyVO) throws Exception {
		try {
			deliveryCompanyVO = deliveryCompanyDAO.getDeliveryCompany(deliveryCompanyVO);
			if (deliveryCompanyVO == null) {
				throw new Exception("해당 배송업체 정보 없음.");
			}
			return deliveryCompanyVO;
		} catch (Exception e) {
			throw new Exception("배송업체  상세 조회 실패.", e);
		}
	}
}
