package com.tob.admin;


import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tob.mapper.AdminMapper;
import com.tob.account.AccountController;

@Service

public class AdminServiceImpl implements AdminService{
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(AccountController.class);
	@SuppressWarnings("unused")
	@Autowired private SqlSession sqlSession;
	 
	
	@Override
	public int insert(AdminVO admin) {
		logger.info("AdminServiceImpl : insert");
		AdminMapper mapper = sqlSession.getMapper(AdminMapper.class);
		return mapper.insert(admin);
	}
	
	@Override
	public int change(AdminVO admin) {
		logger.info("AdminServiceImpl : change");
		AdminMapper mapper = sqlSession.getMapper(AdminMapper.class);
		return mapper.update(admin);
	}

	

	
}
