package com.todaysTable.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberVO {
	private int member_no;
	private String id;
	private String password;
	private String name;
	private Date birthdate;
	private String email;
	private String tel;
	private String address;
	private String nickname;
	private String profile_image_path;
	private Date sign_up_date;
	private String admin_id;
	
	}







