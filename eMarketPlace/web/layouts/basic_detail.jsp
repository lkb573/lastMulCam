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

<!--************************** ������ S *****************************-->

<!-- Ÿ��Ʋ ���� -->
<table width="100%" height="37" border="0" cellpadding="0"
	cellspacing="0">
	<tr>
		<td width="15" height="37"><img src="/images/ct_ttl_img01.gif" width="15" height="37"></td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left:10px;">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="93%" class="ct_ttl01">��ǰ���</td>
				<td width="20%" align="right">&nbsp;</td>
			</tr>
		</table>
		</td>
		<td width="12" height="37"><img src="/images/ct_ttl_img03.gif" width="12" height="37"></td>
	</tr>
</table>
<!-- Ÿ��Ʋ �� -->

<!-- �˻���� ���� -->
<!--
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td height="32" style="padding-left:12px;">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:3px;">
			<tr>
				<td width="8" style="padding-bottom:3px;"><img src="/images/ct_bot_ttl01.gif" width="4" height="7"></td>
				<td class="ct_ttl02">���ȭ�鿡 ���� comment�� ������ ���⿡ ����ϼ���.</td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td background="/images/ct_line_ttl.gif" height="1"></td>
	</tr>
</table>
-->
<!-- �˻���� �� -->

<!-- ��� ���̺���� -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:13px;">
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">��ǰ�� <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01"><input type="text" name="Input3"  style="width:370px; height:19px" value="�Ｚ ��Ʈ�� ���� X15-JUMP2" ></td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">ī�װ� <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td height="55" class="ct_write01">
			<!-- ���̺� ���� -->
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td height="26">
						<select name="select6"  style="width:100px">
							<option selected>--��з� ����</option>
						</select>
						<select name="select6"  style="width:100px">
							<option selected>--�Һз� ����</option>
						</select>
					</td>
					<td style="padding-left:5px;">
						<input type="checkbox" name="checkbox2" value="checkbox">
					</td>
					<td tyle="padding-top:3px;">
						<font color="0E5880">üũ�׸� �ʿ��</font>
					</td>
				</tr>
				<tr>
					<td height="22" colspan="3">
						<font color="969696">(�� �ʿ��� �׸� ������ ���⿡ �ֽ��ϴ�.)</font>
					</td>
				</tr>
			</table>
			<!-- ���̺� �� -->
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">�Ǹ��� <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<!-- ���̺� ���� -->
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="105">
						<input type="text" name="Input22"  style="width:100px; height:19px">
					</td>
					<td>
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="4" height="21"><img src="/images/ct_btng01.gif" width="4" height="21"></td>
								<td align="center" background="/images/ct_btng02.gif" class="ct_btn" style="padding-top:3px;"><a href="#">�Ǹ���ID �˻�</a></td>
								<td width="4" height="21"><img src="/images/ct_btng03.gif" width="4" height="21"></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<!-- ���̺� �� -->
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">�Ǹ�����</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<!-- ���̺� ���� -->
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
			<!-- ���̺� �� -->
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">������ �߱޿���</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<select name="select5"  style="width:100px">
				<option selected>����</option>
				<option>�Ұ�</option>
			</select>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">A/S ���ɿ���</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<select name="select5"  style="width:100px">
				<option selected>����</option>
				<option>�Ұ�</option>
			</select>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">�Ǹż��� <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="Input2222"  style="width:120px; height:19px; text-align:right" value="1"> ��
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">�ǸŴܰ� <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"></td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="Input2222"  style="width:120px; height:19px; text-align:right" value="500000"> ��
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">��ǰ ������</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<textarea name="Text3333"  cols="80" rows="4" >��Ʈ���� 1.5G CPU�̰� DDR 256M �߰��ؼ� DDR 512M, �ϵ� 60G �Դϴ�.
���� ��� �߳����� �嵥���� ��Ʈ�Ͽ��� �и��س��� ����ؼ�
�嵥�� ���°� ���� �������ϴ�.</textarea>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
</table>
<!-- ������̺� �� -->

<!-- ��ư ���� -->
<table width="100%" border="0" cellspacing="0" cellpadding="0"
	style="margin-top:10px;">
	<tr>
		<td width="53%">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"><a href="#">���</a></td>
					<td width="14" height="23"><img src="/images/ct_btnbg03.gif" width="14" height="23"></td>
				</tr>
			</table>
		</td>
		<td align="right">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"><a href="#">����</a></td>
					<td width="14" height="23"><img src="/images/ct_btnbg03.gif" width="14" height="23"></td>
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"><a href="#">���</a></td>
					<td width="14" height="23"><img src="/images/ct_btnbg03.gif" width="14" height="23"></td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<!-- ��ư �� -->

</form>

</body>
</html>
