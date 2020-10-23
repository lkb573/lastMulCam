<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="com.sds.emp.common.util.EmpUtil"%>
<%@ page import="com.sds.emp.services.user.UserVO" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<title>checkDuplication</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="/css/admin.css" type="text/css">

<%
	UserVO userVO = (UserVO)request.getAttribute("userVO");
	String userId = userVO != null ? EmpUtil.null2str(userVO.getUserId()) : "";
	Boolean duplicated = (Boolean)request.getAttribute("duplicated");
	String displayResult = "";
	if(duplicated != null) {
		if (duplicated.booleanValue()) {
			displayResult = "이미 사용중인 아이디입니다.";
			userId = "";
		} else {
			displayResult = "사용 가능한 아이디입니다.";
		}
	}
%>

<script language="javascript" src="/javascript/CommonScript.js"></script>
<script language="JavaScript">
<!--
window.onload = function(){
	document.getElementById("userId").focus();
	document.getElementById("userId").onkeydown = function(){
		if(event.keyCode == '13') fncCheckDuplication();
	}
}

function fncCheckDuplication() {
	// Form 유효성 검증
	if(FormValidation(document.detailForm) != false) {
		
	    document.detailForm.action='/checkDuplication.do';
	    document.detailForm.submit();
	}
	document.getElementById("userId").focus(); 
}

function fncUseId() {
	if(opener) {
		opener.document.detailForm.userId.value = "<%= userId %>";
	}
	
	window.close();
}
-->
</script>


</head>

<body bgcolor="#ffffff" text="#000000">

<form name="detailForm"  method="post">
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
				<td width="93%" class="ct_ttl01">ID중복확인</td>
				<td width="20%" align="right">&nbsp;</td>
			</tr>
		</table>
		</td>
		<td width="12" height="37"><img src="/images/ct_ttl_img03.gif" width="12" height="37"></td>
	</tr>
</table>
<!-- 타이틀 끝 -->

<!-- 검색결과 시작 -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td height="32" style="padding-left:12px;">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:3px;">
			<tr>
				<td width="8" style="padding-bottom:3px;"><img src="/images/ct_bot_ttl01.gif" width="4" height="7"></td>
				<td class="ct_ttl02"><%= displayResult %></td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td background="/images/ct_line_ttl.gif" height="1"></td>
	</tr>
</table>
<!-- 검색결과 끝 -->

<!-- 등록 테이블시작 -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:13px;">
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">아이디 <img src="/images/ct_icon_red.gif" width="3" height="3"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<!-- 테이블 시작 -->
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="105">
						<input type="text" name="userId" id="userId" style="width:100px; height:19px" value="<%= userId %>">
					</td>
					<td>
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="4" height="21"><img src="/images/ct_btng01.gif" width="4" height="21"></td>
								<td align="center" background="/images/ct_btng02.gif" class="ct_btn" style="padding-top:3px;"><a href="javascript:fncCheckDuplication();">중복확인</a></td>
								<td width="4" height="21"><img src="/images/ct_btng03.gif" width="4" height="21"></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<!-- 테이블 끝 -->
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
</table>
<!-- 등록테이블 끝 -->

<!-- 버튼 시작 -->
<table width="100%" border="0" cellspacing="0" cellpadding="0"
	style="margin-top:10px;">
	<tr>
		<td align="center">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
				<% if(duplicated != null && !duplicated.booleanValue()) { %>
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"><a href="javascript:fncUseId();">사용</a></td>
					<td width="14" height="23"><img src="/images/ct_btnbg03.gif" width="14" height="23"></td>
					
					<td width="30"></td>					
					
				<% } %>
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"><a href="javascript:window.close();">닫기</a></td>
					<td width="14" height="23"><img src="/images/ct_btnbg03.gif" width="14" height="23"></td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<!-- 버튼 끝 -->

</form>

</body>
</html>
