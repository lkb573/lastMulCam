<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.sds.emp.common.util.EmpUtil"%>
<%@ page import="com.sds.emp.services.sale.ProductVO"%>
<%@ page import="com.sds.emp.common.SearchVO" %>

<%
	SearchVO searchVO = (SearchVO)request.getAttribute("searchVO");
	ProductVO productVO = (ProductVO)request.getAttribute("resultProductVO");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<title>��ǰ ����ȸ</title>
<link rel="stylesheet" href="/css/admin.css" type="text/css">
<script language="javascript" src="/javascript/CommonScript.js"></script>
<script language="JavaScript">
<!--
function fncListProductSearch() {
	document.detailForm.action='/getProductSearchList.do';
	document.detailForm.submit();
}

function fncAddPurchaseView() { 
   	document.detailForm.action='/addPurchaseView.do';
   	document.detailForm.submit();		
}

function resetData() {
	document.detailForm.reset();
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
-->
</script>


</head>

<body bgcolor="#ffffff" text="#000000">

<form name="detailForm"  method="post" enctype="multipart/form-data">
<input type="hidden" name="prodNo" value="<%= productVO.getProdNo() %>" />
<!--************************** ������ S *****************************-->

<!-- Ÿ��Ʋ ���� -->
<table width="100%" height="37" border="0" cellpadding="0"
	cellspacing="0">
	<tr>
		<td width="15" height="37"><img src="/images/ct_ttl_img01.gif" width="15" height="37"></td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left:10px;">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="93%" class="ct_ttl01">��ǰ ����ȸ</td>
				<td width="20%" align="right">&nbsp;</td>
			</tr>
		</table>
		</td>
		<td width="12" height="37"><img src="/images/ct_ttl_img03.gif" width="12" height="37"></td>
	</tr>
</table>
<!-- Ÿ��Ʋ �� -->

<!-- �� ���̺���� -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:13px;">
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0"> 
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">��ǰ��ȣ </td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= productVO.getProdNo() %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">��ǰ�� </td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
			   			<%= productVO.getProdName() %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">��ǰ�з�</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= productVO.getCategoryNo() %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>	
				<tr>
					<td width="104" class="ct_write">��������</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= EmpUtil.null2str(productVO.getManufactureDay(), "") %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">������</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= EmpUtil.null2str(productVO.getProdDetail()).replaceAll("\n", "<br>") %>
					</td>
				</tr>					
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>	
				<tr>
					<td width="104" class="ct_write">�Ǹż���</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= productVO.getSellQuantity() %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>		
				<tr>
					<td width="104" class="ct_write">�Ǹűݾ�</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= productVO.getSellAmount() %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>	
				<tr>
					<td width="104" class="ct_write">A/S ���ɿ���</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= ("Y".equals(productVO.getAsYn()) ? "����" : "�Ұ�")%>					
					</td>
				</tr> 
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
			</table>
		</td>
		
		<td width="300" valign="high">
			<div style="width:300px;overflow:hidden">
				<img src="images/upload_files/productImage/<%= EmpUtil.null2str(productVO.getImageFile()) %>" alt="��ǰ �̹���" border="0" onError="this.width=0;" onLoad="resizeImgWidth(this,250)">
			</div>
		</td>
	</tr>				
</table>
<!-- ������̺� �� -->

<!-- ���� �����ȸ ȭ���� �˻����� ���� -->
<%--  
<input type="hidden" name="searchCondition" value="<%= EmpUtil.null2str(searchVO.getSearchCondition()) %>">
<input type="hidden" name="searchKeyword" value="<%= EmpUtil.null2str(searchVO.getSearchKeyword()) %>">
<input type="hidden" name="pageIndex" value="<%= searchVO.getPageIndex() %>">
<input type="hidden" name="searchAsYn" value="<%= searchVO.getSearchAsYn() %>">
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
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"><a href="javascript:fncListProductSearch();">���</a></td>
					<td width="14" height="23"><img src="/images/ct_btnbg03.gif" width="14" height="23"></td>

					<td width="30"></td>
										
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"><a href="javascript:fncAddPurchaseView();">����</a></td>
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
