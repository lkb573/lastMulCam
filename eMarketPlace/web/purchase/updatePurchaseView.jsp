<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.sds.emp.common.util.EmpUtil"%>
<%@ page import="com.sds.emp.services.purchase.DeliveryCompanyVO" %>
<%@ page import="com.sds.emp.services.purchase.PurchaseVO" %>
<%@ page import="com.sds.emp.services.code.CodeVO" %>
<%@ page import="com.sds.emp.common.SearchVO" %>

<%
	SearchVO searchVO = (SearchVO)request.getAttribute("searchVO");
	PurchaseVO purchaseVO = (PurchaseVO)request.getAttribute("resultPurchaseVO");
	
	ArrayList<DeliveryCompanyVO> deliveryCompanyList = (ArrayList)request.getAttribute("deliveryCompanyList");
	if (deliveryCompanyList == null) deliveryCompanyList = new ArrayList();
	
	ArrayList<CodeVO> paymentOptionList = (ArrayList)request.getAttribute("paymentOptionList");
	if (paymentOptionList == null) paymentOptionList = new ArrayList();	
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<title>�ֹ� ���� ����</title>
<link rel="stylesheet" href="/css/admin.css" type="text/css">
<script language="javascript" src="/javascript/calendar.js"></script>
<script language="javascript" src="/javascript/CommonScript.js"></script>
<script language="JavaScript">
<!--
function fncUpdatePurchase() {
	// Form ��ȿ�� ����
	if(FormValidation(document.detailForm) != false) {		
	    document.detailForm.action='/updatePurchase.do';
	    document.detailForm.submit();
	} 
}

function check_receiptYn(checkReceiptYn) {
	if (checkReceiptYn.checked) {
		document.detailForm.receiptYn.value = "Y";
	} else {
		document.detailForm.receiptYn.value = "N";
	}
}

function resizeImgWidth(imgObj, width) {
    var oldWidth = imgObj.width;
    var oldHeight = imgObj.height;
    if (oldWidth > width) {
        var newWidth = width;
        var newHeight = Math.round(oldHeight * newWidth / oldWidth);
        imgObj.wdith = newWidth;
        imgObj.height = newHeight;
    }
}

function resetData() {
	document.detailForm.reset();
}
-->
</script>


</head>

<body bgcolor="#ffffff" text="#000000">

<form name="detailForm"  method="post" enctype="multipart/form-data">
<input type="hidden" name="tranNo" value="<%=purchaseVO.getTranNo()%>"/>
<!--************************** ������ S *****************************-->

<!-- Ÿ��Ʋ ���� -->
<table width="100%" height="37" border="0" cellpadding="0"
	cellspacing="0">
	<tr>
		<td width="15" height="37"><img src="/images/ct_ttl_img01.gif" width="15" height="37"></td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left:10px;">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="93%" class="ct_ttl01">�ֹ� ��������</td>
				<td width="20%" align="right">&nbsp;</td>
			</tr>
		</table>
		</td>
		<td width="12" height="37"><img src="/images/ct_ttl_img03.gif" width="12" height="37"></td>
	</tr>
</table>
<!-- Ÿ��Ʋ �� -->

<!-- ��ǰ �� ���� -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:13px;">
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">

				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">��ǰ��ȣ</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= EmpUtil.null2str(purchaseVO.getProdNo()) %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">��ǰ��</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01" colspan="2">
						<%= EmpUtil.null2str(purchaseVO.getProdName()) %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">��ǰ�з�</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= EmpUtil.null2str(purchaseVO.getCategoryName()) %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">��������</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= EmpUtil.toDateStr(purchaseVO.getManufactureDay()) %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">������</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= EmpUtil.null2str(purchaseVO.getProdDetail()).replaceAll("\n", "<br>") %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">�Ǹż���</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= EmpUtil.null2str(purchaseVO.getSellQuantity()) %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">�Ǹűݾ�</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= EmpUtil.null2str(purchaseVO.getSellAmount()) %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">A/S ���ɿ���</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= "Y".equals( EmpUtil.null2str(purchaseVO.getAsYn()) ) ? "����" : "�Ұ�" %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
			</table>
		</td>
			
		<td width="300">
			<div style="width:300px;overflow:hidden">
				<img src="<%= EmpUtil.null2str(purchaseVO.getImageFile()) %>" alt="��ǰ �̹���" border="0" onError="this.width=0;" onLoad="resizeImgWidth(this,250)">
			</div>
		</td>
	</tr> 
