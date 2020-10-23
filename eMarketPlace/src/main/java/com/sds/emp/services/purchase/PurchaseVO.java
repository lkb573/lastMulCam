package com.sds.emp.services.purchase;

import java.io.Serializable;
import java.sql.Timestamp;

public class PurchaseVO implements Serializable {
	private static final long serialVersionUID = 1L;
	/* ��ǰ��ȣ */
	private String prodNo;
	/* ��ǰ�� */
	private String prodName;
	/* �Ǹ���ID */
	private String sellerId;
	/* ī�װ� ������ȣ */
	private String categoryNo;
	/* ī�װ� �̸� */
	private String categoryName;
	/* ��ǰ������ */
	private String prodDetail;
	/* �������� */
	private String manufactureDay;
	/* A/S ���ɿ��� */
	private String asYn;
	/* �Ǹż��� */
	private java.math.BigDecimal sellQuantity = new java.math.BigDecimal(0);
	/* �Ǹűݾ� */
	private java.math.BigDecimal sellAmount = new java.math.BigDecimal(0);
	/* �̹������� */
	private String imageFile;
	/* �ŷ������ڵ� */
	private String tranStatusCode;
	/* �ŷ������ڵ�� */
	private String tranStatusCodeName;
	/* ����Ͻ� */
	private Timestamp regDate = new java.sql.Timestamp(new java.util.Date().getTime());
	
	/* �ŷ���ȣ */
    private String tranNo;
    /* ��ǰ��ȣ */
    //private String prodNo;
    /* �Ǹ���ID */
    //private String sellerId;
    /* ������ID */
    private String buyerId;
	/* �����ڸ� */
	private String buyerName;
    /* �������߱޿��� */
    private String receiptYn;
    /* ������� */
    private String paymentOption;
    /* ������ĸ� */
    private String paymentOptionName;
    /* ������ID */
    private String receiverId;
    /* �����ڸ� */
    private String receiverName;
    /* ��������ȭ��ȣ */
    private String receiverPhone;
    /* ���������� */
    private String dlvyExpectDay;
    /* ����ּ� */
    private String dlvyAddr;
    /* ��۾�ü��ȣ */
    private String dlvyCompNo;
    /* ��۾�ü�� */
    private String dlvyCompName;
    /* ��ۿ�û���� */
    private String dlvyRequest;
    /* �ŷ������ڵ� */
    //private String tranStatusCode;
    /* �ֹ��Ͻ� */
    private java.sql.Timestamp orderDate = new java.sql.Timestamp(new java.util.Date().getTime());
    /* ����Ͻ� */
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
