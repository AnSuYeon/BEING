package org.zerock.domain;

import java.util.Date;

import org.springframework.stereotype.Component;

public class UserVO {
	private String email;
	private String name;
	private String password;
	private int lvl;
	private Date registDay;
	
	private String email_conf;
	private String email_code;
	 

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getLvl() {
		return lvl;
	}

	public void setLvl(int lvl) {
		this.lvl = lvl;
	}

	public Date getRegistDay() {
		return registDay;
	}

	public void setRegistday(Date registDay) {
		this.registDay = registDay;
	}

	public String getEmail_conf() {
		return email_conf;
	}

	public void setEmail_conf(String email_conf) {
		this.email_conf = email_conf;
	}

	public String getEmail_code() {
		return email_code;
	}

	public void setEmail_code(String email_code) {
		this.email_code = email_code;
	}

	public void setRegistDay(Date registDay) {
		this.registDay = registDay;
	}

	@Override
	public String toString() {
		return "UserVO [email=" + email + ", name=" + name + ", password=" + password + ", lvl=" + lvl + ", registDay="
				+ registDay + ", email_conf=" + email_conf + ", email_code=" + email_code + "]";
	}

	
}