package com.ticketjava.vo;

public class NoticeVo {
	
	private int noticeNo;
	private int theaterNo;
	private String content;
	private String regDate;
	private String theaterName;
	private String homePage;
	
	
	public NoticeVo() {
		
	}


	public NoticeVo(int noticeNo, int theaterNo, String content, String regDate, String theaterName, String homePage) {
		this.noticeNo = noticeNo;
		this.theaterNo = theaterNo;
		this.content = content;
		this.regDate = regDate;
		this.theaterName = theaterName;
		this.homePage = homePage;
	}


	public int getNoticeNo() {
		return noticeNo;
	}


	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}


	public int getTheaterNo() {
		return theaterNo;
	}


	public void setTheaterNo(int theaterNo) {
		this.theaterNo = theaterNo;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getRegDate() {
		return regDate;
	}


	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}


	public String getTheaterName() {
		return theaterName;
	}


	public void setTheaterName(String theaterName) {
		this.theaterName = theaterName;
	}


	public String getHomePage() {
		return homePage;
	}


	public void setHomePage(String homePage) {
		this.homePage = homePage;
	}


	@Override
	public String toString() {
		return "NoticeVo [noticeNo=" + noticeNo + ", theaterNo=" + theaterNo + ", content=" + content + ", regDate="
				+ regDate + ", theaterName=" + theaterName + ", homePage=" + homePage + "]";
	}

}
