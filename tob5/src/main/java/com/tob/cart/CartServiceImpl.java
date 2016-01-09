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
	@Autowired CartVO cart;
	@Override
	public int put(String bookId, String userid) {
		logger.info("CartServiceImpl : put 진입");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		SimpleDateFormat sdf2 = new SimpleDateFormat("HHmmss");

        Calendar c1 = Calendar.getInstance();

    	String strToday = sdf.format(c1.getTime());
    	String var = "-";
    	String strToday2 = sdf2.format(c1.getTime());
    	String result = strToday + var + strToday2;
    	logger.info("넘어온 책 아이디 : " + bookId);
    	logger.info("넘어온 유저 아이디 : " + userid);
    	logger.info("생성된 카트 넘버 : " + result);
        cart.setCartNum(result);
     	cart.setBookid(bookId);
     	cart.setUserid(userid);
     	cart.setCount("1");
     	logger.info("바뀐 카트VO의  책 아이디 : " + cart.getBookid());
    	logger.info("바뀐 카트VO의 유저 아이디 : " + cart.getUserid());
    	logger.info("바뀐 카트VO의 카트 넘버 : " + cart.getCartNum());
		/*return mapper.put(cart);*/
     	CartMapper mapper = sqlSession.getMapper(CartMapper.class);
     	//mapper.put(cart);
     	return mapper.put(cart);
	}
	@Override
	public List<BookCartVO> getList(String userid) {
		logger.info("CartServiceImpl : getList 진입");
		logger.info("넘어온 유저아이디 : " + userid);
		
		CartMapper mapper = sqlSession.getMapper(CartMapper.class);
		return mapper.getList(userid);
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
