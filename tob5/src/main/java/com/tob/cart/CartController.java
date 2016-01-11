package com.tob.cart;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.tob.book.BookVO;
import com.tob.member.MemberVO;


@Controller
@SessionAttributes("user")
@RequestMapping("/cart")
public class CartController {
	private static final Logger logger = LoggerFactory.getLogger(CartController.class);
	@Autowired CartVO cart;
	@Autowired CartServiceImpl service;
	
	@RequestMapping("/Cart")
	public String main(){
		logger.info("카트 컨트롤러 - main() 진입");
		return "cart/Cart.tiles";
	}
	
	@RequestMapping("/list/{userid}")
	public @ResponseBody List<BookCartVO> list(
				@PathVariable("userid")String userid
			){
		logger.info("카트 컨트롤러 - list() 진입");
		logger.info("카트 컨트롤러 - list() 넘어온 유저아이디 : "+userid);
		List<BookCartVO> list = service.getList(userid);
		logger.info("카트 컨트롤러 list() 결과 : " + list.size());
		return list;
	}
	
	@RequestMapping("/put")
	public Model put(
			String bookId,
			HttpSession session,
			Model model
			){
		logger.info("카트 컨트롤러 - put() 진입");
		logger.info("넘어온 북아이디 : {}",bookId);
		MemberVO member = (MemberVO) session.getAttribute("user");
		logger.info("카트 컨트롤러에서 받은 세션의 아이디 : {}"+member.getUserid());
		int result = service.put(bookId, member.getUserid());
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
