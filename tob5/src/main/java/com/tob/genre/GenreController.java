package com.tob.genre;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/genre")
public class GenreController {
	
	private static final Logger logger = LoggerFactory.getLogger(GenreController.class);
	
@Autowired GenreServiceImpl service;
@Autowired GenreVO genre;

// 카테고리 아이디를 통한 장르 보여주기
@RequestMapping("/Genre")
public String genre(){
	logger.info("genreController:genre()");
	return "";
	
}
}
