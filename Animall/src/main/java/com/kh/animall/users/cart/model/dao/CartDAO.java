package com.kh.animall.users.cart.model.dao;

import java.util.List;

import com.kh.animall.users.cart.model.vo.Cart;

public interface CartDAO {

	List<Cart> selectCartList(int mno);

}
