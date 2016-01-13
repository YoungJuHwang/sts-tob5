package com.tob.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.tob.account.AccountVO;
import com.tob.global.Command;

@Repository
public interface AccountMapper {
	//CRUD
	
	// C : 추가(회원가입)
	public int insert(AccountVO account);
	 
	// R : 조회
	public List<AccountVO> selectAllPage(Command command); 	// 전체조회(페이징)
	public int selectTotal(String key); 				// 전체조회
	public void getTotal(); 				// 전체조회
	public List<AccountVO> selectByDay(String account_num); 	// 날짜로 조회
	public int count(); 								// 전체주문수 조회
	public int countByKeyword(Command command); 		// 검색결과 갯수만 조회
	
	// U : 업데이트
	public int update(AccountVO member);
	
	// D : 삭제 (회원탈퇴)
	public int delete(String account_num);

	
	
	
	
}