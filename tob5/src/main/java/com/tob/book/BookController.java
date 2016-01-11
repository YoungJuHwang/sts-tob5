package com.tob.book;

import java.util.HashMap;
import java.util.Map;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tob.global.CommandFactory;


@Controller
@RequestMapping("/book")
public class BookController {
	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
	
	@Autowired BookServiceImpl service;
	@Autowired BookVO book;
	
	// 전체 책 종류 보여주기 0.
	@RequestMapping("/Book")
	public String book(){
		logger.info("BookController:Book()");
		return "book/main.tiles";
				
	}
	//전체 책 목록  보여주기 1.(배열 내리기)
	@RequestMapping("/Book_selectAll/{pageNo}")
	public @ResponseBody Map<String,Object> bookAll(
			@PathVariable("pageNo")String pageNo,
			Model model
			){
		logger.info("BookController selectAll()진입.");
		logger.info("넘어온 페이지No. : {}",pageNo);
		
		int pageNumber = Integer.parseInt(pageNo);
		int pageSize = 4;
		int groupSize = 3;
		int count = service.count();
		logger.info("번호 : {}",count);
		int totalPage = count/pageSize;
		if (count%pageSize != 0) {
			totalPage += 1;
		}
		int startPage = pageNumber - ((pageNumber-1) % groupSize);
		int lastPage = startPage + groupSize -1;
		if (lastPage > totalPage) {
			lastPage = totalPage;
		}
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("list", service.selectAll(CommandFactory.list(pageNo)));
		map.put("count", count);
		map.put("totalPage", totalPage);
		map.put("pageNo", pageNumber);
		map.put("startPage", startPage);
		map.put("lastPage", lastPage);
		map.put("groupSize", groupSize);
		logger.info("BookController:Book_selectAll()");
		return map;
	}
	
	
	
	// 책 상세 정보 보여주기 2.
	@RequestMapping("/Book_main/{bookId}")
public @ResponseBody BookVO bookMain(
		@PathVariable("bookId")String id ){
	logger.info("BookController:bookId()");
	logger.info("책 고유번호 : {}",id);
	book = service.searchByBook(id);
	logger.info("책 이름 : {}",book.getBookName());
	return book;
}
	
	// 오늘의 책 보여주기.
	@RequestMapping("/Book_TodayBook/{pageNo2}")
	public @ResponseBody Map<String,Object> todayBook(
			@PathVariable("pageNo2")String pageNo,
			Model model
			){
		logger.info("BookController Book_TodayBook()진입.");
		logger.info("Book_TodayBook  넘어온 페이지No. : {}",pageNo);
		
		int pageNumber = Integer.parseInt(pageNo);
		int pageSize = 1;
		int groupSize = 4; //밑에 보여주는 번호.
		int count = service.count();
		logger.info(" Book_TodayBook  번호 : {}",count);
		int totalPage = count/pageSize;
		if (count%pageSize != 0) {
			totalPage += 1;
		}
		int startPage = pageNumber - ((pageNumber-1) % groupSize);
		int lastPage = startPage + groupSize -1;
		if (lastPage > totalPage) {
			lastPage = totalPage;
		}
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("list", service.selectAll(CommandFactory.list(pageNo)));
		map.put("count", count);
		map.put("totalPage", totalPage);
		map.put("pageNo", pageNumber);
		map.put("startPage", startPage);
		map.put("lastPage", lastPage);
		map.put("groupSize", groupSize);
		logger.info("BookController:Book_TodayBook()");
		return map;
	}
}
