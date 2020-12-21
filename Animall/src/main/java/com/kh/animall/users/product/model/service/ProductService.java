package com.kh.animall.users.product.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.animall.users.product.model.vo.Product;
import com.kh.animall.users.product.model.vo.ProductImage;
import com.kh.animall.users.product.model.vo.ProductListView;

public interface ProductService {

	List<ProductListView> selectProductList(String ptype);

	int insertProduct(Product product, List<ProductImage> imageList);
	
}
