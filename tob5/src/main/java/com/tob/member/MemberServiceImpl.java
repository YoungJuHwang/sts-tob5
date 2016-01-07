package com.tob.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tob.global.Command;
import com.tob.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService{
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired private SqlSession sqlSession;
	
		@SuppressWarnings("unused")
		@Override
		public String joinForm() {
			logger.info("MemberServiceImpl : joinForm");
			MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
			return "member/join.tiles";
		}
		public String loginForm() {
			logger.info("MemberServiceImpl : loginForm");
			MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
			return "member/login.tiles";
		}
		public String mypageForm() {
			logger.info("MemberServiceImpl : mypageForm");
			MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
			return "member/mypage.tiles";
		}
		@Override
		public int insert(MemberVO member) {
			logger.info("MemberServiceImpl : insert");
			MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
			return mapper.insert(member);
		}
		@Override
		public int change(MemberVO member) {
			logger.info("MemberServiceImpl : change");
			MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
			return mapper.update(member);
		}
		@Override
		public int remove(String userid) {
			logger.info("MemberServiceImpl : remove");
			MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
			return mapper.delete(userid);
		}
		@Override
		public MemberVO selectOneBy(String userid) {
			logger.info("MemberServiceImpl : login");
			MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
			return mapper.selectOneBy(userid);
		}
		@Override
		public int count() {
			logger.info("MemberServiceImpl : count");
			MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
			return mapper.count();
		}
		@Override
		public MemberVO searchById(String userid) {
			logger.info("MemberServiceImpl : selectById");
			MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
			return mapper.selectOneBy(userid);
		}
		@Override
		public List<MemberVO> searchBySearchword(String domain,String searchword) {
			logger.info("MemberServiceImpl : searchBySearchword");
			MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
			return mapper.selectSomeBy(domain, searchword);
		}
		@Override
		public List<MemberVO> getList(Command command) {
			logger.info("MemberServiceImpl : getList");
			MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
			return mapper.selectAll(command);
		}
		@Override
		public int changePwd(MemberVO member) {
			logger.info("MemberServiceImpl : changePwd");
			MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
			return mapper.changePwd(member);
		}
		@Override
		public MemberVO logout(String userid, String password) {
		logger.info("MemberServiceImpl : logout");
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		return mapper.logout(userid,password);
		}
		
}
		