package com.todaysTable.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MenuVO {
	private int menu_no;
	private int store_no;
	private String menu_name;
	private String price;
}
