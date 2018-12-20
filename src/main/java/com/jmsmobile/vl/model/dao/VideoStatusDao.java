package com.jmsmobile.vl.model.dao;

import com.jmsmobile.vl.model.data.FaceDetectProcessingStatus;
import java.time.LocalDateTime;
import com.jmsmobile.vl.util.DateUtil;
import com.jmsmobile.vl.util.Settings;
import java.util.List;
import com.jmsmobile.vl.model.data.VideoStateDTO;
import org.springframework.stereotype.Repository;
import com.jmsmobile.vl.model.data.VideoStatus;
import org.springframework.jdbc.core.BeanPropertyRowMapper;

@Repository(value="videoStatusDao")
public class VideoStatusDao extends VlBaseDao {

  public List<VideoStateDTO> fetchStateAll() {
    String sql = "select vs.id, vs.s3location, vs.face_detect_result->'JobStatus', vs.job_status_recorded_date from vloguser.videostatus vs";
    List<VideoStateDTO> stateList = template.query(sql, new VideoStateDTOMapper());
    return stateList;
  }
  public List<VideoStatus> fetchRecentVideoList() {
    LocalDateTime now = DateUtil.now();
    LocalDateTime earliestDate = now.minusHours(Settings.recentVideoInterval().toHours());
    String sql = "select * from videostatus where video_stored_date > ?";
    List<VideoStatus> result = template.query(sql,
                                  new Object[]{earliestDate},
                                  new BeanPropertyRowMapper<VideoStatus>(VideoStatus.class));
    return result;
  }

  public VideoStatus fetchVideoStatusById(int id) {
    String sql = "select * from videostatus where id = ?";
    return template.queryForObject(sql,
                                  new Object[]{id},
                                  new BeanPropertyRowMapper<VideoStatus>(VideoStatus.class));
  }

  public List<VideoStateDTO> fetchStateForUserAll(int userid) {
    String sql = "select vs.id, vs.s3location, vs.face_detect_result->'JobStatus', vs.job_status_recorded_date " +
                 "from vloguser.videostatus vs where userid = ?";
    List<VideoStateDTO> stateList = template.query(sql, new Object[]{userid}, new VideoStateDTOMapper());
    return stateList;
  }

  public List<VideoStateDTO> fetchVideoStateForLastNDays(int userid,
                                                int numberOfDays,
                                                FaceDetectProcessingStatus processingStatus) {
    String sql = "select vs.id, vs.s3location, vs.face_detect_result->'JobStatus', vs.job_status_recorded_date " +
                 "from vloguser.videostatus vs where userid = ? " +
                 "   and video_stored_date > ? " +
                 "   and face_detect_result->>'JobStatus' = '" + processingStatus + "'";
    LocalDateTime now = DateUtil.now();
    LocalDateTime earliestDate = now.minusDays(numberOfDays);
    List<VideoStateDTO> stateList = template.query(sql, new Object[]{userid, earliestDate}, new VideoStateDTOMapper());
    return stateList;
  }

}
