package org.zerock.domain;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

public class BoardVO {

//	private WriterVO writerVO;

	private String name;
	private String email;
	private Integer num;
	private String type;
	private String acreage;
	private String budget;
	private String field;
	private String space;
	private String title;
	private String contentof;
	private Date registday;
	private Integer readcount;
	private String fileName;
	private String fileRealName;

	private List<MultipartFile> uploadfile;

//	public BoardVO() {
//		super();
//		this.writerVO = new WriterVO();
//	}

	public List<MultipartFile> getUploadfile() {
		return uploadfile;
	}

	public void setUploadfile(List<MultipartFile> uploadfile) {
		this.uploadfile = uploadfile;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
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

	public String getContentOf() {
		return contentof;
	}

	public void setContentOf(String contentof) {
		this.contentof = contentof;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getAcreage() {
		return acreage;
	}

	public void setAcreage(String acreage) {
		this.acreage = acreage;
	}

	public String getBudget() {
		return budget;
	}

	public void setBudget(String budget) {
		this.budget = budget;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getSpace() {
		return space;
	}

	public void setSpace(String space) {
		this.space = space;
	}

	public String getContentof() {
		return contentof;
	}

	public void setContentof(String contentof) {
		this.contentof = contentof;
	}

	public Date getRegistday() {
		return registday;
	}

	public void setRegistday(Date registday) {
		this.registday = registday;
	}

	public Integer getReadcount() {
		return readcount;
	}

	public void setReadcount(Integer readcount) {
		this.readcount = readcount;
	}
	
	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	public String getFileRealName() {
		return fileRealName;
	}

	public void setFileRealName(String fileRealName) {
		this.fileRealName = fileRealName;
	}

	@Override
	public String toString() {
		return "BoardVO [name=" + name + ", email=" + email + ", num=" + num + ", type=" + type + ", acreage=" + acreage
				+ ", budget=" + budget + ", field=" + field + ", space=" + space + ", title=" + title + ", contentof="
				+ contentof + ", registday=" + registday + ", readcount=" + readcount + ", fileName=" + fileName
				+ ", fileRealName=" + fileRealName + ", uploadfile=" + uploadfile + "]";
	}


}