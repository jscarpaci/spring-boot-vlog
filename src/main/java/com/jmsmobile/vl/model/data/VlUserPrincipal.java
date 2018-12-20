package com.jmsmobile.vl.model.data;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class VlUserPrincipal implements UserDetails {
    private VlUser user;

    static final long serialVersionUID = 0L;

    public VlUserPrincipal(VlUser user) {
        this.user = user;
    }
    
    @Override
    public String getUsername() {
      return user.getUsername();
    }

    @Override
    public boolean isEnabled() {
      return user.isEnabled();
    }
    public String getPassword() {
      return user.getPassword();
    }
    public boolean isCredentialsNonExpired() {
      return true;
    }
    public Collection<? extends GrantedAuthority>getAuthorities() {
      final List<GrantedAuthority> authorities = Collections.singletonList(new SimpleGrantedAuthority("User"));
              return authorities;
    }
    public boolean isAccountNonExpired() {
      return true;
    }
    public boolean isAccountNonLocked() {
      return true;
    }
    public VlUser getVlUser() {
      return user;
    }

}
