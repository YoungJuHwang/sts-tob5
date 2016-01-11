package com.tob.book;

import java.io.Serializable;

import org.springframework.stereotype.Component;
@Component
public class BookMemberVO implements Serializable{

	private static final long serialVersionUID = 1L;
	private String bookId;		//고유번호
	private String bookName;	//이름
	private String bookPrice;	//가격
	private String writer;		//지은이
	private String grade;		// 평점
	private String stockSeq; 	//재고량
	private String optionBook; 	//옵션
	private String genreId; 	//장르
	private String userid;

	
	public String getBookId() {
		return bookId;
	}

	public String getBookName() {
		return bookName;
	}

	public String getBookPrice() {
		return bookPrice;
	}

	public String getWriter() {
		return writer;
	}

	public String getGrade() {
		return grade;
	}

	public String getStockSeq() {
		return stockSeq;
	}

	public String getOptionBook() {
		return optionBook;
	}

	public String getGenreId() {
		return genreId;
	}

	public String getUserid() {
		return userid;
	}

	public void setBookId(String bookId) {
		this.bookId = bookId;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public void setBookPrice(String bookPrice) {
		this.bookPrice = bookPrice;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public void setStockSeq(String stockSeq) {
		this.stockSeq = stockSeq;
	}

	public void setOptionBook(String optionBook) {
		this.optionBook = optionBook;
	}

	public void setGenreId(String genreId) {
		this.genreId = genreId;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	
	
	
	
}
