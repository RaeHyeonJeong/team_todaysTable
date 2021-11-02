package com.todaysTable.vo;

public class Store_More_InfoVO {
	
	private int store_no;
	private double avg_grade;
	private int review_cnt;
	private int dibs_cnt;
	private int hits;
	private int monthly_visit_count;
	private int day_visit_count;
	public int getStore_no() {
		return store_no;
	}
	public void setStore_no(int store_no) {
		this.store_no = store_no;
	}
	public double getAvg_grade() {
		return avg_grade;
	}
	public void setAvg_grade(double avg_grade) {
		this.avg_grade = avg_grade;
	}
	public int getReview_cnt() {
		return review_cnt;
	}
	public void setReview_cnt(int review_cnt) {
		this.review_cnt = review_cnt;
	}
	public int getDibs_cnt() {
		return dibs_cnt;
	}
	public void setDibs_cnt(int dibs_cnt) {
		this.dibs_cnt = dibs_cnt;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public int getMonthly_visit_count() {
		return monthly_visit_count;
	}
	public void setMonthly_visit_count(int monthly_visit_count) {
		this.monthly_visit_count = monthly_visit_count;
	}
	public int getDay_visit_count() {
		return day_visit_count;
	}
	public void setDay_visit_count(int day_visit_count) {
		this.day_visit_count = day_visit_count;
	}
	public Store_More_InfoVO(int store_no, double avg_grade, int review_cnt, int dibs_cnt, int hits,
			int monthly_visit_count, int day_visit_count) {
		super();
		this.store_no = store_no;
		this.avg_grade = avg_grade;
		this.review_cnt = review_cnt;
		this.dibs_cnt = dibs_cnt;
		this.hits = hits;
		this.monthly_visit_count = monthly_visit_count;
		this.day_visit_count = day_visit_count;
	}
	public Store_More_InfoVO() {
		
	}
	@Override
	public String toString() {
		return "Store_More_InfoVO [store_no=" + store_no + ", avg_grade=" + avg_grade + ", review_cnt=" + review_cnt
				+ ", dibs_cnt=" + dibs_cnt + ", hits=" + hits + ", monthly_visit_count=" + monthly_visit_count
				+ ", day_visit_count=" + day_visit_count + "]";
	}
	
	
	

}