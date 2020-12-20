package com.kh.animall.users.product.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.animall.common.ProductException;
import com.kh.animall.users.product.model.dao.ProductDAO;
import com.kh.animall.users.product.model.vo.Product;
import com.kh.animall.users.product.model.vo.ProductImage;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductDAO productDAO;
	
	@Override
	public List<Product> selectProductList(String ptype) {
		
		return productDAO.selectProductList(ptype);
	}

	@Override
	public int insertProduct(Product product, List<ProductImage> imageList) {
		int result1 = productDAO.insertProduct(product);
		
		if(result1 == 0) throw new ProductException();
		
		if(imageList.size() > 0) {
			for(ProductImage pi : imageList) {
				int result2 = productDAO.insertProductImage(pi);
				if(result2 == 0) throw new ProductException("첨부 파일 없음.");
			}
		}
		return 0;
	}



}
