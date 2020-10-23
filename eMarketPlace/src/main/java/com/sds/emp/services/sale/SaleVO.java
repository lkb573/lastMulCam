package com.sds.emp.services.sale;

import java.io.Serializable;
import java.sql.Timestamp;

public class SaleVO implements Serializable {
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

	// ��Ī�� ��ȸ�� �Ӽ� �߰�
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
