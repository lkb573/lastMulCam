package com.sds.emp.common.util;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class EmpUtil{
	/**
	 * 널이거나 빈 문자열을 원하는 스트링으로 변환한다. <BR>
	 * 단, 좌우 공백이 있는 문자열은 trim 한다
	 * 
	 * @param org
	 *            입력문자열
	 * @param converted
	 *            치환할 문자열
	 * @return 치환된 문자열
	 */
	public static String null2str(String org, String converted) {
		if (org == null || org.trim().length() == 0)
			return converted;
		else
			return org.trim();
	}

	/**
	 * 널이거나 빈 문자열을 원하는 스트링으로 변환한다. <BR>
	 * 단, 좌우 공백이 있는 문자열은 trim 한다
	 * 
	 * @param org
	 *            입력문자열
	 * @return 치환된 문자열
	 */
	public static String null2str(String org) {
		return EmpUtil.null2str(org, "");
	}
	
	/**
	 * 널이거나 빈 문자열을 원하는 스트링으로 변환한다. <BR>
	 * 단, 좌우 공백이 있는 문자열은 trim 한다
	 * 
	 * @param org
	 *            입력문자열
	 * @return 치환된 문자열
	 */
	public static String null2str(Object org) {
		if (org != null && org instanceof java.math.BigDecimal) {
	            return EmpUtil.null2str((java.math.BigDecimal) org, "");
	    } else {
			return EmpUtil.null2str((String)org, "");
	    }
	}

	/**
	 * 널인 BigDecimal을 원하는 스트링으로 변환한다.
	 * 
	 * @param org
	 *            입력 BigDecimal
	 * @param converted
	 *            치환할 문자열
	 * @return 치환된 문자열
	 */
	public static String null2str(java.math.BigDecimal org, String converted) {
		if (org == null)
			return converted;
		else
			return org.toString();
	}

	/**
	 * 널인 BigDecimal을 원하는 스트링으로 변환한다.
	 * 
	 * @param org
	 *            입력 BigDecimal
	 * @return 치환된 문자열
	 */
	public static String null2str(java.math.BigDecimal org) {
		return EmpUtil.null2str(org, "");
	}

	/**
	 * Convert String(yyyymmdd) to String(yyyy/mm/dd)
	 * 
	 * @param dateStr
	 *            입력 문자열
	 * @return 치환된 문자열
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
	 *            입력 Timestamp
	 * @return 치환된 문자열
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
	 * Convert String(주민번호) to String(-로 구분된 주민번호)
	 * 
	 * @param ssnStr
	 *            입력 문자열
	 * @return 치환된 문자열
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
	 * Convert String(금액) to String(,로 구분된 금액)
	 * 
	 * @param amountStr
	 *            입력 문자열
	 * @return 치환된 문자열
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
	 * Convert BigDecimal(금액) to String(,로 구분된 금액)
	 * 
	 * @param amount
	 *            java.math.BicDecimal 입력 금액
	 * @return 치환된 문자열
	 */
	public static String toAmountStr(java.math.BigDecimal amount) {
		if (amount == null) {
			return "";
		} else {
			return toAmountStr(amount.toString());
		}
	}
}

