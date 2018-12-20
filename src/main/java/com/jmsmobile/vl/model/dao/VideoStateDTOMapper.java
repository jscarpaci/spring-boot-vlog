package com.jmsmobile.vl.model.dao;

import org.springframework.jdbc.core.RowMapper;
import java.sql.SQLException;
import java.sql.ResultSet;
import com.jmsmobile.vl.model.data.VideoStateDTO;

public class VideoStateDTOMapper implements RowMapper<VideoStateDTO> {
  @Override
  public VideoStateDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
    VideoStateDTO result = new VideoStateDTO(rs.getInt(1), rs.getString(2),
                          rs.getString(3), rs.getTimestamp(4).toLocalDateTime());
    return result;
  }
}
