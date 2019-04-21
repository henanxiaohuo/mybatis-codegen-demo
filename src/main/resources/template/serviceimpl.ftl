<#import "function.ftl" as func>
<#assign class=model.variables.class>
package com.${vars.company}.${vars.project}.service.impl;

import java.io.Serializable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.${vars.company}.${vars.project}.orm.domain.${class?cap_first};
import com.${vars.company}.${vars.project}.orm.mapper.${class?cap_first}Mapper;
import com.${vars.company}.${vars.project}.service.${class?cap_first}Service;
/**
 * Description: ${model.tabComment} Service
 <#if vars.company??>
 * Copyright: ©${date?string("yyyy")} ${vars.company}. All rights reserved.
 </#if>
 <#if vars.developer??>
 * @author ${vars.developer}
 </#if>
 * Created on: ${date?string("yyyy-MM-dd HH:mm:ss")}
 */
@Service
public class ${class}ServiceImpl implements ${class}Service{

}