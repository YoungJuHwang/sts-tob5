package com.tob.purchase;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
  
@Controller
@RequestMapping("/purchase")
public class PurchaseController {
	private static final Logger logger = LoggerFactory.getLogger(PurchaseController.class);
	@Autowired PurchaseVO purchase;
	@Autowired PurchaseServiceImpl service;
	
	
	@RequestMapping("/Purchase")
	public String main(){
		logger.info("구매 컨트롤러 - main() 진입");
		return "purchase/Purchase.jsp";
	}
	
	@RequestMapping("/list")
	public @ResponseBody List<PurchaseVO> list(){
		logger.info("구매 컨트롤러 - list() 진입");
		List<PurchaseVO> list = service.getList();
		logger.info("리스트 길이 : {}",list.size());
		return list;
	}
	
	@RequestMapping("/remove/{purNum}")
	public String remove(
			@PathVariable("purNum")String purNum
			){
		logger.info("구매 컨트롤러 - remove() 진입");
		logger.info("넘어온 주문번호 : {}", purNum);
		int result = service.remove(purNum);
		return "삭제완료";
	}
}
