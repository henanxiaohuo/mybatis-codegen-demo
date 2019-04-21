package com.example.mybatis.codegen.demo.db;

import java.util.List;

import com.example.mybatis.codegen.demo.exception.CodegenException;
import com.example.mybatis.codegen.demo.model.TableModel;

public interface IDbHelper {
	void setUrl(String url, String username, String password);
	TableModel getByTable(String tableName) throws CodegenException;
	List<String> getAllTable() throws CodegenException, CodegenException;
}
