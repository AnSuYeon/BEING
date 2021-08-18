package org.zerock.domain;

public class FaqVO {
	
	private Integer num;
	private String category;	
	private String question;
	private String answer;
	
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	@Override
	public String toString() {
		return "FaqVO [num=" + num + ", category=" + category + ", question=" + question + ", answer=" + answer + "]";
	}
}
