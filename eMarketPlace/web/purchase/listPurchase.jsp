<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.sds.emp.common.util.EmpUtil"%>
<%@ page import="com.sds.emp.services.purchase.PurchaseVO" %>
<%@ page import="com.sds.emp.common.SearchVO" %>
<%@ page import="com.sds.emp.view.paging.Page"%>
<%@ taglib uri='/WEB-INF/emp-page.tld' prefix='emp' %>
<%@ taglib uri='/WEB-INF/emp-page.tld' prefix='emp' %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<title>구매 목록 조회</title>
<link rel="stylesheet" href="/css/admin.css" type="text/css">
<%
	Page resultPage = (Page)request.getAttribute("resultPage");
	ArrayList<PurchaseVO> purchaseList = (ArrayList)resultPage.getList();

	SearchVO searchVO = (SearchVO)request.getAttribute("searchVO");
	String keyword = EmpUtil.null2str(searchVO.getSearchKeyword());
	String condition = EmpUtil.null2str(searchVO.getSearchCondition());
	String tranStatusCode = searchVO.getSearchTranStatusCode();
	
	//int pageSize = ((Integer)request.getAttribute("pageSize")).intValue();
%>

<script language="JavaScript">
<!--
function fncGetPurchaseList() {
   	document.listForm.action='/getPurchaseList.do';
   	document.listForm.submit();		
}

function fncGetPurchase(tranNo) {
	document.listForm.tranNo.value = tranNo;
   	document.listForm.action='/getPurchase.do';
   	document.listForm.submit();		
}

function fncAddPurchaseView() {
    document.listForm.action='/addPurchaseView.do';
    document.listForm.submit();
}
-->
</script>

</head>

<body bgcolor="#ffffff" text="#000000">

<form name="listForm"  method="post" action="/empListPurchase.do">

<!--************************** 컨텐츠 S *****************************-->

<!-- 타이틀 시작 -->
<table width="100%" height="37" border="0" cellpadding="0"
	cellspacing="0">
	<tr>
		<td width="15" height="37"><img src="/images/ct_ttl_img01.gif" width="15" height="37"></td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left:10px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="93%" class="ct_ttl01">구매 목록조회</td>
				</tr>
			</table>
		</td>
		<td width="12" height="37"><img src="/images/ct_ttl_img03.gif" width="12" height="37"></td>
	</tr>
</table>
<!-- 타이틀 끝 -->

<!-- 검색 시작 -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
	<tr>
		<td align="right">
			<select name="searchCondition"  style="width:100px">
				<option value="0" <%= (condition.equals("0") ? "selected" : "")%>>상품번호</option>
				<option value="1" <%= (condition.equals("1") ? "selected" : "")%>>상품명</option>
			</select>
			<input type="text" name="searchKeyword" value="<%= keyword %>"  style="width:150px; height:19px" required fieldTitle="검색어" maxLength="50">
		</td>
		<td align="right">
			거래상태&nbsp;&nbsp;
		</td>
		<td align="left">
			<select name="searchTranStatusCode"  style="width:80px">		
				<option value="A">전체</option>

				<option value="002" <%= ("002".equals(tranStatusCode) ? "selected" : "")%>>주문접수</option>
				<option value="003" <%= ("003".equals(tranStatusCode) ? "selected" : "")%>>배송완료</option>			
			</select>		
		</td>
		<td align="right" width="70">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;">
						<a href="javascript:fncGetPurchaseList('1');">검색</a>
					</td>
					<td width="14" height="23"><img src="/images/ct_btnbg03.gif" width="14" height="23"></td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<!-- 검색 끝 -->

<!-- 리스트 시작 -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
	<tr>
		<td class="ct_list_b" width="50">No</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="150">거래번호</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="150">상품명</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="100">판매금액</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="100">거래상태</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="150">판매자</td>		
	</tr>
	<tr>
		<td colspan="11" bgcolor="808285" height="1"></td>
	</tr>
	<% 	
		int no = 0;		
		for(int i=0; i < purchaseList.size(); i++) {
			PurchaseVO purchaseVO = (PurchaseVO)purchaseList.get(i);
	%>
	<tr class="ct_list_pop">
		<td align="center"><%=++no%></td>
		<td></td>
		<td align="center"><a href="javascript:fncGetPurchase('<%= purchaseVO.getTranNo() %>');"><%= purchaseVO.getTranNo() %></a></td>
		<td></td>
		<td align="left"><%= purchaseVO.getProdName() %></td>
		<td></td>
		<td align="right"><%= purchaseVO.getSellAmount() %></td>
		<td></td>
		<td align="center"><%= purchaseVO.getTranStatusCodeName() %></td> 
		<td></td>
		<td align="center"><%= purchaseVO.getSellerId() %></td> 
	</tr>
	<tr>
		<td colspan="11" bgcolor="D6D7D6" height="1"></td>
	</tr>
	<% } %>
</table>
<!-- 선택된 tranNO 값 -->
<input type="hidden" name="tranNo" >
<!-- 리스트 끝 -->

<!--  페이지 Navigator 시작 -->
<table width="100%" border="0" cellspacing="0" cellpadding="0"
	style="margin-top:10px;">
	<tr>
		<td align="center">
             <input type="hidden" name="pageIndex" value="<%=resultPage.getCurrentPage()%>">
             <emp:pagenavigator linkUrl="javascript:fncGetPurchaseList(2);" 
             	pages="<%=resultPage%>" 
             	formName="listForm"
             	firstImg="${pageContext.request.contextPath}/images/ct_btn_pre.gif"
             	prevImg="${pageContext.request.contextPath}/images/ct_btn_pre01.gif"
             	lastImg="${pageContext.request.contextPath}/images/ct_btn_next.gif" 
	            nextImg="${pageContext.request.contextPath}/images/ct_btn_next01.gif"/>		
    	</td>
	</tr>
</table>
<!--  페이지 Navigator 끝 -->

</form>
<script language="JavaScript">
document.listForm.searchKeyword.focus();
</script>
</body>
</html>
