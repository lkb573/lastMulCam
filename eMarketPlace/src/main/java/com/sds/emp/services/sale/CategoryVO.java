package com.sds.emp.services.sale;

import java.io.Serializable;
import java.sql.Timestamp;

public class CategoryVO implements Serializable {
	private static final long serialVersionUID = 1L;

	/* 카테고리 번호 */
	private String categoryNo;

	/* 카테고리명 */
	private String categoryName;

	/* 카테고리 설명 */
	private String categoryDesc;

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
