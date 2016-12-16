package com.beans;

public class Subjectcollection {
	
	private int Subjectcollectionid;//自增
	private int Userid;
	private int Subjectid;
	
	private String Intime;//收藏时间

	public int getSubjectcollectionid() {
		return Subjectcollectionid;
	}

	public void setSubjectcollectionid(int subjectcollectionid) {
		Subjectcollectionid = subjectcollectionid;
	}

	public int getUserid() {
		return Userid;
	}

	public void setUserid(int userid) {
		Userid = userid;
	}

	public int getSubjectid() {
		return Subjectid;
	}

	public void setSubjectid(int subjectid) {
		Subjectid = subjectid;
	}

	public String getIntime() {
		return Intime;
	}

	public void setIntime(String intime) {
		Intime = intime;
	}

	public String toString() {
		return "Subjectcollection [Subjectcollectionid=" + Subjectcollectionid
				+ ", Userid=" + Userid + ", Subjectid=" + Subjectid
				+ ", Intime=" + Intime + "]";
	}
	
	
	
}
