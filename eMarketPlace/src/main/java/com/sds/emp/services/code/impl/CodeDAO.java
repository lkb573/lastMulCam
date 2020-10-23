package com.sds.emp.services.code.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sds.emp.services.code.CodeVO;

@Repository
public class CodeDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<CodeVO> getCodeList(String codeType) throws Exception {
		return (List<CodeVO>) mybatis.selectList("Code.getCodeList", codeType);
	}
}
