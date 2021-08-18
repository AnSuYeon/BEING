package org.zerock.domain;

import java.util.Date;

import org.springframework.stereotype.Component;

public class InteriorAskVO {
	
	private Integer num;
	private String email;
	private String name;
	
	private String title;
	private Date registday;
	private String budget;
	private String area;
	private String fieldof;
	private String address;
	private String datestart;
	private String datedone;
	private String message;
	private String tel;
	
	private String cname;
	private String answer;
	
	private Integer grade;
	private String contentof;
	
	private String imagea;
	private String imageb;
	

	
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}

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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getRegistday() {
		return registday;
	}
	public void setRegistday(Date registday) {
		this.registday = registday;
	}
	public String getBudget() {
		return budget;
	}
	public void setBudget(String budget) {
		this.budget = budget;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getFieldof() {
		return fieldof;
	}
	public void setFieldof(String fieldof) {
		this.fieldof = fieldof;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDatestart() {
		return datestart;
	}
	public void setDatestart(String datestart) {
		this.datestart = datestart;
	}
	public String getDatedone() {
		return datedone;
	}
	public void setDatedone(String datedone) {
		this.datedone = datedone;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public Integer getGrade() {
		return grade;
	}
	public void setGrade(Integer grade) {
		this.grade = grade;
	}
	public String getContentof() {
		return contentof;
	}
	public void setContentof(String contentof) {
		this.contentof = contentof;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getImagea() {
		return imagea;
	}
	public void setImagea(String imagea) {
		this.imagea = imagea;
	}
	public String getImageb() {
		return imageb;
	}
	public void setImageb(String imageb) {
		this.imageb = imageb;
	}



	@Override
	public String toString() {
		return "InteriorAskVO [num=" + num + ",  email=" + email + ", name=" + name + ", title=" + title + ", registday=" + registday +",budget="+budget+", area="+area+",  fieldof="+fieldof+",address="+address+", datestart="+datestart+", datedone="+datedone+",message="+ message+", cname="+cname+", answer="+answer+", grade="+grade+", contentof="+contentof+",tel="+tel+", imagea="+imagea+", imageb="+imageb+"";
	}
	

	

}