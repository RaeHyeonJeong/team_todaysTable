package com.todaysTable.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReviewVO {
	// DB 속성
	private int review_no;
	private int memb_no;
	private int store_no;
	private String content;
	private int taste_grade;
	private int service_grade;
	private int mood_grade;
	private int likes;
	private int hits;
	private String reg_date;
	
	// 그외 속성
	private double avg_grade;
	private List<ReviewImageVO> image_list;
	private String nickname;
}
