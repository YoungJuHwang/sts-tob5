package com.tob.account;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tob.global.Command;
import com.tob.mapper.AccountMapper;
import com.tob.mapper.MemberMapper;
 


@Service
public class AccountServiceImpl implements AccountService{
	private static final Logger logger = LoggerFactory.getLogger(AccountServiceImpl.class);
	@Autowired private SqlSession sqlSession;
	
	@Override
	public int addList(AccountVO account) {
		logger.info("AccountServiceImpl : addList");
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		return mapper.insert(account);
	}
	@Override
	public List<?> getAccountList(Command command) {
		logger.info("AccountServiceImpl : getAccountList");
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		return mapper.selectAllPage(command);
	}
	@Override
	public List<?> searchAccountDay(String account_num) {
		logger.info("AccountServiceImpl : searchAccountDay");
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		return mapper.selectByDay(account_num);
	}
	
	@Override
	public int change(AccountVO account) {
		logger.info("AccountServiceImpl : addList");
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		return mapper.update(account);
	}
	@Override
	public int remove(String account_num) {
		logger.info("AccountServiceImpl : addList");
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		return mapper.delete(account_num);
	}
	@Override
	public int count() {
		logger.info("AccountServiceImpl : count");
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		return mapper.count();
	}
	@Override
	public int getTotal(String key) {
		logger.info("AccountServiceImpl : getTotal");
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		return mapper.selectTotal(key);
	}
	
	
	

}
