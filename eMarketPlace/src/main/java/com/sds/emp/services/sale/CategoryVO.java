package com.sds.emp.services.sale;

import java.io.Serializable;
import java.sql.Timestamp;

public class CategoryVO implements Serializable {
	private static final long serialVersionUID = 1L;

	/* ī�װ� ��ȣ */
	private String categoryNo;

	/* ī�װ��� */
	private String categoryName;

	/* ī�װ� ���� */
	private String categoryDesc;

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

	public String getCategoryDesc() {
		return categoryDesc;
	}

	public void setCategoryDesc(String categoryDesc) {
		this.categoryDesc = categoryDesc;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(String categoryNo) {
		this.categoryNo = categoryNo;
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
		return " [categoryNo] " + categoryNo + " [categoryName] "
				+ categoryName + " [categoryDesc] " + categoryDesc
				+ " [useYn] " + useYn + " [regId] " + regId + " [regDate] "
				+ regDate + " [modifyId] " + modifyId + " [modifyDate] "
				+ modifyDate;
	}
}
