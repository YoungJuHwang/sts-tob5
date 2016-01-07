package com.tob.purchase;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tob.mapper.AccountMapper;
import com.tob.mapper.PurchaseMapper;

  
@Service
public class PurchaseServiceImpl implements PurchaseService{
	private static final Logger logger = LoggerFactory.getLogger(PurchaseServiceImpl.class);
	@Autowired private SqlSession sqlSession;
	
	
	@Override
	public int add(PurchaseVO o) {
		logger.info("PurchaseServiceImpl : add 진입");
		PurchaseMapper mapper = sqlSession.getMapper(PurchaseMapper.class);
		return mapper.add(o);
	}
	@Override
	public PurchaseVO searchBypurNum(String purNum) {
		logger.info("PurchaseServiceImpl : searchBypurNum 진입");
		PurchaseMapper mapper = sqlSession.getMapper(PurchaseMapper.class);
		return mapper.searchBypurNum(purNum);
	}
	@Override
	public List<PurchaseVO> searchByAccNum(String accountNum) {
		logger.info("PurchaseServiceImpl : searchByAccNum 진입");
		PurchaseMapper mapper = sqlSession.getMapper(PurchaseMapper.class);
		return mapper.searchByAccNum(accountNum);
	}
	@Override
	public List<PurchaseVO> getList() {
		logger.info("PurchaseServiceImpl : getList 진입");
		PurchaseMapper mapper = sqlSession.getMapper(PurchaseMapper.class);
		List<PurchaseVO> list = mapper.getList();
		logger.info("getList 리턴값 : {}",list);
		return list;
	}
	@Override
	public int change(PurchaseVO o) {
		logger.info("PurchaseServiceImpl : change 진입");
		PurchaseMapper mapper = sqlSession.getMapper(PurchaseMapper.class);
		return mapper.change(o);
	}
	@Override
	public int remove(String purNum) {
		logger.info("PurchaseServiceImpl : remove 진입");
		PurchaseMapper mapper = sqlSession.getMapper(PurchaseMapper.class);
		return mapper.remove(purNum);
	}
}
