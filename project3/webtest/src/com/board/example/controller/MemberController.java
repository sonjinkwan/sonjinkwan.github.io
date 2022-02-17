package com.board.example.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.board.example.dao.MemberDAO;
import com.board.example.dto.MemberDTO;
import com.board.example.service.MemberService;

@Controller //스프링에서 관리하는 컨트롤러 빈으로 등록
public class MemberController {
    //MemberService 인스턴스를 주입
    @Inject
    MemberService memberService;
    MemberDAO memberDao;
    MemberDTO member;
    
    //회원 목록 보기
    @RequestMapping("member/memberList.do")
    public String memberList(Model model) throws Exception {
    	List<MemberDTO> list = memberService.memberList();
    	model.addAttribute("list", list);
    	return "member/member_list";
    }
    //로그인 폼으로 이동
    @RequestMapping("member/login.do")
    public String loginPage() {
    	return "member/login";
    }
    //로그인 처리
    @RequestMapping(value="member/loginPro.do", method=RequestMethod.POST)
    public String memberCheckPw(String userid, String passwd, HttpSession session, RedirectAttributes rttr) throws Exception {
		/* MemberDTO member = new MemberDTO(); */
    	member = memberService.checkPw(userid, passwd);
    	String msg = "로그인 실패";
    	if(member !=null) {
    		session.setAttribute("member", member);
    	} else {
    		session.setAttribute("member", null);
    		rttr.addFlashAttribute("msg", msg);
    	}
    	return "redirect:/";
    }
    //로그아웃 처리
    @RequestMapping("member/logout.do")
    public String logOut(HttpSession session) throws Exception {
    	session.invalidate();
    	return "redirect:/";
    }
    
    //회원가입 폼으로 이동
    @RequestMapping("member/join.do")
    public String joinPage() throws Exception {
    	return "member/join";
    }
    //회원가입 처리
    @RequestMapping("member/joinPro.do")
    public String memberJoin(MemberDTO dto) throws Exception {
    	memberService.insertMember(dto);
    	return "member/login";
    }
    //마이페이지 이동
    @RequestMapping("member/mypage.do")
    public String mypage(@RequestParam String userid, Model model) throws Exception {
    	MemberDTO data = memberService.viewMember(userid);
    	model.addAttribute("data", data);
    	return "member/mypage";
    }
    //회원정보 수정처리
    @RequestMapping(value="updateMember.do", method=RequestMethod.POST)
    public String memberUpdateDo(MemberDTO dto, HttpSession session) throws Exception {
    	memberService.updateMember(dto);
    	session.invalidate();
    	return "redirect:/";
    }
    //회원 탈퇴 처리
    @RequestMapping(value="member/out.do", method=RequestMethod.GET)
    public String memberOut(@RequestParam String userid, Model model, HttpSession session) throws Exception {
    	memberService.deleteMember(userid);
    	if(userid != "admin") {
    		session.invalidate();
    	}
    		return "redirect:/";
    	}

    //회원 상세 보기
    @RequestMapping("member/view.do")
    public String viewMember(@RequestParam String userid, Model model) throws Exception {
    	MemberDTO data = memberService.viewMember(userid);
    	model.addAttribute("data", data);
    	memberService.viewMember(userid);
    	return "member/view";
    }
 
}