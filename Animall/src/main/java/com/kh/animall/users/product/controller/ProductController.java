package com.kh.animall.users.product.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.animall.users.product.model.service.ProductService;
import com.kh.animall.users.product.model.vo.Product;
import com.kh.animall.users.product.model.vo.ProductImage;
import com.kh.animall.users.product.model.vo.ProductListView;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping("/product/productList.do")
	public String selectProductList(@RequestParam String ptype, Model model) {
	
		List<ProductListView> plist = new ArrayList<>();
		
		plist = productService.selectProductList(ptype);
		
		System.out.println("plist : " + plist);
		
		model.addAttribute("plist", plist);
		model.addAttribute("ptype", ptype);
		
		return "users/product/productList";
	}
	
	@RequestMapping("/product/productInsertForm.do")
	public String productInsertForm(@RequestParam String ptype, Model model) {
		System.out.println("ptype:" + ptype);
		model.addAttribute("ptype", ptype);
		return "users/product/productInsertForm";
	}
	
	
	@RequestMapping("/product/productFormEnd.do")
	public String insertProduct(Product product , Model model, HttpServletRequest req,
								@RequestParam(value="pimage", required=false) MultipartFile[] upFiles) {
		
		System.out.println("product-테스트 :" + product);
		
		String saveDirectory = req.getServletContext().getRealPath("/resources/productUpFiles");
		
		String imgpath = saveDirectory + "/";
		
		List<ProductImage> imageList = new ArrayList<ProductImage>();
		
		for(MultipartFile f : upFiles) {
			if(f.isEmpty() != true) {
				
				String originName = f.getOriginalFilename();
				
				//확장자 추출
				String afterdot = originName.substring(originName.lastIndexOf(".") + 1);
				
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmssSSS");
				int rnd = (int)(Math.random()*100);
				
				String changeName =
						sdf.format(new Date(System.currentTimeMillis())) + "_" + rnd + "." + afterdot;
				
				try {
					f.transferTo(new File(saveDirectory + "/" + changeName));
				} catch (IllegalStateException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				ProductImage pi = new ProductImage();
				pi.setOriginname(originName);
				pi.setChangename(changeName);
				pi.setImgpath(imgpath);
			
				
				imageList.add(pi);
				
				
			}
			
		}
		
		int result = productService.insertProduct(product, imageList);
		
		System.out.println("result" + result);
		
		return "users/product/productList";  // loc, msg를 해야할까 안해야할까.
	}
}
