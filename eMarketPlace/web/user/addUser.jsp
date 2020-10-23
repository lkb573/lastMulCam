<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.sds.emp.services.code.CodeVO" %>

<%
	ArrayList<CodeVO> cellPhoneCodeList = (ArrayList)request.getAttribute("cellPhoneCodeList");
	if (cellPhoneCodeList == null) cellPhoneCodeList = new ArrayList<CodeVO>();
	ArrayList<CodeVO> emailCodeList = (ArrayList)request.getAttribute("emailCodeList");
	if (emailCodeList == null) emailCodeList = new ArrayList<CodeVO>();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<title>회원가입</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="/css/admin.css" type="text/css">

<script language="javascript" src="/javascript/calendar.js"></script>
<script language="javascript" src="/javascript/CommonScript.js"></script>
<script language="JavaScript">
<!--
function fncAddUser() {
	if(FormValidation(document.detailForm) != false) {
		if(document.detailForm.password.value != document.detailForm.password2.value) {
			alert("비밀번호 확인이 일치하지 않습니다.");
			document.detailForm.password2.focus();
			return;
		}

		if(document.detailForm.phone2.value != "") {
			document.detailForm.cellPhone.value = document.detailForm.phone1.value + "-" + document.detailForm.phone2.value;
		} else {
			document.detailForm.cellPhone.value = "";
		}
		
	    document.detailForm.action='/addUser.do';
	    try {
	    	document.detailForm.target="_top";
	    	document.detailForm.submit();
	    } catch (e) {
	    	alert(e.name + ":" + e.message);
	    	if(e.name == "TypeError") alert("파일첨부는 파일선택 대화상자를 통하여 선택해야 합니다.");
	    }
	} 
}

function check_email(frm) {
	if (frm.email_list.value!=""&&frm.email_list.value!="self") {
		frm.email.style.display = "none";
		frm.email.value = frm.email1.value +"@"+ frm.email_list.value;
		frm.email.readOnly = true;
	} else if (frm.email_list.value=="self") {
		frm.email.value = frm.email1.value ;
		frm.email.style.display = "";
		frm.email.readOnly = false;
		frm.email.focus();
	} else {
		// 처리없음
	}
}

function check_emailYn(checkEmailYn) {
	if (checkEmailYn.checked) {
		document.detailForm.emailYn.value = "Y";
	} else {
		document.detailForm.emailYn.value = "N";
	}
}

function calcAge() {
	var ssn1, ssn2; 
	var nByear, nTyear; 
	var today; 

	ssn = document.detailForm.ssn.value;
	// 유효한 주민번호 형식인 경우만 나이 계산 진행, PortalJuminCheck 함수는 CommonScript.js 의 공통 주민번호 체크 함수임 
	if(PortalJuminCheck(ssn)) {
		ssn1 = ssn.substring(0,6);
		ssn2 = ssn.substring(6,13);
		today = new Date(); 
		nTyear = today.getYear(); 
	
		if (parseInt(ssn2.substring(0,1), 10) < 3) 
			nByear = 1900 + parseInt(ssn1.substring(0,2), 10) 
		else 
			nByear = 1900 + parseInt(ssn1.substring(0,2), 10) 
	
		nAge = nTyear - nByear + 1; 
		
		document.detailForm.birthDay.value = nByear.toString() + ssn.substring(2,6);
		document.detailForm.age.value = nAge;
	}
}


function fncCheckDuplication() {
	popWin = window.open("/user/checkDuplication.jsp","popWin", "left=300,top=200,width=300,height=200,marginwidth=0,marginheight=0,scrollbars=no,scrolling=no,menubar=no,resizable=no");
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
				<td width="93%" class="ct_ttl01">회원가입</td>
				<td width="20%" align="right">&nbsp;</td>
			</tr>
		</table>
		</td>
		<td width="12" height="37"><img src="/images/ct_ttl_img03.gif" width="12" height="37"></td>
	</tr>
</table>
<!-- 타이틀 끝 -->

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
						<input type="text" name="userId" class="ct_input_bg" style="width:100px; height:19px" readonly>
					</td>
					<td>
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="4" height="21"><img src="/images/ct_btng01.gif" width="4" height="21"></td>
								<td align="center" background="/images/ct_btng02.gif" class="ct_btn" style="padding-top:3px;"><a href="javascript:fncCheckDuplication();" id="btnCmfID">ID중복확인</a></td>
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
	<tr>
		<td width="104" class="ct_write">비밀번호 <img src="/images/ct_icon_red.gif" width="3" height="3"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="password" name="password" style="width:100px; height:19px">
			영문자와 숫자를 사용하여 6~10자 (반드시 영문, 숫자 혼용)
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">비밀번호 확인 <img src="/images/ct_icon_red.gif" width="3" height="3"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="password" name="password2" style="width:100px; height:19px">
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">이름 <img src="/images/ct_icon_red.gif" width="3" height="3"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="userName" style="width:100px; height:19px">
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">주민번호</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="ssn" style="width:100px; height:19px" onChange="javascript:calcAge();">
			-제외, 13자리 입력
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">생일</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="birthDay" style="width:100px; height:19px">
			<a href="javascript:show_calendar('document.detailForm.birthDay', document.detailForm.birthDay.value)" id="iconCalendar"><img src="/images/ct_icon_date.gif" width="16" height="18" border="0"></a>
			<input type="radio" name="slYn" value="Y" checked> 양력
			<input type="radio" name="slYn" value="N"> 음력
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">나이</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="age" style="width:100px; height:19px;text-align:right">
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">주소</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="addr" style="width:370px; height:19px">
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">휴대전화번호</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<select name="phone1" style="width:50px" onChange="document.detailForm.phone2.focus();">
			<%
				for(int i=0; i < cellPhoneCodeList.size(); i++) { 
					CodeVO codeVO = (CodeVO)cellPhoneCodeList.get(i);
			%>
				<option value="<%= codeVO.getCode() %>" ><%= codeVO.getCodeName() %></option>
			<% } %>
			</select>
			<input type="text" name="phone2" style="width:100px; height:19px">
			
			<input type="hidden" name="cellPhone">
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">사진등록</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="file" name="realImageFile" style="width:309px; height:19px">
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">이메일 <img src="/images/ct_icon_red.gif" width="3" height="3"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">

			<!-- 테이블 시작 -->
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td height="26">
						<input type="text" name="email1" style="width:100px; height:19px" onChange="check_email(this.form);">@
						<select name="email_list" style="width:100px" onChange="check_email(this.form);">
							<option value="">선택</option>
						<%	
							for(int i=0; i < emailCodeList.size(); i++) { 
								CodeVO codeVO = (CodeVO)emailCodeList.get(i);
						%>
							<option value="<%= codeVO.getCodeName() %>" ><%= codeVO.getCodeName() %></option>
						<% } %>
							<option value="self">직접입력</option>
						</select>
						<input type="text" name="email" readonly style="display:none;width:200px;">
					</td>
				</tr>
				<tr>
					<td height="22">
						<input type="checkbox" name="checkEmailYn" checked onChange="check_emailYn(this)"> 정보메일 수신에 동의합니다.
						<input type="hidden" name="emailYn" value="Y">
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
		<td width="53%">
		
		</td>
		<td align="right">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"><a href="javascript:fncAddUser();">가입</a></td>
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
document.getElementById("btnCmfID").focus();
</script>

</body>
</html>
