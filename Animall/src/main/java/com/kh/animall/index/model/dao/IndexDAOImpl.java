package com.kh.animall.index.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.animall.index.model.vo.IndexProduct;
import com.kh.animall.index.model.vo.ProductImages;

@Repository
public class IndexDAOImpl implements IndexDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public List<IndexProduct> selectProductList() {
		
		return sqlSession.selectList("indexMapper.getList");
	}

	@Override
	public int insertProduct(IndexProduct indexProduct) {
		return (Integer) null;
		
	}

	@Override
	public int insertAttachment(List<ProductImages> productImages) {
		return (Integer) null;
		
	}
	

	

	

}
