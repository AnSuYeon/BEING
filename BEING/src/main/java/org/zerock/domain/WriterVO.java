package org.zerock.domain;

public class WriterVO {

	private String id;
	private String name;

	public WriterVO(String id, String name) {
		this.id = id;
		this.name = name;
	}

	public WriterVO() {
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "WriterVO [id=" + id + ", name=" + name + "]";
	}

}
