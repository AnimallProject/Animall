package com.kh.animall.users.cart.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.animall.users.cart.model.service.*;
import com.kh.animall.users.cart.model.vo.Cart;
@Controller
public class CartController {

	@Autowired
	CartService cartService;
		
	List<Cart> clist = new ArrayList<Cart>();
	
	@RequestMapping("/cart/cartList.do")
	public String selectCartList(@RequestParam int mno, Model model) {
		
		
		clist = cartService.selectCartList(mno);
		model.addAttribute("clist", clist);
		return "users/cart/cart";
	}
		
}
