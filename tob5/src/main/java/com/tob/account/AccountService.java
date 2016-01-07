package com.tob.account;

import java.util.List;

import com.tob.global.Command;
 
public interface AccountService {
	
	// 통계
	// C : 추가(주문목록 추가)
	public int addList(AccountVO account);
	
	// R : 날짜별 주문금액
	public List<?> getAccountList(Command command);	// 전체주문 리스트 (전체조회)
	public List<?> searchAccountDay(Command command);// 주문현황 day (날짜로 조회)

	
	// U : 날짜별 주문금액 수정
	public int change(AccountVO account);
	
	// D : 날짜별 주문금액 삭제
	public int remove(String account_num);
}
