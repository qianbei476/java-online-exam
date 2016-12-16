package com.beans;

public class STATUS {
	private String USERNAME;
	private String type;
	private String value = "failed";
	
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public String getUSERNAME() {
		return USERNAME;
	}
	public void setUSERNAME(String uSERNAME) {
		USERNAME = uSERNAME;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	public String toString() {
		return "STATUS [USERNAME=" + USERNAME + ", type=" + type + ", value="
				+ value + "]";
	}
	
	
	
}
