package com.ticketjava.vo;

public class SeatVo {

	private int seatNo;
	private int hallNo;

	private String grade;
	private String section;
	private int col;
	private int num;
	private int status;

	public SeatVo() {
	}

	public SeatVo(int seatNo, int hallNo, String grade, String section, int col, int num, int status) {
		this.seatNo = seatNo;
		this.hallNo = hallNo;
		this.grade = grade;
		this.section = section;
		this.col = col;
		this.num = num;
		this.status = status;
	}

	public int getSeatNo() {
		return seatNo;
	}

	public void setSeatNo(int seatNo) {
		this.seatNo = seatNo;
	}

	public int getHallNo() {
		return hallNo;
	}

	public void setHallNo(int hallNo) {
		this.hallNo = hallNo;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
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

	public int getstatus() {
		return status;
	}

	public void setstatus(int status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "SeatVo [seatNo=" + seatNo + ", hallNo=" + hallNo + ", grade=" + grade + ", section=" + section
				+ ", col=" + col + ", num=" + num + ", status=" + status + "]";
	}

}
