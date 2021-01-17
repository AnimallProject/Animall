package com.kh.animall.users.order.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.animall.users.order.model.service.OrderService;
import com.kh.animall.users.order.model.vo.Order;

@Controller
public class OrderController {

	@Autowired
	OrderService orderService;
	
	@RequestMapping("/order/myOrderList.do")
	public String orderListView(Model model, @RequestParam int mno) {
		List<Order> list = orderService.selectOrder(mno);
		
		model.addAttribute("tabIndex", 3);
		model.addAttribute("list", list);
		
		return "/mypage/memberInfo";
	}
	
}
