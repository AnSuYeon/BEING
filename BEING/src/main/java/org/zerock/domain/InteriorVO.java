package org.zerock.domain;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class InteriorVO {
	
	private Integer num;
	private String cname;
	private String introduce;
	
	
//대표 사진
	private String filename;
	private String realname;
	
	
	private List<MultipartFile> uploadfile;


	public Integer getNum() {
		return num;
	}


	public void setNum(Integer num) {
		this.num = num;
	}


	public String getCname() {
		return cname;
	}


	public void setCname(String cname) {
		this.cname = cname;
	}


	public String getIntroduce() {
		return introduce;
	}


	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}


	public String getFilename() {
		return filename;
	}


	public void setFilename(String filename) {
		this.filename = filename;
	}


	public String getRealname() {
		return realname;
	}


	public void setRealname(String realname) {
		this.realname = realname;
	}


	public List<MultipartFile> getUploadfile() {
		return uploadfile;
	}


	public void setUploadfile(List<MultipartFile> uploadfile) {
		this.uploadfile = uploadfile;
	}
	
	@Override
	public String toString() {
		return "InteriorVO [num=" + num + ", cname=" + cname + ", introduce=" + introduce + ", filename=" + filename
				+ ", realname=" + realname + ", uploadfile=" + uploadfile + "]";
	}
	
}
