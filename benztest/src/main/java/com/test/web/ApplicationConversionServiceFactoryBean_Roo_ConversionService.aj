// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.test.web;

import com.test.domain.Tast;
import com.test.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Tast, String> ApplicationConversionServiceFactoryBean.getTastToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.test.domain.Tast, java.lang.String>() {
            public String convert(Tast tast) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, Tast> ApplicationConversionServiceFactoryBean.getIdToTastConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.test.domain.Tast>() {
            public com.test.domain.Tast convert(java.lang.Long id) {
                return Tast.findTast(id);
            }
        };
    }
    
    public Converter<String, Tast> ApplicationConversionServiceFactoryBean.getStringToTastConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.test.domain.Tast>() {
            public com.test.domain.Tast convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Tast.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getTastToStringConverter());
        registry.addConverter(getIdToTastConverter());
        registry.addConverter(getStringToTastConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
