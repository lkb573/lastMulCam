<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="com.sds.emp.common.util.EmpUtil"%>
<%@ page import="com.sds.emp.services.sale.SaleVO" %>

<%
	SaleVO saleVO = (SaleVO)request.getAttribute("resultSaleVO");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<title>판매 상세조회</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="/css/admin.css" type="text/css">

<script language="JavaScript">
function fncUpdateProduct() {
    document.detailForm.action='/getProduct.do';
    document.detailForm.submit();
}

<% // 상품등록일 경우만 수정 버튼은 활성화함 
   if (EmpUtil.null2str(saleVO.getTranStatusCode()).equals("002")) { %>
	function fncUpdateTranStatusCode() {
	    document.detailForm.action='/updateTranStatusCode.do';
	    document.detailForm.submit();
	}
<% } %>

function cancel() {
	document.detailForm.action='/getSaleList.do';
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
				<td width="93%" class="ct_ttl01">판매 상세조회</td>
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
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">

				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">상품번호</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= EmpUtil.null2str(saleVO.getProdNo()) %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">상품명</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01" colspan="2">
						<%= EmpUtil.null2str(saleVO.getProdName()) %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">상품분류</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= EmpUtil.null2str(saleVO.getCategoryName()) %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">제조일자</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= EmpUtil.toDateStr(saleVO.getManufactureDay()) %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">상세정보</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= EmpUtil.null2str(saleVO.getProdDetail()).replaceAll("\n", "<br>") %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">판매수량</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= EmpUtil.toAmountStr(saleVO.getSellQuantity()) %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">판매금액</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= EmpUtil.toAmountStr(saleVO.getSellAmount()) %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">A/S 가능여부</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<%= EmpUtil.null2str(saleVO.getAsYn()) %>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
			</table>
		</td>
			
		<td width="300">
			<div style="width:300px;overflow:hidden">
				<img src="images/upload_files/productImage/<%= EmpUtil.null2str(saleVO.getImageFile()) %>" alt="상품 이미지" border="0" onError="this.width=0;" onLoad="resizeImgWidth(this,250)">
			</div>
		</td>
	</tr>
	
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:13px;">
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">구매자</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<%= EmpUtil.null2str(saleVO.getBuyerId()) %> <%= EmpUtil.null2str(saleVO.getBuyerName()) %>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">수령자</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<%= EmpUtil.null2str(saleVO.getReceiverId()) %> <%= EmpUtil.null2str(saleVO.getReceiverName()) %>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">연락처</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<%= EmpUtil.null2str(saleVO.getReceiverPhone()) %>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">배송희망일</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<%= EmpUtil.toDateStr(saleVO.getDlvyExpectDay()) %>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">배송업체</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<%= EmpUtil.null2str(saleVO.getDlvyCompName()) %>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">배송시 유의사항</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<%= EmpUtil.null2str(saleVO.getDlvyRequest()).replaceAll("\n", "<br>") %>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">결재방식</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<%= EmpUtil.null2str(saleVO.getPaymentOptionName()) %>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">영수증 발급여부</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<%= EmpUtil.null2str(saleVO.getReceiptYn()) %>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
</table>
<!-- 선택된 prodNo 값 -->
<input type="hidden" name="prodNo" value="<%= EmpUtil.null2str(saleVO.getProdNo()) %>" >
<input type="hidden" name="prodName" value="<%= EmpUtil.null2str(saleVO.getProdName()) %>" >
<input type="hidden" name="tranNo" value="<%= EmpUtil.null2str(saleVO.getTranNo()) %>" >
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
				
			<% // 상품등록일 경우만 수정 버튼은 활성화함 
			   if (EmpUtil.null2str(saleVO.getTranStatusCode()).equals("001")) { 
			%>
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"><a href="javascript:fncUpdateProduct();">수정</a></td>
					<td width="14" height="23"><img src="/images/ct_btnbg03.gif" width="14" height="23"></td>

					<td width="30"></td>	
			<% } %>

			<% // 주문접수인 경우만 배송 버튼은 활성화함 
   			   if (EmpUtil.null2str(saleVO.getTranStatusCode()).equals("002")) { 
   			%>
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"><a href="javascript:fncUpdateTranStatusCode();">배송</a></td>
					<td width="14" height="23"><img src="/images/ct_btnbg03.gif" width="14" height="23"></td>

					<td width="30"></td>							
			<% } %>
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"><a href="javascript:cancel();">취소</a></td>
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
