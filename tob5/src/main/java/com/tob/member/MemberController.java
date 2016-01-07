package com.tob.member;


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

    @RequestMapping("/Join")
    public String join(){
        logger.info("멤버컨트롤러 Join() - 진입");
        return "member/Join.tiles";
    }
    @RequestMapping("/Join2")
    public Model join2(
            String userid,
            String password,
            String name,
            String birth,
            String gender,
            String email,
            String phone,
            String addr,
            Model model){
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

        int result = service.join2(member);
        if (result == 1) {
            logger.info("회원가입 성공");
            model.addAttribute("result","success");
            model.addAttribute("name",member.getName());
        } else {
            logger.info("회원가입 실패");
            model.addAttribute("result", "fail");
        }
        return model;
    }
    @RequestMapping("/login")
    public @ResponseBody MemberVO login(@RequestBody MemberVO param,Model model){
        logger.info("멤버컨트롤러 login() - 진입");
        logger.info("넘어온 유저아이디 : {}",param.getUserid());
        logger.info("유저비번 : {}",param.getPassword());
        member = service.login(param.getUserid(), param.getPassword());
        model.addAttribute("user", member);
        String u = member.getUserid();
        logger.info("로그인 과정에서 체크하는 아이디 : {}",u);
        if (member.getUserid().equals(param.getUserid())) {
            logger.info("로그인성공");
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
    @RequestMapping("/mypage")
    public String mypage(){
        logger.info("멤버컨트롤러 mypage() - 진입");
        return "member/mypage.tiles";
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
