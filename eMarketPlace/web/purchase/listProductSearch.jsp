<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.sds.emp.common.util.EmpUtil"%>
<%@ page import="com.sds.emp.services.sale.ProductVO"%>
<%@ page import="com.sds.emp.common.SearchVO" %>
<%@ page import="com.sds.emp.view.paging.Page"%>
<%@ taglib uri='/WEB-INF/emp-page.tld' prefix='emp' %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head> 
<title>��ǰ ��� ��ȸ</title>
<link rel="stylesheet" href="/css/admin.css" type="text/css">

<%
	Page resultPage = (Page)request.getAttribute("resultPage");
	ArrayList<ProductVO> productSearchList = (ArrayList)resultPage.getList();	

	SearchVO searchVO = (SearchVO)request.getAttribute("searchVO");
	String keyword = EmpUtil.null2str(searchVO.getSearchKeyword());
	String condition = EmpUtil.null2str(searchVO.getSearchCondition()); 
	String asYn = EmpUtil.null2str(searchVO.getSearchAsYn()); 
	
	//int pageSize = ((Integer)request.getAttribute("pageSize")).intValue();
%>

<script language="JavaScript">
<!--
function fncGetProductSearchList() {
   	document.listForm.action='/getProductSearchList.do';
   	document.listForm.submit();		
}

function fncGetProductSearch(prodNo) {
	document.listForm.prodNo.value = prodNo;
   	document.listForm.action='/getProductSearch.do';
   	document.listForm.submit();		
}

function fncAddProductSearchView() {
    document.listForm.action='/addProductSearchView.do';
    document.listForm.submit();
}
-->
</script>

</head>

<body bgcolor="#ffffff" text="#000000">

<form name="listForm"  method="post" action="/empListProductSearch.do">

<!--************************** ������ S *****************************-->

<!-- Ÿ��Ʋ ���� -->
<table width="100%" height="37" border="0" cellpadding="0"
	cellspacing="0">
	<tr>
		<td width="15" height="37"><img src="/images/ct_ttl_img01.gif" width="15" height="37"></td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left:10px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="93%" class="ct_ttl01">��ǰ �����ȸ</td>
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
			<input type="text" name="searchKeyword" value="<%= keyword %>"  style="width:150px; height:19px">
		</td>
		<td align="right">
			A/S ����&nbsp;&nbsp;
		</td>
		<td align="left">
			<select name="searchAsYn"  style="width:80px">
				<option value="A">��ü</option>
				<option value="Y" <%= ("Y".equals(asYn) ? "selected" : "")%>>����</option>
				<option value="N" <%= ("N".equals(asYn) ? "selected" : "")%>>�Ұ�</option>				
			</select>		
		</td>
		<td align="right" width="70">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;">
						<a href="javascript:fncGetProductSearchList();">�˻�</a>
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
		<td class="ct_list_b" width="100">A/S ����</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="150">�������</td>
	</tr>
	<tr>
		<td colspan="11" bgcolor="808285" height="1"></td>
	</tr>
	<% 	
		int no = 0;
		
		for(int i=0; i < productSearchList.size(); i++) {
			ProductVO productSearchVO = (ProductVO)productSearchList.get(i);
	%>
	<tr class="ct_list_pop">
		<td align="center"><%= ++no %></td>
		<td></td>
		<td align="center"><a href="javascript:fncGetProductSearch('<%= productSearchVO.getProdNo() %>');"><%= productSearchVO.getProdNo() %></a></td>
		<td></td>
		<td align="left"><%= productSearchVO.getProdName() %></td>
		<td></td>
		<td align="right"><%= productSearchVO.getSellAmount() %></td>
		<td></td>
		<td align="center"><%= "Y".equals(productSearchVO.getAsYn()) ? "����" : "�Ұ�" %></td>
		<td></td>
		<td align="center"><%= EmpUtil.toDateStr(productSearchVO.getRegDate()).substring(0, 10) %></td> 
	</tr>
	<tr>
		<td colspan="11" bgcolor="D6D7D6" height="1"></td>
	</tr>
	<% } %>
</table>
<!-- ���õ� userId �� -->
<input type="hidden" name="prodNo" >
<!-- ����Ʈ �� -->

<!--  ������ Navigator ���� -->
<table width="100%" border="0" cellspacing="0" cellpadding="0"
	style="margin-top:10px;">
	<tr>
		<td align="center">
             <input type="hidden" name="pageIndex" value="<%=resultPage.getCurrentPage()%>">
             <emp:pagenavigator linkUrl="javascript:fncGetProductSearchList(2);" 
             	pages="<%=resultPage%>" 
             	formName="listForm"
             	firstImg="${pageContext.request.contextPath}/images/ct_btn_pre.gif" 
	            prevImg="${pageContext.request.contextPath}/images/ct_btn_pre01.gif" 
	            lastImg="${pageContext.request.contextPath}/images/ct_btn_next.gif" 
	            nextImg="${pageContext.request.contextPath}/images/ct_btn_next01.gif" />		
    	</td>
	</tr>
</table>
<!--  ������ Navigator �� -->

<!-- ��ư ���� -->
<table width="100%" border="0" cellspacing="0" cellpadding="0"
	style="margin-top:10px;">
	<tr>
		<td align="right">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"><a href="javascript:fncAddProductSearchView();">��Ͽ�û</a></td>
					<td width="14" height="23"><img src="/images/ct_btnbg03.gif" width="14" height="23"></td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<!-- ��ư �� -->

</form>
<script language="JavaScript">
document.listForm.searchKeyword.focus();
</script>
</body>
</html>
