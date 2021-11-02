package com.todaysTable.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


public class StoreVO {
	
	private int store_no;
	private String name; 
	private String tel;
	private String business_hours;
	private String location;
	private String address;
	private String day_off;
	private String break_time;
	private String category;
	private String last_update_date;
	private float latitude;
	private float longitude;
	private String admin_id;
	public int getStore_no() {
		return store_no;
	}
	public void setStore_no(int store_no) {
		this.store_no = store_no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getBusiness_hours() {
		return business_hours;
	}
	public void setBusiness_hours(String business_hours) {
		this.business_hours = business_hours;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDay_off() {
		return day_off;
	}
	public void setDay_off(String day_off) {
		this.day_off = day_off;
	}
	public String getBreak_time() {
		return break_time;
	}
	public void setBreak_time(String break_time) {
		this.break_time = break_time;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getLast_update_date() {
		return last_update_date;
	}
	public void setLast_update_date(String last_update_date) {
		this.last_update_date = last_update_date;
	}
	public float getLatitude() {
		return latitude;
	}
	public void setLatitude(float latitude) {
		this.latitude = latitude;
	}
	public float getLongitude() {
		return longitude;
	}
	public void setLongitude(float longitude) {
		this.longitude = longitude;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	@Override
	public String toString() {
		return "StoreVO [store_no=" + store_no + ", name=" + name + ", tel=" + tel + ", business_hours="
				+ business_hours + ", location=" + location + ", address=" + address + ", day_off=" + day_off
				+ ", break_time=" + break_time + ", category=" + category + ", last_update_date=" + last_update_date
				+ ", latitude=" + latitude + ", longitude=" + longitude + ", admin_id=" + admin_id + "]";
	}
	public StoreVO(int store_no, String name, String tel, String business_hours, String location, String address,
			String day_off, String break_time, String category, String last_update_date, float latitude,
			float longitude, String admin_id) {
		super();
		this.store_no = store_no;
		this.name = name;
		this.tel = tel;
		this.business_hours = business_hours;
		this.location = location;
		this.address = address;
		this.day_off = day_off;
		this.break_time = break_time;
		this.category = category;
		this.last_update_date = last_update_date;
		this.latitude = latitude;
		this.longitude = longitude;
		this.admin_id = admin_id;
	}
	public StoreVO() {
		
	}
	
	
	
}
