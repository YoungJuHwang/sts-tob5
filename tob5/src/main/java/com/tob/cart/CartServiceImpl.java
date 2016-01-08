package com.tob.cart;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tob.mapper.CartMapper;

@Service
public class CartServiceImpl implements CartService {
	private static final Logger logger = LoggerFactory.getLogger(CartServiceImpl.class);
	@Autowired private SqlSession sqlSession;
	
	@Override
	public String put(String bookId) {
		logger.info("CartServiceImpl : regist 진입");
		CartMapper mapper = sqlSession.getMapper(CartMapper.class);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		SimpleDateFormat sdf2 = new SimpleDateFormat("HHmmss");

        Calendar c1 = Calendar.getInstance();

        	String strToday = sdf.format(c1.getTime());
        	String var = "-";
        	String strToday2 = sdf2.format(c1.getTime());
        	String result = strToday + var + strToday2;

     	
		/*return mapper.put(bookId);*/
     	return null;
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
