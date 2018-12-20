package com.jmsmobile.vl.model.svc;

import com.jmsmobile.vl.model.data.FaceDetectProcessingStatus;
import com.jmsmobile.vl.util.Settings;
import com.jmsmobile.vl.model.data.VideoStateDTO;
import org.springframework.stereotype.Service;
import com.jmsmobile.vl.model.dao.VideoStatusDao;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;
import com.jmsmobile.vl.model.data.VideoStatus;

@Service(value="vlSvc")
public class VlSvc {
  @Autowired
  private VideoStatusDao videoStatusDao;

  public List<VideoStatus> fetchRecentVideoList() {
    List<VideoStatus>vsList = videoStatusDao.fetchRecentVideoList();
    return vsList;
  }

  public VideoStatus fetchVideoStatusById(int id) {
    return videoStatusDao.fetchVideoStatusById(id);
  }

  public List<VideoStateDTO> fetchStateAll() {
    return videoStatusDao.fetchStateAll();
  }
  public List<VideoStateDTO> fetchStateForUserAll(int userid) {
    return videoStatusDao.fetchStateForUserAll(userid);
  }

  public List<VideoStateDTO> fetchVideoStateSuccessForLastNDays(int userid) {
    return videoStatusDao.fetchVideoStateForLastNDays(userid,
                        Settings.facesFoundLastSeveralDays(),
                        FaceDetectProcessingStatus.SUCCEEDED);
  }

}
