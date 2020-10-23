<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>untitled document</title>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<link rel="stylesheet" href="/css/admin.css" type="text/css">

<script language="javascript" src="/javascript/calendar.js"></script>
<script language="javascript" src="/javascript/PortalCommonScript.js"></script>
<script language="javaScript">
<!--

//-->
</script>


</head>

<body bgcolor="#ffffff" text="#000000">

<form name="detailForm"  method="post">

<!--************************** 컨텐츠 S *****************************-->

<!-- 타이틀 시작 -->
<table width="100%" height="37" border="0" cellpadding="0"
	cellspacing="0">
	<tr>
		<td width="15" height="37"><img src="/images/ct_ttl_img01.gif" width="15" height="37"></td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left:10px;">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="93%" class="ct_ttl01">상품등록</td>
				<td width="20%" align="right">&nbsp;</td>
			</tr>
		</table>
		</td>
		<td width="12" height="37"><img src="/images/ct_ttl_img03.gif" width="12" height="37"></td>
	</tr>
</table>
<!-- 타이틀 끝 -->

<!-- 검색결과 시작 -->
<!--
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td height="32" style="padding-left:12px;">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:3px;">
			<tr>
				<td width="8" style="padding-bottom:3px;"><img src="/images/ct_bot_ttl01.gif" width="4" height="7"></td>
				<td class="ct_ttl02">등록화면에 대한 comment가 있으면 여기에 기술하세요.</td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td background="/images/ct_line_ttl.gif" height="1"></td>
	</tr>
</table>
-->
<!-- 검색결과 끝 -->

<!-- 등록 테이블시작 -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:13px;">
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">상품명 <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01"><input type="text" name="Input3"  style="width:370px; height:19px" value="삼성 노트북 센스 X15-JUMP2" ></td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">카테고리 <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td height="55" class="ct_write01">
			<!-- 테이블 시작 -->
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td height="26">
						<select name="select6"  style="width:100px">
							<option selected>--대분류 선택</option>
						</select>
						<select name="select6"  style="width:100px">
							<option selected>--소분류 선택</option>
						</select>
					</td>
					<td style="padding-left:5px;">
						<input type="checkbox" name="checkbox2" value="checkbox">
					</td>
					<td tyle="padding-top:3px;">
						<font color="0E5880">체크항목 필요시</font>
					</td>
				</tr>
				<tr>
					<td height="22" colspan="3">
						<font color="969696">(※ 필요한 항목 설명은 여기에 넣습니다.)</font>
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
		<td width="104" class="ct_write">판매자 <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<!-- 테이블 시작 -->
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="105">
						<input type="text" name="Input22"  style="width:100px; height:19px">
					</td>
					<td>
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="4" height="21"><img src="/images/ct_btng01.gif" width="4" height="21"></td>
								<td align="center" background="/images/ct_btng02.gif" class="ct_btn" style="padding-top:3px;"><a href="#">판매자ID 검색</a></td>
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
		<td width="104" class="ct_write">판매일자</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<!-- 테이블 시작 -->
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="100%">
						<input type="text" name="startdate"  style="width:75px; height:19px">
						<a href="javascript:show_calendar('document.detailForm.startdate', document.detailForm.startdate.value)"><img src="/images/ct_icon_date.gif" width="16" height="18" border="0" align="absmiddle"></a>
						~
						<input type="text" name="enddate"  style="width:75px; height:19px">
						<a href="javascript:show_calendar('document.detailForm.enddate', document.detailForm.enddate.value)"><img src="/images/ct_icon_date.gif" width="16" height="18" border="0" align="absmiddle"></a>
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
		<td width="104" class="ct_write">영수증 발급여부</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<select name="select5"  style="width:100px">
				<option selected>가능</option>
				<option>불가</option>
			</select>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">A/S 가능여부</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<select name="select5"  style="width:100px">
				<option selected>가능</option>
				<option>불가</option>
			</select>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">판매수량 <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="Input2222"  style="width:120px; height:19px; text-align:right" value="1"> 개
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">판매단가 <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="Input2222"  style="width:120px; height:19px; text-align:right" value="500000"> 원
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">상품 상세정보</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<textarea name="Text3333"  cols="80" rows="4" >센트리노 1.5G CPU이고 DDR 256M 추가해서 DDR 512M, 하드 60G 입니다.
액정 밝게 잘나오고 밧데리를 노트북에서 분리해놓고 사용해서
밧데리 상태가 좋아 오래갑니다.</textarea>
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
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"><a href="#">목록</a></td>
					<td width="14" height="23"><img src="/images/ct_btnbg03.gif" width="14" height="23"></td>
				</tr>
			</table>
		</td>
		<td align="right">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"><a href="#">저장</a></td>
					<td width="14" height="23"><img src="/images/ct_btnbg03.gif" width="14" height="23"></td>
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"><a href="#">취소</a></td>
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
