package com.kh.animall.users.order.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.animall.users.order.model.vo.Order;

@Repository
public class OrderDAOImpl implements OrderDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public List<Order> selectOrder(int mno) {
		
		return sqlSession.selectList("payRecordMapper.selectMyPayList", mno);
	}

}
