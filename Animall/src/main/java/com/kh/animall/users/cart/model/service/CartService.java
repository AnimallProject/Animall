package com.kh.animall.users.cart.model.service;

import java.util.List;

import com.kh.animall.users.cart.model.vo.Cart;
public interface CartService {
	List<Cart> selectCartList(int mno);
}
