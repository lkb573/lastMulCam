package com.sds.emp.services.purchase;

import java.io.Serializable;
import java.sql.Timestamp;

public class DeliveryCompanyVO implements Serializable {
	private static final long serialVersionUID = 1L;

	/* ��۾�ü ��ȣ */
	private String dlvyCompNo;
	/* ��۾�ü�� */
	private String dlvyCompName;
	/* ����� ��ȣ */
	private String businessNo;	
	/* ��۾�ü ���� */
	private String dlvyCompDesc;
	/* ��� ���� */
	private String useYn;
	/* ����� ID */
	private String regId;
	/* ����Ͻ� */
	private Timestamp regDate;
	/* ������ ID */
	private String modifyId;
	/* �����Ͻ� */
	private Timestamp modifyDate;
  
	public String getBusinessNo() {
		return businessNo;
	}

	public void setBusinessNo(String businessNo) {
		this.businessNo = businessNo;
	}

	public String getDlvyCompDesc() {
		return dlvyCompDesc;
	}

	public void setDlvyCompDesc(String dlvyCompDesc) {
		this.dlvyCompDesc = dlvyCompDesc;
	}

	public String getDlvyCompName() {
		return dlvyCompName;
	}

	public void setDlvyCompName(String dlvyCompName) {
		this.dlvyCompName = dlvyCompName;
	}

	public String getDlvyCompNo() {
		return dlvyCompNo;
	}

	public void setDlvyCompNo(String dlvyCompNo) {
		this.dlvyCompNo = dlvyCompNo;
	}

	public Timestamp getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Timestamp modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getModifyId() {
		return modifyId;
	}

	public void setModifyId(String modifyId) {
		this.modifyId = modifyId;
	}

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}

	public String getRegId() {
		return regId;
	}

	public void setRegId(String regId) {
		this.regId = regId;
	}

	public String getUseYn() {
		return useYn;
	}

	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}

	public String toString() {
		return " [dlvyCompNo] " + dlvyCompNo + 
		       " [dlvyCompName] " + dlvyCompName + 
		       " [businessNo] " + businessNo + 
		       " [dlvyCompDesc] " + dlvyCompDesc + 
		       " [useYn] " + useYn + 
		       " [regId] " + regId + 
		       " [regDate] " + regDate + 
		       " [modifyId] " + modifyId + 
		       " [modifyDate] " + modifyDate;
	}
}
