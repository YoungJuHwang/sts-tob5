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
	public List<AccountVO> selectAll(Command command); 	// 전체조회
	public List<AccountVO> selectOneBy(Command command); 	// 날짜로 조회
	public int count(); 								// 전체주문수 조회
	public int countByKeyword(Command command); 		// 검색결과 갯수만 조회
	
	// U : 업데이트
	public int update(AccountVO member);
	
	// D : 삭제 (회원탈퇴)
	public int delete(String account_num);

	
	
	
	
}