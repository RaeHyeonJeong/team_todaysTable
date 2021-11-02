package com.todaysTable.vo;

public class Store_StatisticsVO {
	
	private int store_no;
	private String admin_id;
	private String name;
	private int avg_grade;
	private int review_cnt;
	private int hits;
	private String location;
	public int getStore_no() {
		return store_no;
	}
	public void setStore_no(int store_no) {
		this.store_no = store_no;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAvg_grade() {
		return avg_grade;
	}
	public void setAvg_grade(int avg_grade) {
		this.avg_grade = avg_grade;
	}
	public int getReview_cnt() {
		return review_cnt;
	}
	public void setReview_cnt(int review_cnt) {
		this.review_cnt = review_cnt;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Store_StatisticsVO(int store_no, String admin_id, String name, int avg_grade, int review_cnt, int hits,
			String location) {
		super();
		this.store_no = store_no;
		this.admin_id = admin_id;
		this.name = name;
		this.avg_grade = avg_grade;
		this.review_cnt = review_cnt;
		this.hits = hits;
		this.location = location;
	}
	public Store_StatisticsVO() {
		
	}
	@Override
	public String toString() {
		return "Store_StatisticsVO [store_no=" + store_no + ", admin_id=" + admin_id + ", name=" + name + ", avg_grade="
				+ avg_grade + ", review_cnt=" + review_cnt + ", hits=" + hits + ", location=" + location + "]";
	}
	
	
	

}