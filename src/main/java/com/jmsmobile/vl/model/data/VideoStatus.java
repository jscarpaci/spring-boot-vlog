package com.jmsmobile.vl.model.data;

import java.time.LocalDateTime;

public class VideoStatus {
  private Integer id;
  private String s3location;
  private LocalDateTime videoStoredDate;
  private LocalDateTime jobStatusRecordedDate;
  private Integer userid;
  private String faceDetectSubmitResponse;
  private String faceDetectResult;

  /**
	* Default empty VidoeStatus constructor
	*/
	public VideoStatus() {
		super();
	}

  /**
	* Default VidoeStatus constructor
	*/
	public VideoStatus(Integer id, String s3location, LocalDateTime videoStoredDate, LocalDateTime jobStatusRecordedDate, Integer userid, String faceDetectSubmitResponse, String faceDetectResult) {
		super();
		this.id = id;
		this.s3location = s3location;
    this.videoStoredDate = videoStoredDate;
    this.jobStatusRecordedDate = jobStatusRecordedDate;
    this.userid = userid;
		this.faceDetectSubmitResponse = faceDetectSubmitResponse;
		this.faceDetectResult = faceDetectResult;
	}

  public LocalDateTime getVideoStoredDate() {
    return videoStoredDate;
  }
  public void setVideoStoredDate(LocalDateTime videoStoredDate) {
    this.videoStoredDate = videoStoredDate;
  }
  public LocalDateTime getJobStatusRecordedDate() {
    return jobStatusRecordedDate;
  }
  public void setJobStatusRecordedDate(LocalDateTime jobStatusRecordedDate) {
    this.jobStatusRecordedDate = jobStatusRecordedDate;
  }

	/**
	* Returns value of id
	* @return
	*/
	public Integer getId() {
		return id;
	}

	/**
	* Sets new value of id
	* @param
	*/
	public void setId(Integer id) {
		this.id = id;
	}

  /**
	* Returns value of userid
	* @return
	*/
	public Integer getUserid() {
		return userid;
	}

	/**
	* Sets new value of userid
	* @param
	*/
	public void setUserid(Integer userid) {
		this.userid = userid;
	}


	/**
	* Returns value of s3location
	* @return
	*/
	public String getS3location() {
		return s3location;
	}

	/**
	* Sets new value of s3location
	* @param
	*/
	public void setS3location(String s3location) {
		this.s3location = s3location;
	}

	/**
	* Returns value of faceDetectSubmitReeponse
	* @return
	*/
	public String getFaceDetectSubmitResponse() {
		return faceDetectSubmitResponse;
	}

	/**
	* Sets new value of faceDetectSubmitReeponse
	* @param
	*/
	public void setFaceDetectSubmitResponse(String faceDetectSubmitResponse) {
		this.faceDetectSubmitResponse = faceDetectSubmitResponse;
	}

	/**
	* Returns value of faceDetectResult
	* @return
	*/
	public String getFaceDetectResult() {
		return faceDetectResult;
	}

	/**
	* Sets new value of faceDetectResult
	* @param
	*/
	public void setFaceDetectResult(String faceDetectResult) {
		this.faceDetectResult = faceDetectResult;
	}


}
