package com.todaysTable.vo;

public class DibsVO {
	private int memb_no;
	private int store_no;
	private String store_name;
	private String address;
	private int avg_grade;
	public int getMemb_no() {
		return memb_no;
	}
	public void setMemb_no(int memb_no) {
		this.memb_no = memb_no;
	}
	public int getStore_no() {
		return store_no;
	}
	public void setStore_no(int store_no) {
		this.store_no = store_no;
	}
	public String getStore_name() {
		return store_name;
	}
	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getAvg_grade() {
		return avg_grade;
	}
	public void setAvg_grade(int avg_grade) {
		this.avg_grade = avg_grade;
	}
	public DibsVO(int memb_no, int store_no, String store_name, String address, int avg_grade) {
		super();
		this.memb_no = memb_no;
		this.store_no = store_no;
		this.store_name = store_name;
		this.address = address;
		this.avg_grade = avg_grade;
	}
	public DibsVO() {
		
	}
	@Override
	public String toString() {
		return "DibsVO [memb_no=" + memb_no + ", store_no=" + store_no + ", store_name=" + store_name + ", address="
				+ address + ", avg_grade=" + avg_grade + "]";
	}
	
	
	
}
