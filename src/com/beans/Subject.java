package com.beans;

public class Subject {
	private int Subjectid;//插入的时候自增assigned
	private String Subquestion;
	
	private String Suboptions;
	private int Subanswer;
	
	
	public int getSubjectid() {
		return Subjectid;
	}
	public void setSubjectid(int subjectid) {
		Subjectid = subjectid;
	}
	public String getSubquestion() {
		return Subquestion;
	}
	public void setSubquestion(String subquestion) {
		Subquestion = subquestion;
	}
	public String getSuboptions() {
		return Suboptions;
	}
	public void setSuboptions(String suboptions) {
		Suboptions = suboptions;
	}
	public int getSubanswer() {
		return Subanswer;
	}
	public void setSubanswer(int subanswer) {
		Subanswer = subanswer;
	}
	
	public String toString() {
		return "Subject [Subjectid=" + Subjectid + ", Subquestion="
				+ Subquestion + ", Suboptions=" + Suboptions + ", Subanswer="
				+ Subanswer + "]";
	}
	
	
	
	
}
