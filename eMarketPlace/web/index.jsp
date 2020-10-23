<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<title>eMarketPlace</title>
</head>
<%
	String flag = (String)request.getParameter("flag");	
	if(flag == null || flag.length() == 0)
		flag = "L";
%>
<frameset rows="80,*" cols="*" frameborder="NO" border="0" framespacing="0">
  <frame src="<c:url value='/layouts/top.jsp'/>" name="topFrame" scrolling="NO" noresize >
  <frameset rows="*" cols="160,*" framespacing="0" frameborder="NO" border="0">
    <frame src="<c:url value='/layouts/left.jsp'/>" name="leftFrame" scrolling="NO" noresize>
   <frame src="<% if(flag.equals("L")) {%>
    	<c:url value='/layouts/welcome.jsp'/>
    <%} else {%> 
    	<c:url value='/addUserView.do'/>
    <%}%>
    	" name="rightFrame"  scrolling="auto">
  </frameset>
</frameset>
<noframes><body>

</body></noframes>
</html>
