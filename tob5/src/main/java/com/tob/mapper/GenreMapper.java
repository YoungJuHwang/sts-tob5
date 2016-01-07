package com.tob.mapper;

import org.springframework.stereotype.Repository;

import com.tob.genre.GenreVO;


@Repository
public interface GenreMapper {

public int registration(GenreVO o);
public int delete(String genre);
public GenreVO searchByGenre(String genre);
public GenreVO searchByGenre1(String cate);

}
 