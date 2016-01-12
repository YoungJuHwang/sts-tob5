package com.tob.mapper;

import java.util.List;

import com.tob.book.BookVO;
import com.tob.cart.BookCartVO;
import com.tob.cart.CartVO;
import com.tob.cart.TodayCartVO;

public interface CartMapper {
		// C
		public int put(CartVO cart);
		
		//R
		public List<BookCartVO> getList(TodayCartVO todaycart);
		public List<?> getBookIdList();
		public List<?> getUseridList();
		
		//U
		public int changeCount(int count);
		
		//D
		public int remove(String bookid);
		public int removeUserid(String userid); 
}
