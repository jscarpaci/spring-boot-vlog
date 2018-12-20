package com.jmsmobile.vl.controller;

import com.jmsmobile.vl.validator.SettingsValidator;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import javax.validation.Valid;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.ModelMap;
import com.jmsmobile.vl.util.UserUtil;
import com.jmsmobile.vl.util.Settings;
import com.jmsmobile.vl.model.data.VideoStateDTO;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jmsmobile.vl.model.svc.VlSvc;
import com.jmsmobile.vl.model.data.VideoStatus;

@Controller
public class VideoListCtl {
  @Autowired
  VlSvc vlSvc;
  @Autowired
  SettingsValidator settingsValidator;

  @RequestMapping("/welcome")
  public ModelAndView helloWorld() {
    String message = "<br><div style='text-align:center;'>"
				+ "<h3>Hello World</h3>This message is coming from VisitorLog.java</div><br><br>";
		return new ModelAndView("welcome", "message", message);
  }

  @RequestMapping("/videolist")
  public ModelAndView videoList() {
    List<VideoStatus> vsList = vlSvc.fetchRecentVideoList();
    String message = vsList.size() > 0 ? vsList.get(0).getVideoStoredDate().toString() : "No videos found within last " + Settings.recentVideoInterval().toDays() + " days.";
    return new ModelAndView("videolist", "message", message);
  }

  @RequestMapping("/fetchstatus")
  public ModelAndView fetchStatus() {
    VideoStatus vs = vlSvc.fetchVideoStatusById(1);
    return new ModelAndView("fetchstatus", "message", vs.getFaceDetectResult());
  }

  @RequestMapping("/fetchstatelist")
  public ModelAndView fetchStateList() {
    List<VideoStateDTO> stateList = vlSvc.fetchStateForUserAll(UserUtil.findLoggedInUserid());
    return new ModelAndView("fetchstatelist", "stateList", stateList);
  }

  @RequestMapping("/dashboard")
  public ModelAndView dashboard() {
    int userid = UserUtil.findLoggedInUser().getVlUser().getUserid();
    List<VideoStateDTO>vStateList = vlSvc.fetchVideoStateSuccessForLastNDays(userid);
    ModelAndView mav = new ModelAndView();
    mav.setViewName("dashboard");
    mav.addObject("dtoList", vStateList);
    return mav;
  }

  @RequestMapping("/facesfound")
  public String facesFound(ModelMap map) {
    // int userid = UserUtil.findLoggedInUser().getVlUser().getUserid();
    map.addAttribute("message", "5");
    return "facesfound";
  }

  @RequestMapping("/videos")
  public ModelAndView videos() {
    return new ModelAndView("videos", "message", "foobar");
  }

  @RequestMapping("/knownfaces")
  public ModelAndView knownFaces() {
    return new ModelAndView("knownfaces", "message", "foobar");
  }

  @RequestMapping(value = "/settings", method = RequestMethod.GET)
  public ModelAndView showSettingsForm() {
      return new ModelAndView("settings", "settings", new Settings());
  }

  @RequestMapping(value = "/changeSettings", method = RequestMethod.POST)
  public String submitSettings(@Valid @ModelAttribute("settings")Settings settings,
                               BindingResult result,
                               ModelMap model) {
      settingsValidator.validate(settings, result);
      if (result.hasErrors()) {
          return "settings";
      }
      model.addAttribute("recentVideoInterval", settings.getRecentVideoInterval());
      model.addAttribute("facesFoundLastSeveralDays", settings.getFacesFoundLastSeveralDays());
      model.addAttribute("greeting", settings.getGreeting());
      return "settings";
  }

}
