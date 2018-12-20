package com.jmsmobile.vl.model.dao;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import com.jmsmobile.vl.model.data.VlUser;
import org.springframework.stereotype.Repository;

@Repository(value="vlUserDao")
public class VlUserDao extends VlBaseDao {

  public VlUser fetchByUsername(String username) {
    String sql = "select * from users where username = ?";
    return template.queryForObject(sql,
                                  new Object[]{username},
                                  new BeanPropertyRowMapper<VlUser>(VlUser.class));
  }

}
