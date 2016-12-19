package com.beans;

public class User {
	private int Userid;
	private String Username,Password;
	private String Email;
	private int Score;
	
	public int getUserid() {
		return Userid;
	}
	public void setUserid(int userid) {
		Userid = userid;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public int getScore() {
		return Score;
	}
	public void setScore(int score) {
		Score = score;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String toString() {
		return "User [Userid=" + Userid + ", Username=" + Username
				+ ", Password=" + Password + ", Email=" + Email + ", Score="
				+ Score + "]";
	}
	public User(String username, String password, String email, int score) {
		super();
		Username = username;
		Password = password;
		Email = email;
		Score = score;
	}
	public User(int userid, String username, String password, String email,
			int score) {
		super();
		Userid = userid;
		Username = username;
		Password = password;
		Email = email;
		Score = score;
	}
	public User(String username, String password) {
		super();
		Username = username;
		Password = password;
	}
	public User() {
		super();
	}
	
	
	
}
