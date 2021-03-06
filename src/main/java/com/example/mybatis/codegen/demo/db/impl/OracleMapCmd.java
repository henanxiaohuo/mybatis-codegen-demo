package com.example.mybatis.codegen.demo.db.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.example.mybatis.codegen.demo.db.MapCmd;
import com.example.mybatis.codegen.demo.model.ColumnModel;
import com.example.mybatis.codegen.demo.util.StringUtil;

public class OracleMapCmd implements MapCmd<ColumnModel> {
	
	public ColumnModel getObjecFromRs(ResultSet rs) throws SQLException {
		ColumnModel model=new ColumnModel();
		String name = rs.getString("NAME");
		String humpColName=StringUtil.underLineToHump(name.toLowerCase());
		String typename = rs.getString("TYPENAME");
		int length = Integer.parseInt(rs.getString("LENGTH"));
		int precision = rs.getInt("PRECISION");
		int scale = rs.getInt("SCALE");
		String description = rs.getString("DESCRIPTION");
		description=(description==null) ?name :description;
		String NULLABLE=rs.getString("NULLABLE");
		
		String displayDbType=getDisplayDbType(typename,length,precision,scale);
		String javaType=getJavaType(typename, precision, scale);
		boolean isNotNull =  "N".equals(NULLABLE);
		
		model.setColumnName(name);
		model.setHumpColumnName(humpColName);
		model.setColDbType(typename);
		model.setComment(description);
		model.setIsNotNull(isNotNull);
		model.setLength(length);
		model.setPrecision(precision);
		model.setScale(scale);
		model.setDisplayDbType(displayDbType);
		model.setColType(javaType);
	
	
		return model;
	}
	
	
	private String getDisplayDbType(String dbtype ,long character_length,int precision,int scale )
	{
		if(dbtype.equals("CHAR") || dbtype.equals("VARCHAR2"))
			return  dbtype+  "(" + character_length +")";
		if( dbtype.equals("NVARCHAR2"))
			return "NVARCHAR2(" + character_length /2 +")";
		
		if(dbtype.equals("NUMBER"))
		{
			if(scale==0 && precision>0)
				return "NUMBER(" +precision +")";
			else
				return  "NUMBER(" +  precision  +"," +scale +")";
		}
		
		return dbtype;
	}
	
	
	private String getJavaType(String dbtype,int precision,int scale)
	{
		if(dbtype.equals("BLOB"))
			return "byte[]";
		if((dbtype.indexOf("CHAR")!=-1) || (dbtype.indexOf("CLOB")!=-1) )
			return "String";
		
		if(dbtype.equals("DATE")||dbtype.indexOf("TIMESTAMP")!=-1)
			return "java.util.Date";
		
		if (dbtype.equals("NUMBER")) {
			if (scale > 0) {
				return "Float" ;
			} else if (precision < 10) {
				return "Integer";
			} else {
				return "Long";
			}
		}
//		if(dbtype.equals("SMALLINT")||dbtype.indexOf("SMALLINT")!=-1){
//			return "Short";
//		}
		
		return "String";
	}

}
