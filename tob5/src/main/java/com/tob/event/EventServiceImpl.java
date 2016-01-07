package com.tob.event;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tob.global.Command;
import com.tob.mapper.EventMapper;

 

@Service
public class EventServiceImpl implements EventService {
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(EventServiceImpl.class);
	@Autowired private SqlSession sqlSession;

	@Override
	public int update(EventVO o) {
		EventMapper mapper = sqlSession.getMapper(EventMapper.class);
		return mapper.update(o);
	}
	@Override
	public int delete(String evtId) {
		EventMapper mapper = sqlSession.getMapper(EventMapper.class);
		return mapper.delete(evtId);
	}
	@Override
	public int count() {
		EventMapper mapper = sqlSession.getMapper(EventMapper.class);
		return mapper.count();
	}
	@Override
	public List<EventVO> selectAll(Command command) {
		EventMapper mapper = sqlSession.getMapper(EventMapper.class);
		return mapper.selectAll(command);
	}
	@Override
	public int insert(EventVO o) {
		EventMapper mapper = sqlSession.getMapper(EventMapper.class);
		return mapper.insert(o);
	}

}
