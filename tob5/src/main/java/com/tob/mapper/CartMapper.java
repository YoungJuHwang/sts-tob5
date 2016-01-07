package com.tob.mapper;

import java.util.List;

import com.tob.book.BookVO;
import com.tob.cart.BookCartVO;
import com.tob.cart.CartVO;

public interface CartMapper {
		// C
		public CartVO put(String bookid);
		
		//R
		public List<BookCartVO> getList();
		
		//U
		public int changeCount(int count);
		
		//D
		public int remove(String bookid);
}
