package com.kh.animall.users.order.model.dao;

import java.util.List;

import com.kh.animall.users.order.model.vo.Order;

public interface OrderDAO {

	List<Order> selectOrder(int mno);
	
}
