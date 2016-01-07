package com.tob.genre;


import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/genre")
public class GenreController {
	
	private static final Logger logger = LoggerFactory.getLogger(GenreController.class);
	
@Autowired GenreServiceImpl service;
@Autowired GenreVO genre;

// 카테고리 아이디를 통한 장르 보여주기
@RequestMapping("/Genre")
public Model list(Model model){
	logger.info("genreController:list()");
	List<GenreVO> list = new ArrayList<GenreVO>();
		list = service.selectAll();
		
	List<GenreVO> list_abroad = new ArrayList<GenreVO>();
	System.out.println("123dvjsdjvnsfdvn"+list_abroad);
	
	List<GenreVO> list_old = new ArrayList<GenreVO>();
	
	
	List<GenreVO> list_domestic = new ArrayList<GenreVO>();
	
	
	List<GenreVO> list_ebook = new ArrayList<GenreVO>();
	
	
	List<GenreVO> list_new = new ArrayList<GenreVO>();
	
		
		
	for (int i = 0; i < list.size(); i++) {
		System.out.println("카테고리 아이디는?1111"+list.get(i).getCategoryId());
		if (list.get(i).getCategoryId() == "abroad") {
			System.out.println("카테고리 아이디는?2222"+list.get(i).getCategoryId());
			System.out.println("리스트 어보드는?111"+list_abroad);
			list_abroad = list;
			System.out.println("리스트 어보드는?222"+list_abroad);
		}
		if (list.get(i).getCategoryId() == "old") {
			list_old = list;
		}
		if (list.get(i).getCategoryId() == "domestic") {
			list_domestic = list;
		}
		if (list.get(i).getCategoryId()=="ebook") {
			list_ebook = list;
		}
		if (list.get(i).getCategoryId()=="new") {
			list_new = list;
		}
	}
	
	logger.info("전체 장르는? : {}",list);
	logger.info("abroad는? : {}",list_abroad);
	logger.info("old는? : {}",list_old);
	logger.info("domstic는? : {}",list_domestic);
	logger.info("ebook는? : {}",list_ebook);
	logger.info("new는? : {}",list_new);
	model.addAttribute("list_abroad", list_abroad);
	model.addAttribute("list_old", list_old);
	model.addAttribute("list_domestic", list_domestic);
	model.addAttribute("list_ebook", list_ebook);
	model.addAttribute("list_new", list_new);
	return model;
	
}
}
