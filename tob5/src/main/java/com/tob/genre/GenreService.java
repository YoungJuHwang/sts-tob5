package com.tob.genre;


public interface GenreService {
	
	//장르 등록
	public int registration(GenreVO o);
	 
	//장르 삭제
	public int delete(String genre);
		
	//장르 검색
	public GenreVO searchByGenre(String genre);

	//장르검색 (카테고리 아이디로)
	public GenreVO searchByGenre1(String cate);
}