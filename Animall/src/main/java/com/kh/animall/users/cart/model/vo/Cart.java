package com.kh.animall.users.cart.model.vo;
import lombok.*;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Cart {
	int cno;
	int mno;
	int pno;
	int amount;
	int orderPrice;
	int shipFee;
	String isFreeShip;
}
