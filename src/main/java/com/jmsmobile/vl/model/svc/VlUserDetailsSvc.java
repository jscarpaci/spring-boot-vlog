package com.jmsmobile.vl.model.svc;

import com.jmsmobile.vl.model.data.VlUser;
import com.jmsmobile.vl.model.data.VlUserPrincipal;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.core.userdetails.UserDetails;
import com.jmsmobile.vl.model.dao.VlUserDao;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;


@Service
public class VlUserDetailsSvc implements UserDetailsService {

  @Autowired
  private VlUserDao userDao;

    @Override
    public UserDetails loadUserByUsername(String username) {
        VlUser vlUser = userDao.fetchByUsername(username);
        if (vlUser == null) {
            throw new UsernameNotFoundException(username);
        }
        return new VlUserPrincipal(vlUser);
    }
}
