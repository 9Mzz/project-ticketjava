package com.ticketjava.vo;

public class ReserveDetailVo {

//	예매정보 상세용
	private int userNo; // 회원번호
	private int rezNo; // 예매번호
	private int prodNo; // 공연번호
	private int theaterNo; // 공연장번호
	private int selseatNo; // 선택좌석번호
	private String grade; // 좌석등급 1vip 2r 3s 4a 5b
	private int payment; // 결제금액
	private int status; // 상태 예매취소(1예매 0취소)
	private int ticketCount; // 매수 (카운트 (예매번호) 그룹바이 회원번호)
	private int selseatCount; // 예매번호별 총 좌석 갯수
	private int totalPayment; //지불금 총액
	
	private String name; // 이름 (예매자)
	private String prodname; // 공연명 상품명
	private String showTime;
	private String phone; // 예매자 연락처 전화번호
	private String email; // 예매자 연락처 이메일
	
	private String theatername; // 장소 (예술의전당 오페라극장)
	private String hallname; // 시설 (1관 2관)
	private String rezdate; // 예매일
	private String viewdate; // 관람일
	private String showtime; // 공연시작시간 (product)
	
	private String section; // selseat 구역
	private int col; // 열 (a열)
	private int num; // 번호 (3번자리)

	private String dcName; // 할인설명

	public ReserveDetailVo() {
	}

	public ReserveDetailVo(int userNo, int rezNo, int prodNo, int theaterNo, int selseatNo, String grade, int payment,
			int status, int ticketCount, int selseatCount, int totalPayment, String name, String prodname,
			String showTime, String phone, String email, String theatername, String hallname, String rezdate,
			String viewdate, String showtime2, String section, int col, int num, String dcName) {
		this.userNo = userNo;
		this.rezNo = rezNo;
		this.prodNo = prodNo;
		this.theaterNo = theaterNo;
		this.selseatNo = selseatNo;
		this.grade = grade;
		this.payment = payment;
		this.status = status;
		this.ticketCount = ticketCount;
		this.selseatCount = selseatCount;
		this.totalPayment = totalPayment;
		this.name = name;
		this.prodname = prodname;
		this.showTime = showTime;
		this.phone = phone;
		this.email = email;
		this.theatername = theatername;
		this.hallname = hallname;
		this.rezdate = rezdate;
		this.viewdate = viewdate;
		showtime = showtime2;
		this.section = section;
		this.col = col;
		this.num = num;
		this.dcName = dcName;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getRezNo() {
		return rezNo;
	}

	public void setRezNo(int rezNo) {
		this.rezNo = rezNo;
	}

	public int getProdNo() {
		return prodNo;
	}

	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}

	public int getTheaterNo() {
		return theaterNo;
	}

	public void setTheaterNo(int theaterNo) {
		this.theaterNo = theaterNo;
	}

	public int getSelseatNo() {
		return selseatNo;
	}

	public void setSelseatNo(int selseatNo) {
		this.selseatNo = selseatNo;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public int getPayment() {
		return payment;
	}

	public void setPayment(int payment) {
		this.payment = payment;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getTicketCount() {
		return ticketCount;
	}

	public void setTicketCount(int ticketCount) {
		this.ticketCount = ticketCount;
	}

	public int getSelseatCount() {
		return selseatCount;
	}

	public void setSelseatCount(int selseatCount) {
		this.selseatCount = selseatCount;
	}

	public int getTotalPayment() {
		return totalPayment;
	}

	public void setTotalPayment(int totalPayment) {
		this.totalPayment = totalPayment;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getProdname() {
		return prodname;
	}

	public void setProdname(String prodname) {
		this.prodname = prodname;
	}

	public String getShowTime() {
		return showTime;
	}

	public void setShowTime(String showTime) {
		this.showTime = showTime;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTheatername() {
		return theatername;
	}

	public void setTheatername(String theatername) {
		this.theatername = theatername;
	}

	public String getHallname() {
		return hallname;
	}

	public void setHallname(String hallname) {
		this.hallname = hallname;
	}

	public String getRezdate() {
		return rezdate;
	}

	public void setRezdate(String rezdate) {
		this.rezdate = rezdate;
	}

	public String getViewdate() {
		return viewdate;
	}

	public void setViewdate(String viewdate) {
		this.viewdate = viewdate;
	}

	public String getShowtime() {
		return showtime;
	}

	public void setShowtime(String showtime) {
		this.showtime = showtime;
	}

	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}

	public int getCol() {
		return col;
	}

	public void setCol(int col) {
		this.col = col;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getDcName() {
		return dcName;
	}

	public void setDcName(String dcName) {
		this.dcName = dcName;
	}

	@Override
	public String toString() {
		return "ReserveDetailVo [userNo=" + userNo + ", rezNo=" + rezNo + ", prodNo=" + prodNo + ", theaterNo="
				+ theaterNo + ", selseatNo=" + selseatNo + ", grade=" + grade + ", payment=" + payment + ", status="
				+ status + ", ticketCount=" + ticketCount + ", selseatCount=" + selseatCount + ", totalPayment="
				+ totalPayment + ", name=" + name + ", prodname=" + prodname + ", showTime=" + showTime + ", phone="
				+ phone + ", email=" + email + ", theatername=" + theatername + ", hallname=" + hallname + ", rezdate="
				+ rezdate + ", viewdate=" + viewdate + ", showtime=" + showtime + ", section=" + section + ", col="
				+ col + ", num=" + num + ", dcName=" + dcName + "]";
	}

	
	
	
	

} // The end of ReserveDetailVo
