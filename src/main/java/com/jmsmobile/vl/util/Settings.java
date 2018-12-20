package com.jmsmobile.vl.util;

import java.time.Duration;

public class Settings {

  private static Duration recentVideoInterval = Duration.ofHours(24 * 21);
  private static int facesFoundLastSeveralDays = 27;
  private static String greeting = "Welcome";

  public static Duration recentVideoInterval() {
    return recentVideoInterval;
  };
  public static int facesFoundLastSeveralDays() {
    return facesFoundLastSeveralDays;
  }
  public static String greeting() {
    return greeting;
  }

  public Duration getRecentVideoInterval() {
    return recentVideoInterval;
  }
  public void setRecentVideoInterval(Duration recentVideoInterval) {
    Settings.recentVideoInterval = recentVideoInterval;
  }
  public int getFacesFoundLastSeveralDays() {
    return facesFoundLastSeveralDays;
  }
  public void setFacesFoundLastSeveralDays(int facesFoundLastSeveralDays) {
    Settings.facesFoundLastSeveralDays = facesFoundLastSeveralDays;
  }
  public String getGreeting() {
    return greeting;
  }
  public void setGreeting(String greeting) {
    Settings.greeting = greeting;
  }


}
