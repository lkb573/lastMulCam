<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.sds.emp.common.util.EmpUtil"%>
<%@ page import="com.sds.emp.services.sale.SaleVO" %>
<%@ page import="com.sds.emp.common.SearchVO" %>
<%@ page import="com.sds.emp.services.code.CodeVO" %>
<%@ page import="com.sds.emp.view.paging.Page" %>
<%@ taglib uri='/WEB-INF/emp-page.tld' prefix='emp' %> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<title>�Ǹ� ��� ��ȸ</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="/css/admin.css" type="text/css">

<%
	ArrayList<CodeVO> tranStatusCodeList = (ArrayList)request.getAttribute("tranStatusCodeList");
	if (tranStatusCodeList == null) 
		tranStatusCodeList = new ArrayList<CodeVO>();

	Page resultPage = (Page)request.getAttribute("resultPage");
	ArrayList<SaleVO> resultList = (ArrayList)resultPage.getList();
	
	SearchVO searchVO = (SearchVO)request.getAttribute("searchVO");
	String keyword = EmpUtil.null2str(searchVO.getSearchKeyword());
	String condition = EmpUtil.null2str(searchVO.getSearchCondition());
	String tranStatusCode = EmpUtil.null2str(searchVO.getSearchTranStatusCode());
	
	int pageSize = ((Integer)request.getAttribute("pageSize")).intValue();
%>

<script language="javascript" src="/javascript/CommonScript.js"></script>
<script language="JavaScript">
<!--
function fncGetSaleList(arg) {
	// Form ��ȿ�� ����
	if(FormValidation(document.listForm) != false) {
		if(arg == "1")
			document.listForm.pageIndex.value = 1;
	   	document.listForm.action='/getSaleList.do';
	   	document.listForm.submit();	
	}	
}

function fncGetSale(prodNo) {
	document.listForm.prodNo.value = prodNo;
   	document.listForm.action='/getSale.do';
   	document.listForm.submit();		
}

-->
</script>

</head>

<body bgcolor="#ffffff" text="#000000">

<form name="listForm"  method="post">

<!--************************** ������ S *****************************-->

<!-- Ÿ��Ʋ ���� -->
<table width="100%" height="37" border="0" cellpadding="0"
	cellspacing="0">
	<tr>
		<td width="15" height="37"><img src="/images/ct_ttl_img01.gif" width="15" height="37"></td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left:10px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="93%" class="ct_ttl01">�Ǹ� �����ȸ</td>
				</tr>
			</table>
		</td>
		<td width="12" height="37"><img src="/images/ct_ttl_img03.gif" width="12" height="37"></td>
	</tr>
</table>
<!-- Ÿ��Ʋ �� -->

<!-- �˻� ���� -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
	<tr>
		<td align="right">
			<select name="searchCondition"  style="width:100px">
				<option value="0" <%= (condition.equals("0") ? "selected" : "")%>>��ǰ��ȣ</option>
				<option value="1" <%= (condition.equals("1") ? "selected" : "")%>>��ǰ��</option>
			</select>
			<input type="text" name="searchKeyword" value="<%= keyword %>"  style="width:150px; height:19px" fieldTitle="�˻���" maxLength="50" char="s">
		</td>
		<td align="right" width="150">
			�ŷ�����
			<select name="searchTranStatusCode"  style="width:80px">
				<option value="A">��ü</option>
				<%	
					for(int i=0; i < tranStatusCodeList.size(); i++) { 
						CodeVO codeVO = (CodeVO)tranStatusCodeList.get(i);
				%>
					<option value="<%= codeVO.getCode() %>" <%= (tranStatusCode.equals(codeVO.getCode()) ? "selected" : "") %> ><%= codeVO.getCodeName() %></option>
				<% } %>	
			</select>		
		</td>
		<td align="right" width="70">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;">
						<a href="javascript:fncGetSaleList();">�˻�</a>
					</td>
					<td width="14" height="23"><img src="/images/ct_btnbg03.gif" width="14" height="23"></td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<!-- �˻� �� -->

<!-- ����Ʈ ���� -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
	<tr>
		<td class="ct_list_b" width="50">No</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="150">��ǰ��ȣ</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="150">��ǰ��</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="100">�Ǹűݾ�</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="100">�ŷ�����</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="150">�������</td>
	</tr>
	<tr>
		<td colspan="11" bgcolor="808285" height="1"></td>
	</tr>
	<% 	int currentPageIndex = resultPage.getCurrentPage();
		int no = (currentPageIndex - 1) * pageSize;
		
		for(int i=0; i < resultList.size(); i++) {
			SaleVO saleVO = resultList.get(i);
	%>
	<tr class="ct_list_pop">
		<td align="center"><%= ++no %></td>
		<td></td>
		<td align="center"><a href="javascript:fncGetSale('<%= saleVO.getProdNo() %>');"><%= saleVO.getProdNo() %></a></td>
		<td></td>
		<td align="left"><%= saleVO.getProdName() %></td>
		<td></td>
		<td align="right" style="padding-right:3px;"><%= EmpUtil.toAmountStr(saleVO.getSellAmount()) %></td>
		<td></td>
		<td align="center"><%= EmpUtil.null2str(saleVO.getTranStatusCodeName()) %></td> 
		<td></td>
		<td align="center"><%= EmpUtil.toDateStr(saleVO.getRegDate()).substring(0, 10) %></td> 
	</tr>
	<tr>
		<td colspan="11" bgcolor="D6D7D6" height="1"></td>
	</tr>
	<% } %>
</table>
<!-- ���õ� prodNo �� -->
<input type="hidden" name="prodNo" >
<!-- ����Ʈ �� -->

<!--  ������ Navigator ���� -->
<table width="100%" border="0" cellspacing="0" cellpadding="0"
	style="margin-top:10px;">
	<tr>
		<td align="center">
             <input type="hidden" name="pageIndex" value="<%=resultPage.getCurrentPage()%>">
             <emp:pagenavigator linkUrl="javascript:fncGetSaleList(2);" 
             	pages="<%=resultPage%>" 
             	formName="listForm"/>		
    	</td>
	</tr>
</table>
<!--  ������ Navigator �� -->

</form>
<script language="JavaScript">
document.listForm.searchKeyword.focus();
</script>
</body>
</html>
