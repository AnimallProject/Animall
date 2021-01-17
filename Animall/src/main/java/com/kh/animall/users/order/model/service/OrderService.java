package com.kh.animall.users.order.model.service;

import java.util.List;

import com.kh.animall.users.order.model.vo.Order;

public interface OrderService {
	
	public List<Order> selectOrder(int mno);

}
