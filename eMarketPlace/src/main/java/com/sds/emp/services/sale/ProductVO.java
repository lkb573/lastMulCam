package com.sds.emp.services.sale;

import java.io.Serializable;
import java.sql.Timestamp;

public class ProductVO implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/* 상품번호 */
	private String prodNo;
	/* 상품명 */
	private String prodName;
	/* 판매자ID */
	private String sellerId;
	/* 카테고리 관리번호 */
	private String categoryNo;
	/* 상품상세정보 */
	private String prodDetail;
	/* 제조일자 */
	private String manufactureDay;
	/* A/S 가능여부 */
	private String asYn;
	/* 판매수량 */
	private java.math.BigDecimal sellQuantity = new java.math.BigDecimal(0);
	/* 판매금액 */
	private java.math.BigDecimal sellAmount = new java.math.BigDecimal(0);
	/* 이미지파일 */
	private String imageFile;
	/* 거래상태코드 */
	private String tranStatusCode;
	/* 등록일시 */
	private Timestamp regDate = new java.sql.Timestamp(new java.util.Date().getTime());

	public String getProdNo() {
		return this.prodNo;
	}

	public void setProdNo(String param) {
		this.prodNo = param;
	}

	public String getProdName() {
		return this.prodName;
	}

	public void setProdName(String param) {
		this.prodName = param;
	}

	public String getSellerId() {
		return this.sellerId;
	}

	public void setSellerId(String param) {
		this.sellerId = param;
	}

	public String getCategoryNo() {
		return this.categoryNo;
	}

	public void setCategoryNo(String param) {
		this.categoryNo = param;
	}

	public String getProdDetail() {
		return this.prodDetail;
	}

	public void setProdDetail(String param) {
		this.prodDetail = param;
	}

	public String getManufactureDay() {
		return this.manufactureDay;
	}

	public void setManufactureDay(String param) {
		this.manufactureDay = param;
	}

	public String getAsYn() {
		return this.asYn;
	}

	public void setAsYn(String param) {
		this.asYn = param;
	}

	public java.math.BigDecimal getSellQuantity() {
		return this.sellQuantity;
	}

	public void setSellQuantity(java.math.BigDecimal param) {
		this.sellQuantity = param;
	}

	public java.math.BigDecimal getSellAmount() {
		return this.sellAmount;
	}

	public void setSellAmount(java.math.BigDecimal param) {
		this.sellAmount = param;
	}

	public String getImageFile() {
		return this.imageFile;
	}

	public void setImageFile(String param) {
		this.imageFile = param;
	}

	public String getTranStatusCode() {
		return this.tranStatusCode;
	}

	public void setTranStatusCode(String param) {
		this.tranStatusCode = param;
	}

	public Timestamp getRegDate() {
		return this.regDate;
	}

	public void setRegDate(Timestamp param) {
		this.regDate = param;
	}

	public String toString() {
		return " [prodNo] " + prodNo 
				+ " [prodName] " + prodName
				+ " [sellerId] " + sellerId 
				+ " [categoryNo] " + categoryNo
				+ " [prodDetail] " + prodDetail 
				+ " [manufactureDay] " + manufactureDay 
				+ " [asYn] " + asYn 
				+ " [sellQuantity] " + sellQuantity 
				+ " [sellAmount] " + sellAmount
				+ " [imageFile] " + imageFile 
				+ " [tranStatusCode] " + tranStatusCode 
				+ " [regDate] " + regDate;
	}
}
