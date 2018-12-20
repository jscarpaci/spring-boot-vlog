package com.jmsmobile.vl.model.data;

import java.time.LocalDateTime;

public class VideoStateDTO {
  private Integer id;
  private String s3location;
  private String jobStatus;
  private LocalDateTime jobStatusRecordedDate;

	/**
	* Default empty VideoStateDTO constructor
	*/
	public VideoStateDTO() {
		super();
	}

	/**
	* Default VideoStateDTO constructor
	*/
	public VideoStateDTO(Integer id, String s3location, String jobStatus, LocalDateTime jobStatusRecordedDate) {
		super();
		this.id = id;
		this.s3location = s3location;
		this.jobStatus = jobStatus;
    this.jobStatusRecordedDate = jobStatusRecordedDate;
	}


  public LocalDateTime getJobStatusRecordedDate() {
    return this.jobStatusRecordedDate;
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
	* Returns value of jobStatus
	* @return
	*/
	public String getJobStatus() {
		return jobStatus;
	}

	/**
	* Sets new value of jobStatus
	* @param
	*/
	public void setJobStatus(String jobStatus) {
		this.jobStatus = jobStatus;
	}
}
