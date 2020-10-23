package com.sds.emp.services.keygen.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.emp.services.keygen.KeyGenService;

@Service
public class KeyGenServiceImpl implements KeyGenService {	
	@Autowired
	private DataSource dataSource;
	
	public String getNextPk(String tableName, String columnName) throws Exception {
		Connection conn = dataSource.getConnection();
		String sql = "select ltrim(substr(to_char(max(" + columnName + ")), 10), '0') maxid from " + tableName;
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		String id = null;
		if(rs.next())
			id = rs.getString("maxid");		
		String nextId = "" + (Integer.parseInt(id) + 1);
		int cnt = 5-nextId.length();
		
		for (int i = 0; i < cnt; i++) {
			nextId = "0" + nextId;
		}
		
		if(tableName.equals("DELIVERY_COMPANY")){
			tableName = "DLVYCOMP";
		}
		
		if(tableName.equals("TRANSACTION")){
			tableName = "TRANSACT";
		}
		
		return tableName + "-" + nextId;
	}
}
