package com.tob.cart;

public class BookCartVO {
	private String cartNum;
	private String bookid;
	private String userid;
	private String count;
	private String bookId;		//고유번호
	private String bookName;	//이름
	private String bookPrice;	//가격
	private String writer;		//지은이
	private String grade;		// 평점
	private String bookseq; 	//재고량
	private String optionBook; 	//옵션
	private String genreId; 	//장르
	
	public String getCartNum() {
		return cartNum;
	}
	public String getBookid() {
		return bookid;
	}
	public String getUserid() {
		return userid;
	}
	public String getCount() {
		return count;
	}
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
	public String getBookseq() {
		return bookseq;
	}
	public String getOptionBook() {
		return optionBook;
	}
	public String getGenreId() {
		return genreId;
	}
	public void setCartNum(String cartNum) {
		this.cartNum = cartNum;
	}
	public void setBookid(String bookid) {
		this.bookid = bookid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public void setCount(String count) {
		this.count = count;
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
	public void setBookseq(String bookseq) {
		this.bookseq = bookseq;
	}
	public void setOptionBook(String optionBook) {
		this.optionBook = optionBook;
	}
	public void setGenreId(String genreId) {
		this.genreId = genreId;
	}
}
