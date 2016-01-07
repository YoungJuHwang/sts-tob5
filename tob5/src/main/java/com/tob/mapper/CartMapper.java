package com.tob.mapper;

import java.util.List;

import com.tob.book.BookVO;
import com.tob.cart.CartVO;

public interface CartMapper {
		// C
		public CartVO put(String bookid);
		
		//R
		public List<CartVO> getList();
		
		// 넘어온 책아이디로 책정보 조회
		public BookVO searchBybookid(String bookid);
		
		//U
		public int changeCount(int count);
		
		//D
		public int remove(String bookid);
}
