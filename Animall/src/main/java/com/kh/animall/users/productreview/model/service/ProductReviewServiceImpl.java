package com.kh.animall.users.productreview.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.animall.common.ProductException;
import com.kh.animall.users.productreview.model.dao.ProductReviewDAO;
import com.kh.animall.users.productreview.model.vo.ProductReview;
import com.kh.animall.users.productreview.model.vo.ProductReviewImage;

@Service
public class ProductReviewServiceImpl implements ProductReviewService {

	@Autowired
	ProductReviewDAO prDAO;
	
	
	@Override
	public int insertProductReview(ProductReview preview, ProductReviewImage pri) {
		int result1 = prDAO.insertProductReview(preview); 
		
		System.out.println("review 서비스에서의 result1 :" + result1);
		
		if(result1 == 0) throw new ProductException();
		
		if(pri != null) {
			int result2 = prDAO.insertProductReviewImage(pri);
			
			System.out.println("review 서비스에서의 result2 : " + result2);
			
			if(result2 == 0) throw new ProductException();
		}
		
		return result1;
	}

}
