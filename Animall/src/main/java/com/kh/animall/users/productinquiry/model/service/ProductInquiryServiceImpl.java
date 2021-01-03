package com.kh.animall.users.productinquiry.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.animall.users.productinquiry.model.dao.ProductInquiryDAO;
import com.kh.animall.users.productinquiry.model.vo.ProductInquiry;

@Service
public class ProductInquiryServiceImpl implements ProductInquiryService {

	@Autowired
	ProductInquiryDAO piDAO;
	
	@Override
	public int insertProductInquiry(ProductInquiry pi) {
		return piDAO.insertProductInquiry(pi);
	}

}