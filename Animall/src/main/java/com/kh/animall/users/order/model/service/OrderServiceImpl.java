package com.kh.animall.users.order.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.animall.users.order.model.dao.OrderDAO;
import com.kh.animall.users.order.model.vo.Order;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	OrderDAO orderDAO;
	
	@Override
	public List<Order> selectOrder(int mno) {

		return orderDAO.selectOrder(mno);
	}

}
