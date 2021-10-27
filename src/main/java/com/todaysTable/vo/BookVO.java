package com.todaysTable.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BookVO {
	
	// DB 속성
	private int memb_no;
	private	int store_no;
	private int room_no;
	private int headcount;
	private String reserve_date;
	private String is_canceled;
	private String cancel_date;
	private String name;
	private String tel;
	private String email;
	
	// 그외 속성
	private String bookingDate;
	private String time;
}
