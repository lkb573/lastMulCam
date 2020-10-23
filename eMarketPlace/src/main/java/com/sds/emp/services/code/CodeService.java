package com.sds.emp.services.code;

import java.util.List;

public interface CodeService {
	public List<CodeVO> getCodeList(String codeType) throws Exception;
}