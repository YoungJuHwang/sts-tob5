package com.tob.event;
 
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
import org.springframework.web.bind.annotation.ResponseBody;

import com.tob.book.BookVO;
import com.tob.global.Command;
import com.tob.global.CommandFactory;




@Controller
@RequestMapping("/event")
public class EventController {
	
	private static final Logger logger = LoggerFactory.getLogger(EventController.class);
	@Autowired EventServiceImpl service;
	@Autowired EventVO event;
	
	@RequestMapping("/Event")
	public String event(){
		logger.info("EventController :Event()");
		return "event/Event.tiles";
	}
	@RequestMapping("/join_event1")
	public Model joinEvent1(String evtId, String evtName, 
			String fromDt, String toDt, String profile, Model model
			){
		logger.info("입력된 이벤트 아이디:{} ", evtId);
		logger.info("입력된 이벤트 이름:{}", evtName);
		logger.info("입력된 이벤트 시작일:{}", fromDt);
		logger.info("입력된 이벤트 마감일:{}", toDt);
		logger.info("입력된 이벤트 이미지:{}", profile);
		
		event.setEvtId(evtId);
		event.setEvtName(evtName);
		event.setFromDt(fromDt);
		event.setToDt(toDt);
		event.setProfile(profile);
		
		int result = service.insert(event);
		
		if (result == 1) {
			logger.info("이벤트 등록 성공");
			model.addAttribute("result", "success");
			model.addAttribute("evtName", event.getEvtName());
			
		} else {
			logger.info("이벤트 등록 실패");
			model.addAttribute("result", "fail");
		}
		return model;
	}
	@RequestMapping("/Event_selectAll/{pageNo}")
	public @ResponseBody Map<String,Object> eventAll(
			@PathVariable("pageNo")String pageNo,
			Model model
			){
		logger.info("EventController selectAll() 진입");
		logger.info("넘어온 페이지No. : {}",pageNo);
		
		int pageNumber = Integer.parseInt(pageNo);
		int pageSize = 8;
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
		logger.info("EventController selectAll() 진입");
		return map;
	}
	@RequestMapping("/Event_main/{evtId}")
	public @ResponseBody EventVO eventMain(
			@PathVariable("evtId")String id ){
		logger.info("EventController evtId()");
		logger.info("이벤트 번호 : {}",id);
		
		
		return event;
	}
	
	
	
	
	
	
	

	
	 
	
}
