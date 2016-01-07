package com.tob.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.tob.book.BookVO;
import com.tob.global.Command;
@Repository
public interface BookMapper {

	public int registration(BookVO o); //책 등록
	public int delete(String bookid); //등록된 책 삭제 책 번호로
	public BookVO searchByBook(String userid);
	public int update(BookVO book);//책 수정
	 
	public List<BookVO> selectAll(Command command);
	
	
	public int count();

}