</table>

<!-- ���� ���̺���� -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:13px;">
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
  	    <td width="104" class="ct_write">������ <img src="/images/ct_icon_red.gif" width="3" height="3"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="receiverId"  style="width:150px; height:19px" value="<%= purchaseVO.getReceiverId() %>">
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
  	    <td width="104" class="ct_write">����ó <img src="/images/ct_icon_red.gif" width="3" height="3"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="receiverPhone"  style="width:150px; height:19px" value="<%= purchaseVO.getReceiverPhone() %>">
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>	
	<tr>
	<td width="104" class="ct_write">��������</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name=dlvyExpectDay  style="width:100px; height:19px" value="<%= purchaseVO.getDlvyExpectDay() %>">
			<a href="javascript:show_calendar('document.detailForm.dlvyExpectDay', document.detailForm.dlvyExpectDay.value)" id="iconCalendar"><img src="/images/ct_icon_date.gif" width="16" height="18" border="0"></a>
		</td>
	</tr>	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
  	    <td width="104" class="ct_write">������ּ� <img src="/images/ct_icon_red.gif" width="3" height="3"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="dlvyAddr"  style="width:150px; height:19px" value="<%= purchaseVO.getDlvyAddr() %>">
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">��۾�ü <img src="/images/ct_icon_red.gif" width="3" height="3"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<select name="dlvyCompNo"  style="width:100px">
			<%  String dlvyCompNo = EmpUtil.null2str(purchaseVO.getDlvyCompNo()); 
				for(int i=0; i < deliveryCompanyList.size(); i++) { 
					DeliveryCompanyVO deliveryCompanyVO = (DeliveryCompanyVO)deliveryCompanyList.get(i);
			%>
				<option value="<%= deliveryCompanyVO.getDlvyCompNo() %>" <%= (dlvyCompNo.equals(deliveryCompanyVO.getDlvyCompNo()) ? "selected" : "") %> ><%= deliveryCompanyVO.getDlvyCompName() %></option>
			<% } %>
			</select>
		</td>
	</tr>	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">��۽� ���ǻ���</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<textarea name="dlvyRequest" cols="50" rows="5"><%= purchaseVO.getDlvyRequest() %></textarea>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
  	    <td width="104" class="ct_write">������ </td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<%  String paymentOption = EmpUtil.null2str(purchaseVO.getPaymentOption()); 
				for(int i=0; i < paymentOptionList.size(); i++) { 
					CodeVO codeVO = (CodeVO)paymentOptionList.get(i); 
			%>
				<%= codeVO.getCodeName() %><input type="radio" name="paymentOption" value="<%= codeVO.getCode() %>" <%= (paymentOption.equals(codeVO.getCode()) ? "checked" : "") %> > &nbsp;&nbsp;&nbsp;				
			<% } %>
		
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">������ �߱޿���</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01"> 
			<input type="checkbox" name="checkReceiptYn" <%= EmpUtil.null2str(purchaseVO.getReceiptYn()).equals("Y") ? "checked" : "" %> onChange="check_receiptYn(this)"> ������ �߱��մϴ�.
			<input type="hidden" name="receiptYn" value="<%= EmpUtil.null2str(purchaseVO.getReceiptYn()) %>">
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
</table>
<!-- ������̺� �� -->

<!-- ���� �����ȸ ȭ���� �˻����� ���� -->
<%-- 
<input type="hidden" name="searchCondition" value="<%= EmpUtil.null2str(searchVO.getSearchCondition()) %>">
<input type="hidden" name="searchKeyword" value="<%= EmpUtil.null2str(searchVO.getSearchKeyword()) %>">
<input type="hidden" name="pageIndex" value="<%= searchVO.getPageIndex() %>">
<input type="hidden" name=searchTranStatusCode value="<%= searchVO.getSearchTranStatusCode() %>">
--%>

<!-- ��ư ���� -->
<table width="100%" border="0" cellspacing="0" cellpadding="0"
	style="margin-top:10px;">
	<tr>
		<td width="53%">
		
		</td>
		<td align="right">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"><a href="javascript:fncUpdatePurchase();">����</a></td>
					<td width="14" height="23"><img src="/images/ct_btnbg03.gif" width="14" height="23"></td>

					<td width="30"></td>	
										
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"><a href="javascript:resetData();">���</a></td>
					<td width="14" height="23"><img src="/images/ct_btnbg03.gif" width="14" height="23"></td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<!-- ��ư �� -->

</form>

</body>
</html>
