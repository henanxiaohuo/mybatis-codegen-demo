<#include "javadoc-copyright.ftl">
<#import "function.ftl" as func>
<#assign class=model.variables.class>
package com.${vars.company}.${vars.project}.core.orm.${vars.module}.po;

import java.util.Date;

<#include "javadoc-file.ftl">
public class ${class}Po {
<#list model.columnList as columnModel>
	/**
	 * ${columnModel.comment}
	 */
	private	${columnModel.colType}	${columnModel.humpColumnName?uncap_first};
</#list>
<#list model.columnList as columnModel>

	/**
     * @param ${columnModel.humpColumnName?uncap_first} the ${columnModel.humpColumnName?uncap_first} to set
     */
	public void set${columnModel.humpColumnName}(${columnModel.colType} ${columnModel.humpColumnName?uncap_first}) {
		this.${columnModel.humpColumnName?uncap_first} = ${columnModel.humpColumnName?uncap_first};
	}
	/**
     * @return the ${columnModel.humpColumnName?uncap_first}
     */
	public ${columnModel.colType} get${columnModel.humpColumnName}() {
		return ${columnModel.humpColumnName?uncap_first};
	}
</#list>
}