package com.kh.animall.users.order.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

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
@Component
public class Order {
	
	private int preno;  // 결제기록번호
	private int pno;    // 상품번호
	private int mno;    // 회원번호
	private String paymethod; // 결제방법
	private Date paydate; // 결제날짜
	private char paystatus; // 결제상태
	private int payamount; // 결제수량
	private String orderer; // 주문자
	private String address; // 배송지
	private String changename; // 이미지
	private String pname;    // 상품명
	private String pcontent; // 상품 정보 
	private int pprice;     // 상품 가격 

}
