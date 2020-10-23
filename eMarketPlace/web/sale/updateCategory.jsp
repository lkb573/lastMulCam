<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.sds.emp.common.util.EmpUtil"%>
<%@ page import="com.sds.emp.services.sale.CategoryVO" %>
<%@ page import="com.sds.emp.common.SearchVO" %>

<%
	CategoryVO categoryVO = (CategoryVO)request.getAttribute("resultCategoryVO");
	SearchVO searchVO = (SearchVO)request.getAttribute("searchVO");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<title>카테고리 정보 수정</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="/css/admin.css" type="text/css">

<script language="javascript" src="/javascript/CommonScript.js"></script>
<script language="JavaScript">
<!--
function fncUpdateCategory() {
	// Form 유효성 검증
	if(FormValidation(document.detailForm) != false) {		
	    document.detailForm.action='/updateCategory.do';
	    document.detailForm.submit();
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
<input type="hidden" name="name" value="abc"/>
<!--************************** 컨텐츠 S *****************************-->

<!-- 타이틀 시작 -->
<table width="100%" height="37" border="0" cellpadding="0"
	cellspacing="0">
	<tr>
		<td width="15" height="37"><img src="/images/ct_ttl_img01.gif" width="15" height="37"></td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left:10px;">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="93%" class="ct_ttl01">카테고리 정보수정</td>
				<td width="20%" align="right">&nbsp;</td>
			</tr>
		</table>
		</td>
		<td width="12" height="37"><img src="/images/ct_ttl_img03.gif" width="12" height="37"></td>
	</tr>
</table>
<!-- 타이틀 끝 -->

<!-- 수정 테이블시작 -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:13px;">
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">카테고리 번호 </td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="categoryNo" class="ct_input_bg" style="width:150px; height:19px" value="<%= categoryVO.getCategoryNo() %>" readonly maxLength="20" char="s">
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">카테고리명 <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="categoryName"  style="width:150px; height:19px" value="<%= categoryVO.getCategoryName() %>" required fieldTitle="카테고리명" maxLength="50" minLength="2" char="sn">
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">사용여부</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<select name="useYn"  style="width:80px">
				<option value="Y" <%= ("Y".equals(categoryVO.getUseYn()) ? "selected" : "")%>>사용</option>
				<option value="N" <%= ("N".equals(categoryVO.getUseYn()) ? "selected" : "")%>>중지</option>				
			</select>			
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">카테고리 설명</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<textarea name="categoryDesc" cols="50" rows="5"><%= categoryVO.getCategoryDesc() %></textarea>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
</table>
<!-- 등록테이블 끝 -->

<%-- 
<!-- 기존 목록조회 화면의 검색조건 유지 -->
<input type="hidden" name="searchCondition" value="<%= EmpUtil.null2str(searchVO.getSearchCondition()) %>">
<input type="hidden" name="searchKeyword" value="<%= EmpUtil.null2str(searchVO.getSearchKeyword()) %>">
<input type="hidden" name="searchUseYn" value="<%= searchVO.getSearchUseYn() %>">
--%>

<!-- 버튼 시작 -->
<table width="100%" border="0" cellspacing="0" cellpadding="0"
	style="margin-top:10px;">
	<tr>
		<td width="53%">
		
		</td>
		<td align="right">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"><a href="javascript:fncUpdateCategory();">수정</a></td>
					<td width="14" height="23"><img src="/images/ct_btnbg03.gif" width="14" height="23"></td>
					
					<td width="30"></td>	
										
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"><a href="javascript:resetData();">취소</a></td>
					<td width="14" height="23"><img src="/images/ct_btnbg03.gif" width="14" height="23"></td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<!-- 버튼 끝 -->

</form>

<script language="JavaScript">
document.getElementById("categoryName").focus();
</script>

</body>
</html>
