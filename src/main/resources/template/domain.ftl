<#include "javadoc-copyright.ftl">
<#import "function.ftl" as func>
<#assign class=model.variables.class>
<#assign colList=model.columnList>
package com.${vars.company}.${vars.project}.core.orm.${vars.module}.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.${vars.company}.${vars.project}.core.orm.${vars.module}.po.${class}Po;
;

<#include "javadoc-file.ftl">
public class ${class} extends ${class}Po {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 1L;
	
	/**
     * toString()
     * 
     * @return
     * @see java.lang.Object#toString()
     */
    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this, ToStringStyle.JSON_STYLE);
    }
	 
	
}