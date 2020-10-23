<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.sds.emp.common.util.EmpUtil"%>
<%@ page import="com.sds.emp.services.sale.CategoryVO" %>
<%@ page import="com.sds.emp.services.sale.ProductVO" %>

<%
	ArrayList<CategoryVO> categoryList = (ArrayList)request.getAttribute("categoryList");
	if (categoryList == null) categoryList = new ArrayList<CategoryVO>();
	
	ProductVO productVO = (ProductVO)request.getAttribute("product");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<title>상품 정보수정</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="/css/admin.css" type="text/css">

<script language="javascript" src="/javascript/calendar.js"></script>
<script language="javascript" src="/javascript/CommonScript.js"></script>
<script language="JavaScript">
<!--
function fncUpdateProduct() {
	// Form 유효성 검증
	if(FormValidation(document.detailForm) != false) {
		
	    document.detailForm.action='/updateProduct.do';
	    document.detailForm.submit();
	} 
}

function check_asYn(checkAsYn) {
	if (checkAsYn.checked) {
		document.detailForm.asYn.value = "Y";
	} else {
		document.detailForm.asYn.value = "N";
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
				<td width="93%" class="ct_ttl01">상품 정보수정</td>
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
		<td width="104" class="ct_write">상품번호</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="prodNo" class="ct_input_bg" style="width:100px; height:19px" value="<%= EmpUtil.null2str(productVO.getProdNo()) %>">
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">상품명 <img src="/images/ct_icon_red.gif" width="3" height="3"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="prodName"  style="width:100px; height:19px" value="<%= EmpUtil.null2str(productVO.getProdName()) %>">
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">상품분류 <img src="/images/ct_icon_red.gif" width="3" height="3"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<select name="categoryNo"  style="width:100px">
			<%	String categoryNo = EmpUtil.null2str(productVO.getCategoryNo());
				for(int i=0; i < categoryList.size(); i++) { 
					CategoryVO categoryVO = (CategoryVO)categoryList.get(i);
			%>
				<option value="<%= categoryVO.getCategoryNo() %>" <%= (categoryNo.equals(categoryVO.getCategoryNo()) ? "selected" : "") %> ><%= categoryVO.getCategoryName() %></option>
			<% } %>
			</select>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">상세정보 <img src="/images/ct_icon_red.gif" width="3" height="3"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<textarea name="prodDetail"  cols="50" rows="5"><%= EmpUtil.null2str(productVO.getProdDetail()) %></textarea>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">제조일자</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name=manufactureDay  style="width:100px; height:19px" value="<%= EmpUtil.null2str(productVO.getManufactureDay()) %>">
			<a href="javascript:show_calendar('document.detailForm.manufactureDay', document.detailForm.manufactureDay.value)" id="iconCalendar"><img src="/images/ct_icon_date.gif" width="16" height="18" border="0"></a>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">판매수량 <img src="/images/ct_icon_red.gif" width="3" height="3"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="sellQuantity"  style="width:100px; height:19px;text-align:right" value="<%= productVO.getSellQuantity() %>">
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">판매금액 <img src="/images/ct_icon_red.gif" width="3" height="3"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="sellAmount"  style="width:100px; height:19px;text-align:right" value="<%= EmpUtil.null2str(productVO.getSellAmount()) %>">
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">상품 이미지</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<%if(productVO.getImageFile() != null) {%>
			<img src="images/upload_files/productImage/<%= productVO.getImageFile() %>" alt="상품 이미지" border="0">
			<%} %>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">A/S 가능여부</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="checkbox" name="checkAsYn" <%= EmpUtil.null2str(productVO.getAsYn()).equals("Y") ? "checked" : "" %>  onChange="check_asYn(this)"> A/S 가능합니다.
			<input type="hidden" name="asYn" value="<%= EmpUtil.null2str(productVO.getAsYn()) %>">
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
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"><a href="javascript:fncUpdateProduct();">수정</a></td>
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
document.getElementById("prodName").focus();
</script>

</body>
</html>
