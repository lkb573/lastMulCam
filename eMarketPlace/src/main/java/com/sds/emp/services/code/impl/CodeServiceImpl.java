package com.sds.emp.services.code.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.emp.services.code.CodeService;
import com.sds.emp.services.code.CodeVO;

@Service("codeService")
public class CodeServiceImpl implements CodeService {
	@Autowired
	private CodeDAO codeDAO;

	public List<CodeVO> getCodeList(String codeType) throws Exception {
		try {
			return codeDAO.getCodeList(codeType);
		} catch (Exception e) {
			throw new Exception("코드 목록 조회 실패.", e);
		}
	}
}
