package com.tob.cart;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tob.book.BookVO;


@Controller
@RequestMapping("/cart")
public class CartController {
	private static final Logger logger = LoggerFactory.getLogger(CartController.class);
	@Autowired CartVO cart;
	@Autowired CartServiceImpl service;
	
	@RequestMapping("/Cart")
	public String main(){
		logger.info("카트 컨트롤러 - main() 진입");
		return "cart/Cart.jsp";
	}
	
	@RequestMapping("/list")
	public @ResponseBody List<CartVO> list(){
		logger.info("카트 컨트롤러 - list() 진입");
		List<CartVO> list = service.getList();
		return list;
	}
	@RequestMapping("/put/{bookid}")
	public @ResponseBody BookVO put(
			@PathVariable("bookid")String bookid
			){
		logger.info("카트 컨트롤러 - put() 진입");
		BookVO result = service.searchBybookid(bookid);
		return result;
		
	}
	
}
