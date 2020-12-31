package com.kh.animall.index.model.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import com.kh.animall.index.model.vo.IndexProduct;
import com.kh.animall.index.model.vo.ProductImages;

public interface IndexService {

	List<IndexProduct> selectProductList();

	Map<String, Object> productInsert(IndexProduct indexProduct, List<MultipartFile> file, HttpServletRequest req,
			HttpSession session);

}
