package com.tob.cart;

import java.util.List;

import com.tob.book.BookVO;

public interface CartService {
	
	// 장바구니 담기
	public CartVO put(String bookid);
	
	// 장바구니 목록 확인
	public List<CartVO> getList();
	
	// 넘어온 책아이디로 책정보 조회
	public BookVO searchBybookid(String bookid);
	
	// 장바구니 수량 변경
	public int changeCount(int count);
	
	// 장바구니 삭제
	public int remove(String bookid);
}
