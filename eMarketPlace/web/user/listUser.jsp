<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="com.sds.emp.view.paging.Page"%>
<%@ page import="com.sds.emp.common.util.EmpUtil"%>
<%@ page import="com.sds.emp.services.user.UserVO" %>
<%@ page import="com.sds.emp.common.SearchVO" %>
<%@ page import="java.util.List" %>
<%@ taglib uri='/WEB-INF/emp-page.tld' prefix='emp' %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<title>회원 목록조회</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="/css/admin.css" type="text/css">

<%
	Page resultPage = (Page)request.getAttribute("resultPage");
	List<UserVO> resultList = (List)resultPage.getList();	

	SearchVO searchVO = (SearchVO)request.getAttribute("searchVO");
	String keyword = EmpUtil.null2str(searchVO.getSearchKeyword());
	String condition = EmpUtil.null2str(searchVO.getSearchCondition());
	
	int pageSize = ((Integer)request.getAttribute("pageSize")).intValue();
%>

<script language="javascript" src="/javascript/CommonScript.js"></script>
<script language="JavaScript">
<!--
function fncAddUserView() {
    document.listForm.action='/addUserView.do';
    document.listForm.submit();
}

function fncGetUserList(arg) {
	// Form 유효성 검증
	if(FormValidation(document.listForm) != false) {
		if(arg == "1")
			document.listForm.pageIndex.value = 1;
	   	document.listForm.action='/getUserList.do';
	   	document.listForm.submit();		
	}
}

function fncGetUser(userId) {
	document.listForm.userId.value = userId;
   	document.listForm.action='/getUser.do';
   	document.listForm.submit();		
}
-->
</script>
</head>

<body bgcolor="#ffffff" text="#000000">

<form name="listForm" method="get" action="/getUserList.do">

<!--************************** 컨텐츠 S *****************************-->

<!-- 타이틀 시작 -->
<table width="100%" height="37" border="0" cellpadding="0"
	cellspacing="0">
	<tr>
		<td width="15" height="37"><img src="/images/ct_ttl_img01.gif" width="15" height="37"></td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left:10px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="93%" class="ct_ttl01">회원 목록조회</td>
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
			<select name="searchCondition"  style="width:80px">
				<option value="0" <%= (condition.equals("0") ? "selected" : "")%>>회원ID</option>
				<option value="1" <%= (condition.equals("1") ? "selected" : "")%>>회원명</option>
			</select>
			<input type="text" name="searchKeyword" value="<%= keyword %>"  style="width:200px; height:19px">
		</td>
		<td align="right" width="70">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;">
						<a href="javascript:fncGetUserList();">검색</a>
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
		<td class="ct_list_b" width="100">No</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="150">회원ID</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="150">회원명</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="150">주민등록번호</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="150">휴대전화번호</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b">이메일</td>		
	</tr>
	<tr>
		<td colspan="11" bgcolor="808285" height="1"></td>
	</tr>
	<% 	int currentPageIndex = resultPage.getCurrentPage();
		int no = (currentPageIndex - 1) * pageSize;
		
		for(int i=0; i < resultList.size(); i++) {
			UserVO userVO = resultList.get(i);
	%>
	<tr class="ct_list_pop">
		<td align="center"><%= ++no %></td>
		<td></td>
		<td align="left"><a href="javascript:fncGetUser('<%= userVO.getUserId() %>');"><%= userVO.getUserId() %></a></td>
		<td></td>
		<td align="left"><%= userVO.getUserName() %></td>
		<td></td>
		<td align="center" style="padding-right:3px;"><%= EmpUtil.toSsnStr(userVO.getSsn()) %></td>
		<td></td>
		<td align="center"><%= EmpUtil.null2str(userVO.getCellPhone()) %></td>
		<td></td>
		<td align="left"><%= EmpUtil.null2str(userVO.getEmail()) %>
		</td>		
	</tr>
	<tr>
		<td colspan="11" bgcolor="D6D7D6" height="1"></td>
	</tr>
	<% } %>
</table>
<!-- 선택된 userId 값 -->
<input type="hidden" name="userId" >
<!-- 리스트 끝 -->

<!--  페이지 Navigator 시작 -->
<table width="100%" border="0" cellspacing="0" cellpadding="0"
	style="margin-top:10px;">
	<tr>
		<td align="center">
             <input type="hidden" name="pageIndex" value="<%=resultPage.getCurrentPage()%>">
             <emp:pagenavigator linkUrl="javascript:fncGetUserList(2);" 
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

<!-- 버튼 시작 -->
<table width="100%" border="0" cellspacing="0" cellpadding="0"
	style="margin-top:10px;">
	<tr>
		<td align="right">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"><a href="javascript:fncAddUserView();">등록요청</a></td>
					<td width="14" height="23"><img src="/images/ct_btnbg03.gif" width="14" height="23"></td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<!-- 버튼 끝 -->
</form>
<script language="JavaScript">
document.listForm.searchKeyword.focus();
</script>
</body>
</html>
