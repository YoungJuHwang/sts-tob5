package com.tob.member;


import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

@Controller
@SessionAttributes("user")
@RequestMapping("/member")
public class MemberController {
    private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
    @Autowired MemberServiceImpl service;
    @Autowired MemberVO member;

    @RequestMapping("/joinForm")
    public String joinForm(){
        logger.info("멤버컨트롤러 joinForm() - 진입");
        return "member/join.tiles";
    }
    @RequestMapping("/loginForm")
    public String loginForm(){
        logger.info("멤버컨트롤러 loginForm() - 진입");
        return "member/login.tiles";
    }
    @RequestMapping("/mypageForm")
    public String mypagForm(){
        logger.info("멤버컨트롤러 mypageForm() - 진입");
        return "member/mypage.tiles";
    }
    @RequestMapping("/join")
    public @ResponseBody MemberVO insert(
    		@RequestBody MemberVO param){
        logger.info("멤버컨트롤러 join 진입");
        member.setUserid(param.getUserid());
        member.setPassword(param.getPassword());
        member.setName(param.getName());
        member.setBirth(param.getBirth());
        member.setGender(param.getGender());
        member.setEmail(param.getEmail());
        member.setPhone(param.getPhone());
        member.setAddr(param.getAddr());
        int result = service.insert(member);
        if (result == 1) {
            logger.info("회원가입 성공");
            
        } else {
            logger.info("회원가입 실패");
           
        }
        return member;
    }
   /*@RequestMapping(value="/join")
    public @ResponseBody MemberVO insert(
           @RequestParam("userid")String userid,
           @RequestParam("password")String password,
           @RequestParam("name")String name,
           @RequestParam("birth")String birth,
           @RequestParam("gender")String gender,
           @RequestParam("email")String email,
           @RequestParam("phone")String phone,
           @RequestParam("addr")String addr,
           Model model){
        logger.info("멤버컨트롤러 join 진입");
        logger.info("가입 아이디 : {}",userid);
        logger.info("가입 패스워드 : {}",password);
        logger.info("가입 이름 : {}",name);
        logger.info("가입 생년 : {}",birth);
        logger.info("가입 성별 : {}",gender);
        logger.info("가입 이메일 : {}",email);
        logger.info("가입 전화번호 : {}",phone);
        logger.info("가입 주소 : {}",addr);
        member.setUserid(userid);
        member.setPassword(password);
        member.setName(name);
        member.setBirth(birth);
        member.setGender(gender);
        member.setEmail(email);
        member.setPhone(phone);
        member.setAddr(addr);
        int result = service.insert(member);
        if (result == 1) {
            logger.info("회원가입 성공");
            model.addAttribute("result","success");
            model.addAttribute("name",member.getName());
        } else {
            logger.info("회원가입 실패");
            model.addAttribute("result", "fail");
        }
        return member;
    }*/
    @RequestMapping("/login")
    public @ResponseBody MemberVO selectOneBy(
    		@RequestParam("userid")String userid,
    		@RequestParam("password")String password,
    		HttpSession session,
    		Model model){
        logger.info("멤버컨트롤러 login() - 진입");
        logger.info("넘어온 유저아이디 : {}",userid);
        logger.info("유저비번 : {}",password);
        member = service.selectOneBy(userid);
        if (member != null) {
            logger.info("로그인성공");
            session.setAttribute("user", member);
        } else {
            logger.info("로그인실패");
        }
        return member;
    }
    @RequestMapping("/logout")
    public String logout(Model model,SessionStatus status){
        logger.info("멤버컨트롤러 logout() - 진입");
        status.setComplete();
        return "redirect:/";
    }
    @RequestMapping("/check")
    public Model check(
            String userid,
            Model model){
        logger.info("멤버컨트롤러 checkOverlap() - 진입");
        if (service.searchById(userid).getUserid() == null) {
            model.addAttribute("result", "usable");
            model.addAttribute("userid", userid);
        } else {
            model.addAttribute("result", "unusable");
            model.addAttribute("userid", userid);
        }
        return model;
    }
    @RequestMapping("/detail/{userid}")
    public @ResponseBody MemberVO detail(
            @PathVariable("userid")String userid){
        logger.info("멤버컨트롤러 detail() - 진입");
        member = service.searchById(userid);
        return member;
    }
    @RequestMapping(value="/update",method=RequestMethod.POST)
    public @ResponseBody MemberVO update(
            @RequestParam("userid")String userid,
            @RequestParam("password")String password,
            @RequestParam("addr")String addr,
            @RequestParam("email")String email,
            @RequestParam("phone")String phone){
        logger.info("멤버컨트롤러 update() - 진입");
        member.setPassword(password);
        member.setAddr(addr);
        member.setEmail(email);
        member.setPhone(phone);
        int result = service.change(member);
        if (result == 1) {
            logger.info("멤버컨트롤러 수정성공");
        } else {
            logger.info("멤버컨트롤러 수정실패");
        }
        return member;
    }
}
