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

import com.tob.global.Command;
import com.tob.global.CommandFactory;




@Controller
@RequestMapping("/event")
public class EventController {
	
	private static final Logger logger = LoggerFactory.getLogger(EventController.class);
	@Autowired EventServiceImpl service;
	@Autowired EventVO event;
	@RequestMapping("/main")
	public String main(){
		logger.info("EventController :main()");
		return "event/main.jsp";
	}
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
		int pageSize = 5;
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
	/*@RequestMapping("event_view/{eventView}")
	public @ResponseBody EventVO eventView(
			@PathVariable ("eventView")String name
			){
		logger.info("EventController-eventView() 진입");
		logger.info("이벤트 이름 : {}", name);
		logger.info("영화제목 : {}", event.getFromDt());
		logger.info("영화제목 : {}", event.getToDt());
		return event;
	}
	@RequestMapping("event_Chart")
	public @ResponseBody List<EventVO> eventChart(){
		logger.info("EventController-eventChart() 진입");
		Command command;
		List<EventVO> list = service.selectAll(null);
		System.out.println("서비스 리턴값 :" + list); 
		logger.info("서비스 리턴값 : {}", list);
		return list;
	}*/
	
	
	
	
	
	
	
	
	@RequestMapping("/event_form")
	public String eventForm(){
		return "event/event_form";
	}
	@RequestMapping("/event_remove")
	public String eventRemove(){
		return "event/event_remove";
	}
	@RequestMapping("/event_update")
	public String eventUpdate(){
		return "event/event_update";
	}
	
	 
	
}
