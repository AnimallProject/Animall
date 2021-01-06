package com.kh.animall.users.cart.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.animall.users.cart.model.vo.Cart;

@Repository
public class CartDAOImpl implements CartDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public List<Cart> selectCartList(int mno) {
		
		return sqlSession.selectList("cartMapper.selectCartList", mno);
	}

}
