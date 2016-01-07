package com.tob.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tob.member.MemberServiceImpl;
import com.tob.member.MemberVO;
import com.tob.book.BookServiceImpl;
import com.tob.book.BookVO;
import com.tob.event.EventServiceImpl;
import com.tob.event.EventVO;
import com.tob.global.CommandFactory;


@Controller
@RequestMapping("/admin")
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired BookVO book;
	@Autowired BookServiceImpl bookService;
	@Autowired MemberVO member;
	@Autowired MemberServiceImpl memberService;
	@Autowired EventVO event;
	@Autowired EventServiceImpl eventService;
	
	@RequestMapping("/main")
	public String home(){
		logger.info("AdminController-home() 진입");
		logger.info("Admin");
		return "admin/admin/main.tiles";
	}
	
	@RequestMapping("/member_reg")
	public String memberreg(){
		logger.info("AdminController-memberReg() 진입");
		return "admin/admin/memberReg.tiles";
	}
	
	@RequestMapping("/member_reg3")
	public String memberReg3(){
		logger.info("AdminController-memberReg3() 진입");
		return "admin/admin/memberReg3.tiles";
	}
	
	@RequestMapping("/member_list")
	public String memberList(){
		logger.info("AdminController-memberList() 타일즈 진입");
		return "admin/admin/memberList.tiles";
	}
	
	@RequestMapping("/member_list/{pageNo}")
	public @ResponseBody Map<String,Object> memberList(
			@PathVariable("pageNo")String pageNo,
			Model model){
		
		logger.info("AdminController memberList()");
		logger.info("넘어온 페이지번호 : {}",pageNo);

		int pageNumber = Integer.parseInt(pageNo);
		int pageSize = 3;
		int groupSize = 3;
		int count = memberService.count();
		
		int totalPage = count/pageSize;
		if (count%pageSize != 0) {
			totalPage += 1;
		}
		int startPage = pageNumber - ((pageNumber-1) % groupSize);
		int lastPage = startPage + groupSize -1;
		if (lastPage > totalPage) {
			lastPage = totalPage;
		}
		
		logger.info("라스트페이지:{}",lastPage);
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("list", memberService.getList(CommandFactory.list(pageNo)));
		map.put("count", memberService.count());
		map.put("pageNo", pageNo);
		map.put("startPage", startPage);
		map.put("groupSize", groupSize);
		map.put("lastPage", lastPage);
		map.put("totalPage", totalPage);

		return map;
	}
	

	
	@RequestMapping("/book_reg")
	public String bookReg(){
		logger.info("AdminController-bookreg() 진입");
		return "admin/admin/bookReg.tiles";
	}
	
	@RequestMapping("/book_list")
	public String bookList(){
		logger.info("AdminController-bookList() 진입");
		return "admin/admin/bookList.tiles";
	}
	
	@RequestMapping("/book_list/{pageNo}")
	public @ResponseBody Map<String,Object> bookList(
			@PathVariable("pageNo")String pageNo,
			Model model){
		
		int pageNumber = Integer.parseInt(pageNo);
		int pageSize = 5;
		int groupSize = 3;
		int count = bookService.count();
		int totalPage = count/pageSize;
		if (count%pageSize != 0) {
			totalPage += 1;
		}
		int startPage = pageNumber - ((pageNumber-1) % groupSize);
		int lastPage = startPage + groupSize -1;
		if (lastPage > totalPage) {
			lastPage = totalPage;
		}
		
		logger.info("AdminController bookList()");
		logger.info("넘어온 페이지번호 : {}",pageNo);
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("list", bookService.selectAll(CommandFactory.list(pageNo)));
		map.put("count", count);
		map.put("totalPage", totalPage);
		map.put("pageNo", pageNumber);
		map.put("startPage", startPage);
		map.put("lastPage", lastPage);
		map.put("groupSize", groupSize);
		return map;
	}
	
	@RequestMapping("/event_reg")
	public String eventreg(){
		logger.info("AdminController-eventreg() 진입");
		return "admin/admin/eventReg.tiles";
	}
	
	@RequestMapping("/event_list")
	public String eventList(){
		logger.info("AdminController-eventList() 진입");
		return "admin/admin/eventList.tiles";
	}
	
	@RequestMapping("/event_list/{pageNo}")
	public @ResponseBody Map<String,Object> eventList(
			@PathVariable("pageNo")String pageNo,
			Model model){
		
		int pageNumber = Integer.parseInt(pageNo);
		int pageSize = 5;
		int groupSize = 3;
		int count = eventService.count();
		int totalPage = count/pageSize;
		if (count%pageSize != 0) {
			totalPage += 1;
		}
		int startPage = pageNumber - ((pageNumber-1) % groupSize);
		int lastPage = startPage + groupSize -1;
		if (lastPage > totalPage) {
			lastPage = totalPage;
		}
		
		logger.info("AdminController eventList()");
		logger.info("넘어온 페이지번호 : {}",pageNo);
		Map<String,Object> map = new HashMap<String,Object>();
		/*map.put("list", bookService.getList(CommandFactory.list(pageNo)));*/
		map.put("count", count);
		map.put("totalPage", totalPage);
		map.put("pageNo", pageNumber);
		map.put("startPage", startPage);
		map.put("lastPage", lastPage);
		map.put("groupSize", groupSize);
		return map;
	}
	
	
	@RequestMapping("/purchase_list")
	public String purchaseList(){
		logger.info("AdminController-purchaseList() 진입");
		return "admin/admin/purchaseList.tiles";
	}
	
	@RequestMapping("/account_list")
	public String accountList(){
		logger.info("AdminController-accountList() 진입");
		return "admin/admin/accountList.tiles";
	}
	
	
	
	/*@RequestMapping("/member_profile")
	public Model memberProfile(
			String id,Model model
			){
		logger.info("개인 프로필 진입");
		logger.info("가져온 아이디{}",id);
		member = memberService.selectById(id);
		model.addAttribute("member", member);
		return model;
		
	}*/
	
	@RequestMapping("/book_profile")
	public Model bookProfile(String book_id,Model model){
		logger.info(" 책 목록 진입");
		logger.info(" 가져온 책 번호{}",book_id);
		book = bookService.searchByBook(book_id);
		model.addAttribute("book", book);
		
		return model;
	}
	/*@RequestMapping("/insert")
	public Model insert(
		@RequestParam("id") String id,
		@RequestParam("password") String password,
		String email, String phone, String addr, Model model){
		logger.info("insert 진입");
		logger.info("id{}",id);
		logger.info("password{}",password);
		logger.info("email{}",email);
		logger.info("phone{}",phone);
		logger.info("addr{}",addr);
		member = memberService.selectById(id);
		member.setPassword(password);
		member.setEmail(email);
		member.setPhone(phone);
		member.setAddr(addr);
		int result = memberService.change(member);
		model.addAttribute("result", id + " 님의 정보수정을 완료했습니다.");
		return model;
	}*/
	
	@RequestMapping("/insert2")
	public Model insert2(String book_name,String price,Model model){
		logger.info("인서트 진입");
		logger.info("책이름{}",book_name);
		logger.info("가격{}",price);
		book = bookService.searchByBook(book_name);
		book.setBookPrice(price);
		model.addAttribute("book",book);
		
		return model;
	}
	/*@RequestMapping("/delete")
	public Model delete(String id,Model model){
		memberService.remove(id);
		model.addAttribute("result",id+"님의 탈퇴를 완료했습니다.");
		return model;
	}*/
	
	
}