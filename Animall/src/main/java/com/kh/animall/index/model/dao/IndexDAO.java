package com.kh.animall.index.model.dao;

import java.util.List;
import java.util.Map;

import com.kh.animall.index.model.vo.IndexProduct;
import com.kh.animall.index.model.vo.ProductImages;

public interface IndexDAO {

	List<IndexProduct> selectProductList();

	int insertProduct(IndexProduct indexProduct);

	int insertAttachment(List<ProductImages> productImages);

	
}
