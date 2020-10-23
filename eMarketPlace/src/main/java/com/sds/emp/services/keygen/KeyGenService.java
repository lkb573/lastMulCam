package com.sds.emp.services.keygen;

public interface KeyGenService {
	public String getNextPk(String tableName, String columnName) throws Exception;
}
