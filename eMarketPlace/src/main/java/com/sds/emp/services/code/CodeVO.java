package com.sds.emp.services.code;

import java.io.Serializable;

public class CodeVO implements Serializable {
	private static final long serialVersionUID = 1L;
	/* 코드 타입 */
    private String codeType;
    /* 코드 */
    private String code;
    /* 코드명 */
    private String codeName;
    /* 코드 설명 */
    private String codeDesc;
    /* 등록자 ID */
    private String regId;
    /* 등록 일시 */
    private java.sql.Timestamp regDate;		
	
	public String getCodeType(){
	   return this.codeType;
	}

	public void setCodeType( String codeType ){
	   this.codeType= codeType;
	}
	public String getCode(){
	   return this.code;
	}

	public void setCode( String code ){
	   this.code= code;
	}
	public String getCodeName(){
	   return this.codeName;
	}

	public void setCodeName( String codeName ){
	   this.codeName= codeName;
	}
	public String getCodeDesc(){
	   return this.codeDesc;
	}

	public void setCodeDesc( String codeDesc ){
	   this.codeDesc= codeDesc;
	}
	public String getRegId(){
	   return this.regId;
	}

	public void setRegId( String regId ){
	   this.regId= regId;
	}
	public java.sql.Timestamp getRegDate(){
	   return this.regDate;
	}

	public void setRegDate( java.sql.Timestamp regDate ){
	   this.regDate= regDate;
	}

	@Override
	public String toString() {
		return "CodeVO [code=" + code + ", codeDesc=" + codeDesc
				+ ", codeName=" + codeName + ", codeType=" + codeType
				+ ", regDate=" + regDate + ", regId=" + regId + "]";
	}
}
