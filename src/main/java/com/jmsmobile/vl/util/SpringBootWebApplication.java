package com.jmsmobile.vl.util;

import org.springframework.core.env.Environment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
@PropertySource(
  {
    "classpath:messages.properties",
    "classpath:db.properties"
  })
public class SpringBootWebApplication extends SpringBootServletInitializer {
    @Autowired
    Environment env;

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(SpringBootWebApplication.class);
    }

    public static void main(String[] args) throws Exception {
        System.setProperty("server.servlet.context-path", "/vl");
        SpringApplication.run(SpringBootWebApplication.class, args);
    }

    @Bean
    public DataSource dataSource() {
      String driverClassName = env.getProperty("db.driver.class.name");
      String url = env.getProperty("db.url");
      String username = env.getProperty("db.username");
      String password = env.getProperty("db.password");
      DataSource dataSource = new DataSource(); // org.apache.tomcat.jdbc.pool.DataSource;
      dataSource.setDriverClassName(driverClassName);
      dataSource.setUrl(url);
      dataSource.setUsername(username);
      dataSource.setPassword(password);
      // dataSource.setTestWhileIdle(testWhileIdle);
      // dataSource.setTimeBetweenEvictionRunsMillis(timeBetweenEvictionRunsMills);
      // dataSource.setValidationQuery(validationQuery);
      return dataSource;
    }

    @Value("${field.required}")
    private String fieldRequired;
    @Value("${field.must.be.greater.than.zero}")
    private String fileMustBeGreaterThanZero;


}
