package com.sds.emp.services.purchase;

import java.io.Serializable;
import java.sql.Timestamp;

public class PurchaseVO implements Serializable {
	private static final long serialVersionUID = 1L;
	/* 상품번호 */
	private String prodNo;
	/* 상품명 */
	private String prodName;
	/* 판매자ID */
	private String sellerId;
	/* 카테고리 관리번호 */
	private String categoryNo;
	/* 카테고리 이름 */
	private String categoryName;
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
	/* 거래상태코드명 */
	private String tranStatusCodeName;
	/* 등록일시 */
	private Timestamp regDate = new java.sql.Timestamp(new java.util.Date().getTime());
	
	/* 거래번호 */
    private String tranNo;
    /* 상품번호 */
    //private String prodNo;
    /* 판매자ID */
    //private String sellerId;
    /* 구매자ID */
    private String buyerId;
	/* 구매자명 */
	private String buyerName;
    /* 영수증발급여부 */
    private String receiptYn;
    /* 결제방식 */
    private String paymentOption;
    /* 결제방식명 */
    private String paymentOptionName;
    /* 수령자ID */
    private String receiverId;
    /* 수령자명 */
    private String receiverName;
    /* 수령자전화번호 */
    private String receiverPhone;
    /* 배송희망일자 */
    private String dlvyExpectDay;
    /* 배송주소 */
    private String dlvyAddr;
    /* 배송업체번호 */
    private String dlvyCompNo;
    /* 배송업체명 */
    private String dlvyCompName;
    /* 배송요청사항 */
    private String dlvyRequest;
    /* 거래상태코드 */
    //private String tranStatusCode;
    /* 주문일시 */
    private java.sql.Timestamp orderDate = new java.sql.Timestamp(new java.util.Date().getTime());
    /* 배송일시 */
    private java.sql.Timestamp dlvyDate = new java.sql.Timestamp(new java.util.Date().getTime());
	public String getAsYn() {
		return asYn;
	}
	public void setAsYn(String asYn) {
		this.asYn = asYn;
	}
	public String getBuyerId() {
		return buyerId;
	}
	public void setBuyerId(String buyerId) {
		this.buyerId = buyerId;
	}
	public String getBuyerName() {
		return buyerName;
	}
	public void setBuyerName(String buyerName) {
		this.buyerName = buyerName;
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
	public String getDlvyAddr() {
		return dlvyAddr;
	}
	public void setDlvyAddr(String dlvyAddr) {
		this.dlvyAddr = dlvyAddr;
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
	public java.sql.Timestamp getDlvyDate() {
		return dlvyDate;
	}
	public void setDlvyDate(java.sql.Timestamp dlvyDate) {
		this.dlvyDate = dlvyDate;
	}
	public String getDlvyExpectDay() {
		return dlvyExpectDay;
	}
	public void setDlvyExpectDay(String dlvyExpectDay) {
		this.dlvyExpectDay = dlvyExpectDay;
	}
	public String getDlvyRequest() {
		return dlvyRequest;
	}
	public void setDlvyRequest(String dlvyRequest) {
		this.dlvyRequest = dlvyRequest;
	}
	public String getImageFile() {
		return imageFile;
	}
	public void setImageFile(String imageFile) {
		this.imageFile = imageFile;
	}
	public String getManufactureDay() {
		return manufactureDay;
	}
	public void setManufactureDay(String manufactureDay) {
		this.manufactureDay = manufactureDay;
	}
	public java.sql.Timestamp getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(java.sql.Timestamp orderDate) {
		this.orderDate = orderDate;
	}
	public String getPaymentOption() {
		return paymentOption;
	}
	public void setPaymentOption(String paymentOption) {
		this.paymentOption = paymentOption;
	}
	public String getPaymentOptionName() {
		return paymentOptionName;
	}
	public void setPaymentOptionName(String paymentOptionName) {
		this.paymentOptionName = paymentOptionName;
	}
	public String getProdDetail() {
		return prodDetail;
	}
	public void setProdDetail(String prodDetail) {
		this.prodDetail = prodDetail;
	}
	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
	}
	public String getProdNo() {
		return prodNo;
	}
	public void setProdNo(String prodNo) {
		this.prodNo = prodNo;
	}
	public String getReceiptYn() {
		return receiptYn;
	}
	public void setReceiptYn(String receiptYn) {
		this.receiptYn = receiptYn;
	}
	public String getReceiverId() {
		return receiverId;
	}
	public void setReceiverId(String receiverId) {
		this.receiverId = receiverId;
	}
	public String getReceiverName() {
		return receiverName;
	}
	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}
	public String getReceiverPhone() {
		return receiverPhone;
	}
	public void setReceiverPhone(String receiverPhone) {
		this.receiverPhone = receiverPhone;
	}
	public Timestamp getRegDate() {
		return regDate;
	}
	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
	public java.math.BigDecimal getSellAmount() {
		return sellAmount;
	}
	public void setSellAmount(java.math.BigDecimal sellAmount) {
		this.sellAmount = sellAmount;
	}
	public String getSellerId() {
		return sellerId;
	}
	public void setSellerId(String sellerId) {
		this.sellerId = sellerId;
	}
	public java.math.BigDecimal getSellQuantity() {
		return sellQuantity;
	}
	public void setSellQuantity(java.math.BigDecimal sellQuantity) {
		this.sellQuantity = sellQuantity;
	}
	public String getTranNo() {
		return tranNo;
	}
	public void setTranNo(String tranNo) {
		this.tranNo = tranNo;
	}
	public String getTranStatusCode() {
		return tranStatusCode;
	}
	public void setTranStatusCode(String tranStatusCode) {
		this.tranStatusCode = tranStatusCode;
	}
	public String getTranStatusCodeName() {
		return tranStatusCodeName;
	}
	public void setTranStatusCodeName(String tranStatusCodeName) {
		this.tranStatusCodeName = tranStatusCodeName;
	}    
	
	public String toString() {
		return " [prodNo] " + prodNo 
				+ " [prodName] " + prodName
				+ " [sellerId] " + sellerId 
				+ " [categoryNo] " + categoryNo
				+ " [categoryName] " + categoryName
				+ " [prodDetail] " + prodDetail 
				+ " [manufactureDay] " + manufactureDay 
				+ " [asYn] " + asYn 
				+ " [sellQuantity] " + sellQuantity 
				+ " [sellAmount] " + sellAmount
				+ " [imageFile] " + imageFile 
				+ " [tranStatusCode] " + tranStatusCode 
				+ " [tranStatusCodeName] " + tranStatusCodeName
				+ " [regDate] " + regDate
				+ " [tranNo] " + tranNo 
				+ " [prodNo] " + prodNo 
				+ " [sellerId] " + sellerId 
				+ " [buyerId] " + buyerId 
				+ " [buyerName] " + buyerName
				+ " [receiptYn] " + receiptYn 
				+ " [paymentOption] " + paymentOption 
				+ " [paymentOptionName] " + paymentOptionName
				+ " [receiverId] " + receiverId 
				+ " [receiverName] " + receiverName
				+ " [receiverPhone] " + receiverPhone 
				+ " [dlvyExpectDay] " + dlvyExpectDay 
				+ " [dlvyAddr] " + dlvyAddr 
				+ " [dlvyCompNo] " + dlvyCompNo 
				+ " [dlvyCompName] " + dlvyCompName 
				+ " [dlvyRequest] " + dlvyRequest 
				+ " [tranStatusCode] " + tranStatusCode 
				+ " [orderDate] " + orderDate 
				+ " [dlvyDate] " + dlvyDate;
	}
}
