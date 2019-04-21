<#include "javadoc-copyright.ftl">
<#import "function.ftl" as func>
<#assign class=model.variables.class>
package com.${vars.company}.${vars.project}.core.service.${vars.module};

import java.io.Serializable;

import com.${vars.company}.${vars.project}.core.orm.${vars.module}.domain.${class?cap_first};

<#include "javadoc-file.ftl">
public interface ${class}Service{
}