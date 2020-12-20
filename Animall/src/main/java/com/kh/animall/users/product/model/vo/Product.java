package com.kh.animall.users.product.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Product {
	
	private int pno;
	private String ptype;
	private String pname;
	private String pcontent;
	private int pprice;
	private String pdetail;
	private boolean isDelete;
	private int reviewAmount;
		
}
