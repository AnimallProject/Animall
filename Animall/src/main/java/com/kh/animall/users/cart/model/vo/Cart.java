package com.kh.animall.users.cart.model.vo;
import lombok.*;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Cart {
 private int cno;
 private int mno;
 private int pno;
 private int amount;
 private int orderprice;
 private int shipfee;
 private boolean isfreeship;
}
