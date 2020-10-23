package com.sds.emp.common.util;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class EmpUtil{
	/**
	 * ���̰ų� �� ���ڿ��� ���ϴ� ��Ʈ������ ��ȯ�Ѵ�. <BR>
	 * ��, �¿� ������ �ִ� ���ڿ��� trim �Ѵ�
	 * 
	 * @param org
	 *            �Է¹��ڿ�
	 * @param converted
	 *            ġȯ�� ���ڿ�
	 * @return ġȯ�� ���ڿ�
	 */
	public static String null2str(String org, String converted) {
		if (org == null || org.trim().length() == 0)
			return converted;
		else
			return org.trim();
	}

	/**
	 * ���̰ų� �� ���ڿ��� ���ϴ� ��Ʈ������ ��ȯ�Ѵ�. <BR>
	 * ��, �¿� ������ �ִ� ���ڿ��� trim �Ѵ�
	 * 
	 * @param org
	 *            �Է¹��ڿ�
	 * @return ġȯ�� ���ڿ�
	 */
	public static String null2str(String org) {
		return EmpUtil.null2str(org, "");
	}
	
	/**
	 * ���̰ų� �� ���ڿ��� ���ϴ� ��Ʈ������ ��ȯ�Ѵ�. <BR>
	 * ��, �¿� ������ �ִ� ���ڿ��� trim �Ѵ�
	 * 
	 * @param org
	 *            �Է¹��ڿ�
	 * @return ġȯ�� ���ڿ�
	 */
	public static String null2str(Object org) {
		if (org != null && org instanceof java.math.BigDecimal) {
	            return EmpUtil.null2str((java.math.BigDecimal) org, "");
	    } else {
			return EmpUtil.null2str((String)org, "");
	    }
	}

	/**
	 * ���� BigDecimal�� ���ϴ� ��Ʈ������ ��ȯ�Ѵ�.
	 * 
	 * @param org
	 *            �Է� BigDecimal
	 * @param converted
	 *            ġȯ�� ���ڿ�
	 * @return ġȯ�� ���ڿ�
	 */
	public static String null2str(java.math.BigDecimal org, String converted) {
		if (org == null)
			return converted;
		else
			return org.toString();
	}

	/**
	 * ���� BigDecimal�� ���ϴ� ��Ʈ������ ��ȯ�Ѵ�.
	 * 
	 * @param org
	 *            �Է� BigDecimal
	 * @return ġȯ�� ���ڿ�
	 */
	public static String null2str(java.math.BigDecimal org) {
		return EmpUtil.null2str(org, "");
	}

	/**
	 * Convert String(yyyymmdd) to String(yyyy/mm/dd)
	 * 
	 * @param dateStr
	 *            �Է� ���ڿ�
	 * @return ġȯ�� ���ڿ�
	 */
	public static String toDateStr(String dateStr) {
		if (dateStr == null)
			return "";
		else if (dateStr.length() != 8)
			return dateStr;
		else
			return dateStr.substring(0, 4) + "/" + dateStr.substring(4, 6)
					+ "/" + dateStr.substring(6, 8);
	}
	
	/**
	 * Convert Timestamp to String(yyyy/mm/dd HH:mm:ss)
	 * 
	 * @param date
	 *            �Է� Timestamp
	 * @return ġȯ�� ���ڿ�
	 */	
	public static String toDateStr(Timestamp date) {
		if (date == null)
			return "";
		else {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			return sdf.format(new Date(date.getTime()));
		}
	}	

	/**
	 * Convert String(�ֹι�ȣ) to String(-�� ���е� �ֹι�ȣ)
	 * 
	 * @param ssnStr
	 *            �Է� ���ڿ�
	 * @return ġȯ�� ���ڿ�
	 */
	public static String toSsnStr(String ssnStr) {
		if (ssnStr == null)
			return "";
		else if (ssnStr.length() != 13)
			return ssnStr;
		else
			return ssnStr.substring(0, 6) + "-" + ssnStr.substring(6, 13);
	}

	/**
	 * Convert String(�ݾ�) to String(,�� ���е� �ݾ�)
	 * 
	 * @param amountStr
	 *            �Է� ���ڿ�
	 * @return ġȯ�� ���ڿ�
	 */
	public static String toAmountStr(String amountStr) {
		String returnValue = "";
		if (amountStr == null)
			return returnValue;
		else {
			int strLength = amountStr.length();

			if (strLength <= 3)
				return amountStr;
			else {
				String s1 = "";
				String s2 = "";
				for (int i = strLength - 1; i >= 0; i--)
					s1 += amountStr.charAt(i);

				for (int i = strLength - 1; i >= 0; i--) {
					s2 += s1.charAt(i);
					if (i % 3 == 0 && i != 0)
						s2 += ",";
				}

				return s2;
			}
		}
	}
	
	/**
	 * Convert BigDecimal(�ݾ�) to String(,�� ���е� �ݾ�)
	 * 
	 * @param amount
	 *            java.math.BicDecimal �Է� �ݾ�
	 * @return ġȯ�� ���ڿ�
	 */
	public static String toAmountStr(java.math.BigDecimal amount) {
		if (amount == null) {
			return "";
		} else {
			return toAmountStr(amount.toString());
		}
	}
}

