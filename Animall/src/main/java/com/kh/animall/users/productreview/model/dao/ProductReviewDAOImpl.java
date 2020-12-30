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
	public int insertProductReview(ProductReview preview) {
		return sqlSession.insert("productReviewMapper.insertProductReview", preview);
	}

	@Override
	public int insertProductReviewImage(ProductReviewImage pri) {
		// TODO Auto-generated method stub
		return 0;
	}

}
