package com.kh.animall.users.product.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.animall.users.product.model.vo.Product;
import com.kh.animall.users.product.model.vo.ProductImage;
import com.kh.animall.users.product.model.vo.ProductListView;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public List<ProductListView> selectProductList(String ptype) {
		
		return sqlSession.selectList("productMapper.selectProductList", ptype);
	}

	@Override
	public int insertProduct(Product product) {

		return sqlSession.insert("productMapper.insertProduct", product);
	}

	@Override
	public int insertProductImage(ProductImage pi) {
		
		return sqlSession.insert("productMapper.insertProductImage", pi);
	}


}
