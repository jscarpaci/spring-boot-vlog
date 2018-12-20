CREATE TABLE vloguser.users (
  username VARCHAR(256) PRIMARY KEY,
  password VARCHAR(256),
  enabled  BOOLEAN,
  userid SERIAL,
  UNIQUE(userid)
);

CREATE TABLE vloguser.authorities (
  username  VARCHAR(256) REFERENCES users (username),
  authority VARCHAR(256)
);

CREATE TABLE vloguser.videostatus (
	id SERIAL PRIMARY KEY,
	s3location VARCHAR,
  video_stored_date TIMESTAMP WITH TIME ZONE,
  job_status_recorded_date TIMESTAMP WITH TIME ZONE,
  userid INT REFERENCES users (userid),
	face_detect_submit_response JSONB,
	face_detect_result JSONB
);
