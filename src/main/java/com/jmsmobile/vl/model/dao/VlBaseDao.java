package com.jmsmobile.vl.model.dao;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class VlBaseDao {
  @Autowired
  JdbcTemplate template;

  public void setTemplate(JdbcTemplate template) {
      this.template = template;
  }
}
