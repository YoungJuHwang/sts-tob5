package com.tob.account;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tob.admin.AdminController;
import com.tob.book.BookServiceImpl;
import com.tob.book.BookVO;
 

@Controller
public class AccountController {
private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired BookVO book;
	@Autowired BookServiceImpl bookService;
	
	@RequestMapping("/main")
	public String home(){
		logger.info("AccountController-home() 진입");
		return "account/account/main.tiles";
	}
}
