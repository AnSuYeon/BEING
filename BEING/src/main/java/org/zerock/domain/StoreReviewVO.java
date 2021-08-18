package org.zerock.domain;

import java.util.Date;

public class StoreReviewVO {

  private Integer num;
  private Integer prodnum;
  private String contentof;
  private String email;
  private String name;
  private Integer grade;
  
  private Date registday;

  public Integer getNum() {
    return num;
  }

  public void setNum(Integer num) {
    this.num = num;
  }

  public Integer getProdnum() {
    return prodnum;
  }

  public void setProdnum(Integer prodnum) {
    this.prodnum = prodnum;
  }

  public String getContentof() {
    return contentof;
  }

  public void setContentof(String contentof) {
    this.contentof = contentof;
  }

  public Integer getGrade() {
	return grade;
}

public void setGrade(Integer grade) {
	this.grade = grade;
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

public Date getRegistday() {
    return registday;
  }

  public void setRegistday(Date registday) {
    this.registday = registday;
  }


  @Override
  public String toString() {
    return "ReviewVO [num=" + num + ", prodnum=" + prodnum + ", contentof=" + contentof + ", email=" + email + ", registday="
        + registday  + ", grade=" + grade +"]";
  }
}
