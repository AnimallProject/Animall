package com.kh.animall.users.cart.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.animall.users.cart.model.dao.CartDAO;
import com.kh.animall.users.cart.model.vo.Cart;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	CartDAO cartDAO;
	
	@Override
	public List<Cart> selectCartList(int mno) {
		
		return cartDAO.selectCartList(mno);
	}

}
