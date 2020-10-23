<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>  
<head>
<title>로그인</title>
<link rel="stylesheet" href="<c:url value='/css/admin.css'/>" type="text/css">
<%
	String loginFlag = (String)request.getParameter("loflag");
%>
<script language="javascript" src="<c:url value='/javascript/CommonScript.js'/>"></script>
<script language="JavaScript">

function fncLogin() {
	    document.loginForm.action="/login.do";
	    document.loginForm.flag.value = "L";
	    document.loginForm.submit();
}

function fncAddUserView() {
    document.loginForm.action="/addUserView.do";
    document.loginForm.flag.value = "N";
    document.loginForm.target="_top";
    document.loginForm.submit();
}
window.onload = function(){
	document.getElementById("logoutMsg").style.display = "<%=loginFlag%>"=="LO"?"":"none"; 
}
</script>

</head>

<body bgcolor="#ffffff" text="#000000" >

<form name="loginForm" method="post" action="/login.do">

<!--************************** 컨텐츠 S *****************************-->

<!-- 타이틀 시작 -->
<div align="center">
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
<td align="center" valign="middle">

<!--************************** begin of contents *****************************-->

<table width="650" height="390" border="5" cellpadding="0" cellspacing="0" bordercolor="#D6CDB7">
  <tr> 
    <td width="10" height="5" align="left" valign="top" bordercolor="#D6CDB7"><table width="650" height="390" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="305">
            <img src="<c:url value='/images/login.gif'/>" width="305" height="390">
          </td>
          <td width="345" align="left" valign="top" background="<c:url value='/images/login02.gif'/>"><table width="100%" height="220" border="0" cellpadding="0" cellspacing="0">
              <tr> 
                <td width="30" height="100">&nbsp;</td>
                <td width="100" height="100">&nbsp;</td>
                <td height="100">&nbsp;</td>
                <td width="20" height="100">&nbsp;</td>
              </tr>
              <tr> 
                <td width="30" height="50">&nbsp;</td>
                <td width="100" height="50"><img src="<c:url value='/images/text_login.gif'/>" width="91" height="32"></td>
                <td height="50">&nbsp;</td>
                <td width="20" height="50">&nbsp;</td>
              </tr>
              <tr> 
                <td width="200" height="50" colspan="4">
                </td>
              </tr>              
              <tr> 
                <td width="30" height="30">&nbsp;</td>
                <td width="100" height="30"><img src="<c:url value='/images/text_id.gif'/>" width="100" height="30"></td>
                <td height="30">
                  <input type="text" name="userId" style="width:180px; height:19px"/>          
          		</td>
                <td width="20" height="30">&nbsp;</td>
              </tr>
              <tr> 
                <td width="30" height="30">&nbsp;</td>
                <td width="100" height="30"><img src="<c:url value='/images/text_pas.gif'/>" width="100" height="30"></td>
                <td height="30">                    
                  <input type="password" name="password" style="width:180px; height:19px" onKeyPress="if(event.keyCode==13) fncLogin();">
                </td>
                <td width="20" height="30">&nbsp;</td>
              </tr>
              <tr> 
                <td width="30" height="20">&nbsp;</td>
                <td width="100" height="20">&nbsp;</td>
                <td height="20" align="center">
      				    <!--버튼들어가는 테이블-->
      				    <table width="136" height="20" border="0" cellpadding="0" cellspacing="0">
                          <tr> 
                            <td width="56"><a href="javascript:fncLogin();"><img src="<c:url value='/images/btn_login.gif'/>" width="56" height="20" border="0"></a></td>
                            <td width="10">&nbsp;</td>
                            <td width="70"><a href="javascript:fncAddUserView();"><img src="<c:url value='/images/btn_add.gif'/>" width="70" height="20" border="0"></a></td>
                          </tr>
                        </table></td>
                      <td width="20" height="20">&nbsp;</td>
                    </tr>
                  </table>
                </td>
              </tr>                            
      </table>
      </td>
  </tr>
</table>
</TD></TR>

<tr>
	<td width="200" height="50" colspan="4">
		<font id="logoutMsg" color="red">성공적으로 로그아웃 되었습니다.</font>                
    </td>
</tr>  
</TABLE>
</div>
<!-- 타이틀 끝 -->
<input type="hidden" name="flag">
</form>
<script language="JavaScript">
document.loginForm.userId.focus();
</script>
</body>
</html>
