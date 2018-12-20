package com.jmsmobile.vl.util;

import com.jmsmobile.vl.model.data.VlUser;
import org.springframework.security.core.context.SecurityContextHolder;
import com.jmsmobile.vl.model.data.VlUserPrincipal;

public class UserUtil {
  public static VlUserPrincipal findLoggedInUser() {
    VlUserPrincipal userPrincipal = null;
    Object user = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
    if (user != null && (user instanceof VlUserPrincipal)) {
      userPrincipal = (VlUserPrincipal)user;
    } else if (user != null && (user instanceof String)) {
      System.err.println("WARNING.  A userid of 1 is being forced.");
      int fakeUserid = 1;
      VlUser vlUser = new VlUser((String)user, "******", true, fakeUserid);
      userPrincipal = new VlUserPrincipal(vlUser);
    } else {
      System.err.println("user is NULL.  Something unexpected with SecurityContextHolder.getContext().getAuthentication().getPrincipal()");
      int failingUserid = 0;
      VlUser vlUser = new VlUser((String)user, "******", true, failingUserid);
      userPrincipal = new VlUserPrincipal(vlUser);
    }
    return userPrincipal;
  }
  public static int findLoggedInUserid() {
    return UserUtil.findLoggedInUser().getVlUser().getUserid();
  }
}
