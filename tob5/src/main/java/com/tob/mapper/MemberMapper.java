package com.tob.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.tob.global.Command;
import com.tob.member.MemberVO;

@Repository
public interface MemberMapper {
	
	    public String Join(MemberVO o);
		public int insert(MemberVO o);
		public int join2(MemberVO o);
		public MemberVO searchById(String userid);
		public int change(MemberVO o);
		public int count(); 
		public MemberVO login(String userid, String password); 
		public int countByKeyword(Command command); 
		public int update(MemberVO member);
		public int delete(String userid);
		public List<MemberVO> selectSomeBy(String domain, String searchword);
		public List<MemberVO> selectAll(Command command);
		public int changePwd(MemberVO member);
		public MemberVO selectOneBy(String userid);
		public MemberVO logout();	
}