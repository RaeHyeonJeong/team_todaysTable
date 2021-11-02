package com.todaysTable.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter
@ToString
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
	
}
