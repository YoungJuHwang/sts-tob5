package com.tob.account;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tob.global.Command;
import com.tob.mapper.AccountMapper;
 


@Service
public class AccountServiceImpl implements AccountService{
	private static final Logger logger = LoggerFactory.getLogger(AccountController.class);
	@Autowired private SqlSession sqlSession;
	
	@Override
	public int addList(AccountVO account) {
		logger.info("AccountServiceImpl : addList");
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		return mapper.insert(account);
	}
	@Override
	public List<?> getAccountList(Command command) {
		logger.info("AccountServiceImpl : addList");
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		return mapper.selectAll(command);
	}
	@Override
	public List<?> searchAccountDay(Command command) {
		logger.info("AccountServiceImpl : addList");
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		return mapper.selectOneBy(command);
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
	
	

}
