package com.jmsmobile.vl.model.data;

public class VlUser {
  private String username;
  private String password;
  private boolean enabled;
  private int userid;



	/**
	* Default empty VlUser constructor
	*/
	public VlUser() {
		super();
	}

	/**
	* Default VlUser constructor
	*/
	public VlUser(String username, String password, boolean enabled, int userid) {
		super();
		this.username = username;
		this.password = password;
		this.enabled = enabled;
		this.userid = userid;
	}

	/**
	* Returns value of username
	* @return
	*/
	public String getUsername() {
		return username;
	}

	/**
	* Sets new value of username
	* @param
	*/
	public void setUsername(String username) {
		this.username = username;
	}

	/**
	* Returns value of password
	* @return
	*/
	public String getPassword() {
		return password;
	}

	/**
	* Sets new value of password
	* @param
	*/
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	* Returns value of enabled
	* @return
	*/
	public boolean isEnabled() {
		return enabled;
	}

	/**
	* Sets new value of enabled
	* @param
	*/
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	/**
	* Returns value of userid
	* @return
	*/
	public int getUserid() {
		return userid;
	}

	/**
	* Sets new value of userid
	* @param
	*/
	public void setUserid(int userid) {
		this.userid = userid;
	}
}
