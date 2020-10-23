package com.sds.emp.services.sale;

import java.io.Serializable;
import java.sql.Timestamp;

public class SaleVO implements Serializable {
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
	
	
	public String getTranNo(){
		   return this.tranNo;
		}

	public void setTranNo(String param) {
		this.tranNo = param;
	}

	public String getBuyerId() {
		return this.buyerId;
	}

	public void setBuyerId(String param) {
		this.buyerId = param;
	}

	public String getReceiptYn() {
		return this.receiptYn;
	}

	public void setReceiptYn(String param) {
		this.receiptYn = param;
	}

	public String getPaymentOption() {
		return this.paymentOption;
	}

	public void setPaymentOption(String param) {
		this.paymentOption = param;
	}

	public String getReceiverId() {
		return this.receiverId;
	}

	public void setReceiverId(String param) {
		this.receiverId = param;
	}

	public String getReceiverPhone() {
		return this.receiverPhone;
	}

	public void setReceiverPhone(String param) {
		this.receiverPhone = param;
	}

	public String getDlvyExpectDay() {
		return this.dlvyExpectDay;
	}

	public void setDlvyExpectDay(String param) {
		this.dlvyExpectDay = param;
	}

	public String getDlvyAddr() {
		return this.dlvyAddr;
	}

	public void setDlvyAddr(String param) {
		this.dlvyAddr = param;
	}

	public String getDlvyCompNo() {
		return this.dlvyCompNo;
	}

	public void setDlvyCompNo(String param) {
		this.dlvyCompNo = param;
	}

	public String getDlvyRequest() {
		return this.dlvyRequest;
	}

	public void setDlvyRequest(String param) {
		this.dlvyRequest = param;
	}

	public Timestamp getOrderDate() {
		return this.orderDate;
	}

	public void setOrderDate(Timestamp param) {
		this.orderDate = param;
	}

	public Timestamp getDlvyDate() {
		return this.dlvyDate;
	}

	public void setDlvyDate(Timestamp param) {
		this.dlvyDate = param;
	}

	// 명칭성 조회용 속성 추가
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

	public String getPaymentOptionName() {
		return paymentOptionName;
	}

	public void setPaymentOptionName(String paymentOptionName) {
		this.paymentOptionName = paymentOptionName;
	}

	public String getReceiverName() {
		return receiverName;
	}

	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}

	public String getTranStatusCodeName() {
		return tranStatusCodeName;
	}

	public void setTranStatusCodeName(String tranStatusCodeName) {
		this.tranStatusCodeName = tranStatusCodeName;
	}

	public String getDlvyCompName() {
		return dlvyCompName;
	}

	public void setDlvyCompName(String dlvyCompName) {
		this.dlvyCompName = dlvyCompName;
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
				//+ " [prodNo] " + prodNo 
				//+ " [sellerId] " + sellerId 
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
				//+ " [tranStatusCode] " + tranStatusCode 
				+ " [orderDate] " + orderDate 
				+ " [dlvyDate] " + dlvyDate;
	}

	
}
