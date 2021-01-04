package com.kh.animall.index.model.service;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kh.animall.index.model.dao.IndexDAO;
import com.kh.animall.index.model.vo.IndexProduct;
import com.kh.animall.index.model.vo.ProductImages;

@Service
public class IndexServiceImpl implements IndexService {
	
	@Autowired
	IndexDAO indexDAO;

	@Override
	public List<IndexProduct> selectProductList() {
		
		return indexDAO.selectProductList();
	}

	@Override
	public Map<String, Object> productInsert(
			IndexProduct indexProduct, List<MultipartFile> file,
			HttpServletRequest req, HttpSession session) {
		Map<String, Object> resultData = new HashMap<>();
		List<ProductImages> productImages = new ArrayList<ProductImages>();

		indexProduct.setPno(1);

		// 게시글삽입
		indexDAO.insertProduct(indexProduct);

		
		//이미지업로드
		String imgPath = "/resources/boardUpload";
		String saveDirectory = req.getServletContext().getRealPath(imgPath);
		
		int idx = 0;
		for (MultipartFile f : file) {

			if (!f.isEmpty()) {
				String originName = f.getOriginalFilename();// 원본파일명
				String changeName = fileNameChanger(originName);// 저장될파일명

				ProductImages pi = new ProductImages();
				pi.setPimgno(indexProduct.getPno());
				pi.setPno(1);
				pi.setOriginname(originName);
				pi.setChangename(changeName);
				pi.setImgpath(imgPath + "/" + changeName);
				pi.setImglevel(idx);
				productImages.add(pi);
				idx++;

				try {
					f.transferTo(new File(saveDirectory + "/" + changeName));
				} catch (IllegalStateException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		//이미지DB저장
		indexDAO.insertAttachment(productImages);

		resultData.put("ok", true);

		return resultData;
	}

	// 단순 파일 이름 변경용 메소드
	public String fileNameChanger(String oldFileName) {

		String ext = oldFileName.substring(oldFileName.lastIndexOf(".") + 1);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmssSSS");
		int rnd = (int) (Math.random() * 1000);

		return sdf.format(new Date(System.currentTimeMillis())) + "_" + rnd + "." + ext;
	}

}
