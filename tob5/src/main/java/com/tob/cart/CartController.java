package com.tob.cart;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public @ResponseBody List<BookCartVO> list(){
		logger.info("카트 컨트롤러 - list() 진입");
		List<BookCartVO> list = service.getList();
		return list;
	}
	
	@RequestMapping("/put")
	public Model put(
			String bookId,
			String userid,
			Model model
			){
		logger.info("카트 컨트롤러 - put() 진입");
		logger.info("넘어온 북아이디 : {}",bookId);
		logger.info("넘어온 유저아이디 : {}",userid);
		int result = service.put(bookId, userid);
		return model;
	}
	
	@RequestMapping("/change")
	public Model change(
			Model model
			){
		logger.info("카트 컨트롤러 - change() 진입");
		
		return model;
	}
	
	
}
