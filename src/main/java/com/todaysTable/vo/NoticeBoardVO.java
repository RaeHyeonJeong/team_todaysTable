package com.todaysTable.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NoticeBoardVO {
	private int notice_no;
	private String title;
	private String content;
	private String password;
	private int hits;
	private String reg_date;
	private String admin_id;
}
