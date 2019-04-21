<#include "javadoc-copyright.ftl">
<#import "function.ftl" as func>
<#assign class=model.variables.class>
package com.${vars.company}.${vars.project}.core.orm.${vars.module}.mapper;

import java.io.Serializable;
import com.${vars.company}.${vars.project}.core.orm.${vars.module}.domain.${class?cap_first};
import com.${vars.company}.${vars.project}.core.service.${vars.module}.${class?cap_first}Service;

<#include "javadoc-file.ftl">
public interface ${class?cap_first}Mapper{

}