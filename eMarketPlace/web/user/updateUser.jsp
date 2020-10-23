<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.util.List" %>
<%@ page import="com.sds.emp.services.user.UserVO" %>
<%@ page import="com.sds.emp.common.SearchVO" %>
<%@ page import="com.sds.emp.services.code.CodeVO" %>
<%@ page import="com.sds.emp.common.util.EmpUtil"%>

<%
	SearchVO searchVO = (SearchVO)request.getAttribute("searchVO");
	if (searchVO == null) searchVO = new SearchVO();
	UserVO userVO = (UserVO)request.getAttribute("user");
	if (userVO == null) userVO = new UserVO();
	List<CodeVO> cellPhoneCodeList = (List)request.getAttribute("cellPhoneCodeList");
	List<CodeVO> emailCodeList = (List)request.getAttribute("emailCodeList");
	
	// 관리자 회원정보 수정인지 개인 회원정보 수정인지 flag 수신
	String flag = (String)request.getAttribute("flag");
	if (flag == null) flag = "user";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<title>회원 정보수정</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="/css/admin.css" type="text/css">

<script language="javascript" src="/javascript/calendar.js"></script>
<script language="javascript" src="/javascript/CommonScript.js"></script>
<script language="JavaScript">
<!--
function fncUpdateUser() {
	// Form 유효성 검증
	if(FormValidation(document.detailForm) != false) {
		
		// 휴대전화번호 조합
		if(document.detailForm.phone2.value != "") {
			document.detailForm.cellPhone.value = document.detailForm.phone1.value + "-" + document.detailForm.phone2.value;
		} else {
			document.detailForm.cellPhone.value = "";
		}
		
	    document.detailForm.action='/updateUser.do';
	    document.detailForm.submit();
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

function resetData() {
	document.detailForm.reset();
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
				<td width="93%" class="ct_ttl01">회원 정보수정</td>
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
			<input type="text" name="userId" style="width:100px; height:19px" value="<%= userVO.getUserId() %>" readonly>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">이름 <img src="/images/ct_icon_red.gif" width="3" height="3"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="userName"style="width:100px; height:19px" value="<%= userVO.getUserName() %>">
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">주민번호</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="ssn" style="width:100px; height:19px" onChange="javascript:calcAge();" value="<%= EmpUtil.null2str(userVO.getSsn()) %>">
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
			<input type="text" name="birthDay" style="width:100px; height:19px" value="<%= EmpUtil.null2str(userVO.getBirthDay()) %>">
			<a href="javascript:show_calendar('document.detailForm.birthDay', document.detailForm.birthDay.value)"><img src="/images/ct_icon_date.gif" width="16" height="18" border="0"></a>
			<input type="radio" name="slYn" value="Y" <%= EmpUtil.null2str(userVO.getSlYn()).equals("Y") ? "checked" : "" %>> 양력
			<input type="radio" name="slYn" value="N" <%= EmpUtil.null2str(userVO.getSlYn()).equals("N") ? "checked" : "" %>> 음력
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">나이</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="age" style="width:100px; height:19px;text-align:right" value="<%= EmpUtil.null2str(userVO.getAge()) %>">
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">주소</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="addr" style="width:370px; height:19px" value="<%= EmpUtil.null2str(userVO.getAddr()) %>">
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">휴대전화번호</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<select name="phone1" style="width:50px">
			<%	String cellPhone = EmpUtil.null2str(userVO.getCellPhone());
				for(int i=0; i < cellPhoneCodeList.size(); i++) { 
					CodeVO codeVO = (CodeVO)cellPhoneCodeList.get(i);
			%>
				<option value="<%= codeVO.getCode() %>" <%= (cellPhone.startsWith(codeVO.getCode()) ? "selected" : "") %> ><%= codeVO.getCodeName() %></option>
			<% } %>
			</select>
			<input type="text" name="phone2" style="width:100px; height:19px" value="<%= cellPhone.substring(cellPhone.indexOf("-")+1) %>">
			
			<input type="hidden" name="cellPhone" value="<%= cellPhone %>">
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">회원사진</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<img src="/images/upload_files/userImage/<%= EmpUtil.null2str(userVO.getImageFile()) %>" alt="회원사진" border="0" onError="this.width=0;">
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
						<%	String email = EmpUtil.null2str(userVO.getEmail()); %>
						<input type="text" name="email1" style="width:100px; height:19px" onChange="check_email(this.form);" value="<%= email.indexOf("@") > 0 ? email.substring(0, email.indexOf("@")) : "" %>">
						<select name="email_list" style="width:100px" onChange="check_email(this.form);">
							<option value="">선택</option>
						<%	
							for(int i=0; i < emailCodeList.size(); i++) { 
								CodeVO codeVO = (CodeVO)emailCodeList.get(i);
						%>
							<option value="<%= codeVO.getCodeName() %>" <%= (email.endsWith(codeVO.getCodeName()) ? "selected" : "") %> ><%= codeVO.getCodeName() %></option>
						<% } %>
							<option value="self">직접입력</option>
						</select>
						<input type="text" name="email" readonly style="display:none;width:200px;" value="<%= email %>">
						<script language="JavaScript">
							if(document.detailForm.email.value != "" && document.detailForm.email_list.value == "") {
								document.detailForm.email_list.value = "self";
								document.detailForm.email.style.display = "";
							}
						</script>
					</td>
				</tr>
				<tr>
					<td height="22">
						<input type="checkbox" name="checkEmailYn" <%= EmpUtil.null2str(userVO.getEmailYn()).equals("Y") ? "checked" : "" %> onChange="check_emailYn(this)"> 정보메일 수신에 동의합니다.
						<input type="hidden" name="emailYn" value="<%= EmpUtil.null2str(userVO.getEmailYn()) %>">
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

<!-- 기존 목록조회 화면의 검색조건 유지 -->
<input type="hidden" name="searchCondition" value="<%= EmpUtil.null2str(searchVO.getSearchCondition()) %>">
<input type="hidden" name="searchKeyword" value="<%= EmpUtil.null2str(searchVO.getSearchKeyword()) %>">

<input type="hidden" name="flag" value="<%= flag  %>">

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
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"><a href="javascript:fncUpdateUser();">수정</a></td>
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

</body>
</html>
