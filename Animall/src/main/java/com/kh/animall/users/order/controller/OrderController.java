package com.kh.animall.users.order.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.animall.users.cart.model.service.CartService;
import com.kh.animall.users.cart.model.vo.Cart;
import com.kh.animall.users.member.model.vo.Member;
import com.kh.animall.users.order.model.service.OrderService;
import com.kh.animall.users.order.model.vo.Order;

@Controller
public class OrderController {

	@Autowired
	OrderService orderService;
	@Autowired
	CartService cartService;
	
	
	@RequestMapping("/order/insertOrder.do")
	public String orderInsert(HttpSession session, 
			Model model, 
			HttpServletResponse response, Order order) throws Exception {
		Member member = (Member)session.getAttribute("member");
		order.setAddress(order.getOaddr3()+order.getOaddr1()+order.getOaddr2());
	    int mno=member.getMno();
	    order.setPaymethod("CARD");
		try {
			//insert쿼리 실행하여 결과 result에 담아서
			int result = orderService.orderInfo(order);
			
			String loc="/cart/cartList.do?mno="+mno;
			String msg = "";
			
			
			if(result > 0) {
				msg = "결제 성공";
				order.setPaystatus("Y");
			}
			else {msg = "결제 실패";}
			
			model.addAttribute("loc", loc);
			model.addAttribute("msg", msg);
			} catch (Exception e) {
				System.out.println("결제 에러 발생");
				e.printStackTrace();
			}
			
			return "common/msg";
		}

	
	
	@RequestMapping("/order/orderList.do")
	public String orderList(HttpSession session, 
							Model model, 
							HttpServletResponse response) {
		Member member = (Member)session.getAttribute("member");
		int mno= member.getMno();
		Map<String, Object> map=new HashMap<>();
		
		
		List<Cart> clist = cartService.selectCartList(mno); //장바구니 목록 list
		
		
		//카트 컨트롤러에서 list 조회시 만든.. +olist넣으려고 함
		int sumMoney=cartService.sumMoney(mno);//금액 합계
		int shipfee = sumMoney>=50000 ? 0 : 2500; //배송료. 5만원 이상? 무료ㅋ
		map.put("sumMoney", sumMoney); 
		map.put("shipfee", shipfee); //배송료
		map.put("orderPrice", sumMoney+shipfee); //총금액
		map.put("clist", clist); //장바구니 목록 clist도 hashmap에 담아주기
		
		map.put("count", clist.size());

        model.addAttribute("map", map);		
		return "users/order/order";
		
	}
	
	
}
