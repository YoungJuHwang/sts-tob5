package com.tob.mapper;

import java.util.List;

import com.tob.book.BookVO;
import com.tob.cart.BookCartVO;
import com.tob.cart.CartVO;

public interface CartMapper {
		// C
		public int put(CartVO cart);
		
		//R
		public List<BookCartVO> getList(String userid);
		
		//U
		public int changeCount(int count);
		
		//D
		public int remove(String bookid);
}
