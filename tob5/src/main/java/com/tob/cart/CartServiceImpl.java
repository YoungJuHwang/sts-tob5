package com.tob.cart;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tob.book.BookVO;
import com.tob.mapper.CartMapper;

@Service
public class CartServiceImpl implements CartService {
	private static final Logger logger = LoggerFactory.getLogger(CartServiceImpl.class);
	@Autowired private SqlSession sqlSession;
	
	@Override
	public CartVO put(String bookId) {
		logger.info("CartServiceImpl : regist 진입");
		CartMapper mapper = sqlSession.getMapper(CartMapper.class);
		return mapper.put(bookId);
	}
	@Override
	public List<BookCartVO> getList() {
		logger.info("CartServiceImpl : getList 진입");
		CartMapper mapper = sqlSession.getMapper(CartMapper.class);
		return mapper.getList();
	}
	@Override
	public int remove(String bookid) {
		logger.info("CartServiceImpl : remove 진입");
		CartMapper mapper = sqlSession.getMapper(CartMapper.class);
		return mapper.remove(bookid);
	}
	@Override
	public int changeCount(int count) {
		logger.info("CartServiceImpl : changeCount 진입");
		CartMapper mapper = sqlSession.getMapper(CartMapper.class);
		return mapper.changeCount(count);
	}
	
	
	
}
