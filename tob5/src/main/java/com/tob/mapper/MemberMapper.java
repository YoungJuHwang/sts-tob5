package com.tob.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.tob.global.Command;
import com.tob.member.MemberVO;

@Repository
public interface MemberMapper {
	
		public String joinForm();
	    public String loginForm();
	    public String mypageForm();
	    public int join(MemberVO member);
		public MemberVO logout(String userid, String password); 
		public int insert(MemberVO member);
		public MemberVO searchById(String userid);
		public int change(MemberVO member);
		public int count();  
		public int countByKeyword(Command command); 
		public int update(MemberVO member);
		public int delete(String userid);
		public List<MemberVO> selectSomeBy(String domain, String searchword);
		public List<MemberVO> selectAll(Command command);
		public int changePwd(MemberVO member);
		public MemberVO selectOneBy(String userid);
		public int myCart(String userid, String bookId);	
}