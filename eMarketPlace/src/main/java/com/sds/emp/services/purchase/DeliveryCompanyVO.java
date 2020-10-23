package com.sds.emp.services.purchase;

import java.io.Serializable;
import java.sql.Timestamp;

public class DeliveryCompanyVO implements Serializable {
	private static final long serialVersionUID = 1L;

	/* 배송업체 번호 */
	private String dlvyCompNo;
	/* 배송업체명 */
	private String dlvyCompName;
	/* 사업자 번호 */
	private String businessNo;	
	/* 배송업체 설명 */
	private String dlvyCompDesc;
	/* 사용 여부 */
	private String useYn;
	/* 등록자 ID */
	private String regId;
	/* 등록일시 */
	private Timestamp regDate;
	/* 수정자 ID */
	private String modifyId;
	/* 수정일시 */
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
