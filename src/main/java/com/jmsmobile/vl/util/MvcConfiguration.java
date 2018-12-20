package com.jmsmobile.vl.util;

import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;


@Configuration
// @EnableWebMvc    // this is commented out so css/style.css gets delivered.  See browser console for more details
@ComponentScan(basePackages = "com.jmsmobile.vl")
public class MvcConfiguration implements WebMvcConfigurer {

  @Override
  public void addViewControllers(ViewControllerRegistry registry) {
      registry.addViewController("/").setViewName("index");

  }

  @Override
  public void configureViewResolvers(ViewResolverRegistry registry) {
      InternalResourceViewResolver resolver = new InternalResourceViewResolver();
      resolver.setPrefix("/WEB-INF/view/");
      resolver.setSuffix(".jsp");
      resolver.setViewClass(JstlView.class);
      registry.viewResolver(resolver);
  }



}
