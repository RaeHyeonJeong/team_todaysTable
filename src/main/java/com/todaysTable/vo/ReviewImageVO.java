package com.todaysTable.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReviewImageVO {
	private int image_no;
	private int review_no;
	private String image_path;
}
