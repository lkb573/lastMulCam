<%@ page contentType="text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<title>eMarketPlace Menu</title>
<link href="<c:url value='/css/admin.css'/>" rel="stylesheet" type="text/css">
<link href="<c:url value='/css/left.css'/>" rel="stylesheet" type="text/css">
<script language="javascript" src="<c:url value='/javascript/common.js'/>"></script>

<style type="text/css">
 .Depth01 { 
		font-size: 14px; 
	color: #ffffff;
	font-weight:bold;
	line-height: 26px;
	text-indent: 15px;
	background-image: url(<c:url value='/images/left/leftMenuDep01Bg.gif'/>);
	background-repeat:no-repeat;
   	}
 
	.Depth02on { 
	font-size: 12px; 
	line-height: 25px;
	color: #505050;
	font-weight:normal;
	text-indent: 19px;
	background-image: url(<c:url value='/images/left/leftMenuDep02_on.gif'/>);
	background-repeat:no-repeat;
  	}
  
	.Depth02off { 
	 font-size: 12px; 
	line-height: 25px;
	color: #505050;
	font-weight:normal;
	text-indent: 19px;
	background-image: url(<c:url value='/images/left/leftMenuDep02_off.gif'/>);
	background-repeat:no-repeat;
  	}

	.Depth03 { 
	font-size: 12px; 
	line-height: 20px;
	color: #505050;
	font-weight:normal;
	text-indent: 14px;
	background-image: url(<c:url value='/images/left/leftMenuDep03Bg.gif'/>);
	background-repeat:no-repeat;
 	}

	.DepthEnd {
background-image: url(<c:url value='/images/left/space_line.gif'/>);
line-height: 5px;
background-repeat:no-repeat;
	}
	
.layer_submenu_bg {
	background-image:  url(<c:url value='/images/left/menuLayerBg.gif'/>);
	background-position: right;
	background-repeat: repeat;
	text-align: center;
</style>

</head>
<body background="<c:url value='/images/left/imgLeftBg.gif'/>" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<Form id="frmMenu">
<table width="159" border="0" cellspacing="0" cellpadding="0">
<tr>
 <td class="Depth01" >eMarketPlace</td>
</tr>

<!--menu 01 line-->
<tr>
<td valign="top"> 
	<table id=Main1 border="0" cellspacing="0" cellpadding="0"  width="159" >
		<tr> 
		<td id="menu1" class="Depth02off"><a href="javascript:toggle(1);" id="plus">회원관리</a></td>
		</tr>
	</table>
	
	<div ID="sub1" style="DISPLAY: none">
		<table border="0" cellspacing="0" cellpadding="0" width="159" >	
			<tr>
				<td class="Depth03"><a href="<c:url value='/getUser.do'/>" target="rightFrame">개인정보관리</a></td>
			</tr>
			<tr>
				<td class="Depth03" ><a href="<c:url value='/getUserList.do'/>" target="rightFrame">회원정보관리</a></td>
			</tr>
			<tr>
				<td class="DepthEnd">&nbsp;</td>
			</tr>
		</table>
	</div>
</td></tr>

<!--menu 02 line-->
<tr><td valign="top"> 
	<table id=Main2  border="0" cellspacing="0" cellpadding="0" width="159" >
		<tr> 
		<td id="menu2" class="Depth02off"><a href="javascript:toggle(2)">판매관리</a></td>
		</tr>
	</table>
	
	<div ID="sub2" style="DISPLAY: none">
		<table  border="0" cellspacing="0" cellpadding="0" width="159">
		<tr>
		<td class="Depth03"><a href="<c:url value='/addProductView.do'/>" target="rightFrame">상품등록</a></td>
		</tr>
		<tr>
		<td class="Depth03"><a href="<c:url value='/getSaleList.do'/>" target="rightFrame">판매관리</a></td>
		</tr>
		<tr>
		<td class="Depth03"><a href="<c:url value='/getCategoryList.do'/>" target="rightFrame">카테고리관리</a></td>
		</tr>
		<tr>
		<td class="DepthEnd">&nbsp;</td>
		</tr>
		</table>
	</div>
</td></tr>

<!--menu 03 line-->
<tr><td valign="top"> 
	<table id=Main3  border="0" cellspacing="0" cellpadding="0" width="159" >
		<tr> 
		<td id="menu3" class="Depth02off"><a href="javascript:toggle(3)">구매관리</a></td>
		</tr>
	</table>
	
	<div ID="sub3" style="DISPLAY: none">
		<table  border="0" cellspacing="0" cellpadding="0" width="159">
		<tr>
		<td class="Depth03"><a href="<c:url value='/getProductSearchList.do'/>" target="rightFrame">상품검색</a></td>
		</tr>
		<tr>
		<td class="Depth03"><a href="<c:url value='/getPurchaseList.do'/>" target="rightFrame">구매관리</a></td>
		</tr>
		<tr>
		<td class="Depth03"><a href="<c:url value='/getDeliveryCompanyList.do'/>" target="rightFrame">배송업체관리</a></td>
		</tr>
		<tr>
		<td class="DepthEnd">&nbsp;</td>
		</tr>
		</table>
	</div>
</td></tr>

</table>
</Form>
</body>
</html>
