package com.kh.animall.users.productreview.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.animall.users.productreview.model.vo.ProductReview;
import com.kh.animall.users.productreview.model.vo.ProductReviewImage;

@Repository
public class ProductReviewDAOImpl implements ProductReviewDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public int insertProductReview(ProductReview pr) {
		return sqlSession.insert("productReviewMapper.insertProductReview", pr);
	}

	@Override
	public int insertProductReviewImage(ProductReviewImage pri) {
		return sqlSession.insert("productReviewMapper.insertReviewImage", pri);
	}

}
