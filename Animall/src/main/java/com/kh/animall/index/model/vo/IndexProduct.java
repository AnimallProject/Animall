package com.kh.animall.index.model.vo;

import java.sql.Date;

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
public class IndexProduct {

	private int pno;
	private String ptype;
	private String pname;
	private int pprice;
	private String pdetail;
	private String pguide;
	private char isdelete;
	private int reviewamount;
}
