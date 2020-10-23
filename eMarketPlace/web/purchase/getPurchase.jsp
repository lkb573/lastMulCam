<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.sds.emp.common.util.EmpUtil"%>
<%@ page import="com.sds.emp.services.purchase.DeliveryCompanyVO" %>
<%@ page import="com.sds.emp.services.purchase.PurchaseVO" %> 
<%@ page import="com.sds.emp.common.SearchVO" %>

<%
	SearchVO searchVO = (SearchVO)request.getAttribute("searchVO");
	if (searchVO == null) searchVO = new SearchVO();
	PurchaseVO purchaseVO = (PurchaseVO)request.getAttribute("resultPurchaseVO");
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<title>구매 상세조회</title>
<link rel="stylesheet" href="/css/admin.css" type="text/css">

<script language="javascript" src="/javascript/calendar.js"></script>
<script language="javascript" src="/javascript/CommonScript.js"></script>
<script language="JavaScript">
<!--
function fncListPurchase() { 
	document.detailForm.action='/getPurchaseList.do';
	document.detailForm.submit(); 
}

function fncUpdatePurchaseView() { 
   	document.detailForm.action='/updatePurchaseView.do';
   	document.detailForm.submit();		
}
 
 function resizeImgWidth(imgObj, width) {
    var oldWidth = imgObj.width;
    var oldHeight = imgObj.height;
    if (oldWidth > width) {
        var newWidth = width;
        var newHeight = Math.round(oldHeight * newWidth / oldWidth);
        imgObj.wdith = newWidth;
        imgObj.height = newHeight;
    }
}

-->
</script>


</head>

<body bgcolor="#ffffff" text="#000000">

<form name="detailForm" method="post" enctype="multipart/form-data">
<input type="hidden" name="tranNo" value="<%=purchaseVO.getTranNo()%>"/>
<!--************************** 컨텐츠 S *****************************-->

<!-- 타이틀 시작 -->
<table width="100%" height="37" border="0" cellpadding="0"
	cellspacing="0">
	<tr>
		<td width="15" height="37"><img src="/images/ct_ttl_img01.gif" width="15" height="37"></td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left:10px;">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="93%" class="ct_ttl01">구매 상세조회1</td>
				<td width="20%" align="right">&nbsp;</td>
			</tr>
		</table>
		</td>
		<td width="12" height="37"><img src="/images/ct_ttl_img03.gif" width="12" height="37"></td>
	</tr>
</table>
<!-- 타이틀 끝 -->

<!-- 상품 상세 정보 -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:13px;">
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">

				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">상품번호</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= EmpUtil.null2str(purchaseVO.getProdNo()) %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">상품명</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01" colspan="2">
						<%= EmpUtil.null2str(purchaseVO.getProdName()) %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">상품분류</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= EmpUtil.null2str(purchaseVO.getCategoryName()) %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">제조일자</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= EmpUtil.toDateStr(purchaseVO.getManufactureDay()) %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">상세정보</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= EmpUtil.null2str(purchaseVO.getProdDetail()).replaceAll("\n", "<br>") %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">판매수량</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= EmpUtil.null2str(purchaseVO.getSellQuantity()) %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">판매금액</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= EmpUtil.null2str(purchaseVO.getSellAmount()) %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">A/S 가능여부</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01"> 
  						<%= ("Y".equals(EmpUtil.null2str(purchaseVO.getAsYn())) ? "가능" : "불가")%>											
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
			</table>
		</td>
			
		<td width="300" valign="high">
			<div style="width:300px;overflow:hidden">
				<img src="images/upload_files/productImage/<%= EmpUtil.null2str(purchaseVO.getImageFile()) %>" alt="상품 이미지" border="0" onError="this.width=0;" onLoad="resizeImgWidth(this,250)">
			</div>
		</td>
	</tr> 
</table>

<!-- 수정 테이블시작 -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:13px;">
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
  	    <td width="104" class="ct_write">수령자 </td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
		    <%= EmpUtil.null2str(purchaseVO.getReceiverId()) %>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
  	    <td width="104" class="ct_write">연락처 </td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
		    <%= EmpUtil.null2str(purchaseVO.getReceiverPhone()) %>	
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>	
	<tr>
	<td width="104" class="ct_write">배송희망일</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01"> 
		    <%= EmpUtil.toDateStr(purchaseVO.getDlvyExpectDay()) %>
		</td>
	</tr>	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
  	    <td width="104" class="ct_write">배송지주소 </td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
		    <%= EmpUtil.null2str(purchaseVO.getDlvyAddr()) %>			
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">배송업체 <img src="/images/ct_icon_red.gif" width="3" height="3"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
		    <%= EmpUtil.null2str(purchaseVO.getDlvyCompName()) %>	 
		</td>
	</tr>	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">배송시 유의사항</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01"> 	
			<textarea name="dlvyRequest" cols="50" rows="5" readonly><%= purchaseVO.getDlvyRequest() %></textarea>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
  	    <td width="104" class="ct_write">결재방식 </td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
		    <%= EmpUtil.null2str(purchaseVO.getPaymentOptionName()) %>	  
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">영수증 발급여부</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01"> 
			<input type="checkbox" name="checkReceiptYn" <%= EmpUtil.null2str(purchaseVO.getReceiptYn()).equals("Y") ? "checked" : "" %> onChange="check_receiptYn(this)"> 영수증 발급합니다.
			<input type="hidden" name="receiptYn" value="<%= EmpUtil.null2str(purchaseVO.getReceiptYn()) %>">
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
<input type="hidden" name="pageIndex" value="<%= searchVO.getPageIndex() %>">
<input type="hidden" name=searchTranStatusCode value="<%= searchVO.getSearchTranStatusCode() %>">
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
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"><a href="javascript:fncListPurchase();">목록</a></td>
					<td width="14" height="23"><img src="/images/ct_btnbg03.gif" width="14" height="23"></td>
				<% if( "002".equals(purchaseVO.getTranStatusCode()) ) 
				   {  //"주문접수" 상태인 구매건에 대해서 수정 버튼을 활성화 한다.
				%>
					<td width="30"></td>
										
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"><a href="javascript:fncUpdatePurchaseView();">수정</a></td>
					<td width="14" height="23"><img src="/images/ct_btnbg03.gif" width="14" height="23"></td>
				<% } %>	
				</tr>
			</table>
		</td>
	</tr>
</table>
<!-- 버튼 끝 -->

</form>

</body>
</html>
