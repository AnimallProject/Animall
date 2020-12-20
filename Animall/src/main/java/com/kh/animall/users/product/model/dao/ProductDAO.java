package com.kh.animall.users.product.model.dao;


import java.util.ArrayList;
import java.util.List;

import com.kh.animall.users.product.model.vo.Product;
import com.kh.animall.users.product.model.vo.ProductImage;

public interface ProductDAO {
	
	List<Product> selectProductList(String ptype);
	
	int insertProduct(Product product);

	int insertProductImage(ProductImage pi);
	
}
