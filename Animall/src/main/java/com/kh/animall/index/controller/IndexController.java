package com.kh.animall.index.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kh.animall.index.model.service.IndexService;
import com.kh.animall.index.model.vo.IndexProduct;

@Controller
public class IndexController {

	@Autowired
	IndexService indexService;
	
	@RequestMapping({"/", "/index/Load.do"})
//	@Get, PostMapping 으로 받는게 불가하다.
//	Welcome file에 .jsp를 붙이면 DispatcherServlet를 거치지 않는 반면
//	.do를 붙이면 DispatcherServlet을 거쳐 "/"로 보내주기에
//	처음에 있던 HomeController에서 /를 가져와 매핑한 것.
	public String selectList(Model model) {
		
		List<IndexProduct> productList = indexService.selectProductList();
		System.out.println("product : " + productList);
		model.addAttribute("productList",productList);
		
		return "index";
	}
	
	@ResponseBody
	@PostMapping("/ProductInsert.do")
	public Map<String, Object> insert(
			IndexProduct indexProduct, List<MultipartFile> file, HttpServletRequest req, HttpSession session) {
		return indexService.productInsert(indexProduct, file, req, session);
	}
		
}
	
	

