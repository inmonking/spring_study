package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.TeamMemberDataBean;
import service.TeamMemberDBBeanMybatis;

@Controller
@RequestMapping("/member/")
public class TeamMemberController {
	ModelAndView mv = new ModelAndView();

	String password;

	@Autowired
	public TeamMemberDBBeanMybatis teamMemberDBBeanMybatis;

	// 테스트
	@RequestMapping("test")
	public ModelAndView test() {
		mv.setViewName("member/test");
		return mv;
	}

	/*
	 * @ModelAttribute public void setAtt(String id, HttpServletRequest req) {
	 * HttpSession session = req.getSession(); req.getParameter("memberid");
	 * session.setAttribute("memberid", id); }
	 */

	// 로그인
	@RequestMapping("login")
	public ModelAndView login(String id, String passwd) throws Exception {
		mv.clear();
		mv.setViewName("member/loginForm");
		return mv;
	}

	@RequestMapping("loginPro")
	public ModelAndView loginPro(String id, String passwd, HttpServletRequest req) throws Exception {
		System.out.println(id + ":" + passwd);
		HashMap error = teamMemberDBBeanMybatis.login_check(id, passwd);
		if (error.isEmpty()) {
			mv.setViewName("redirect:/index");
			req.getSession().setAttribute("id", id);
		} else {
			mv.addObject("error", error);
			mv.setViewName("member/loginForm");
			mv.addObject("idValue", id);
		}
		return mv;
	}

	// 로그아웃
	@RequestMapping("logout")
	public String logout(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session = req.getSession(false);
		if (session != null) {
			session.invalidate();
		}
		return "redirect:/index";
	}

	// 회원가입
	@RequestMapping("join")
	public ModelAndView join() throws Exception {
		mv.setViewName("member/joinForm");
		return mv;
	}

	@RequestMapping("joinPro")
	public ModelAndView joinPro(TeamMemberDataBean joinmember) throws Exception {
		mv.clear();
		String id = joinmember.getId();
		if (teamMemberDBBeanMybatis.idCheck(joinmember.getId())) {
			teamMemberDBBeanMybatis.sh_insert(joinmember);
			mv.addObject("idValue", id);
			mv.setViewName("member/joinend");
		} else {
			mv.setViewName("member/joinForm");
			mv.addObject("error", Boolean.TRUE);
		}
		return mv;
	}

	
	// 회정정보수정하기 전에 비밀번호 입력하기
	@RequestMapping("memCheckPasswd")
	public ModelAndView memCheckPasswd(String id, String passwd) throws Exception {
		mv.clear();
		mv.setViewName("member/memCheckPasswd");
		return mv;
	}


	@RequestMapping("memCheckPasswdPro")
	public ModelAndView memCheckPasswd(String id, String passwd, HttpServletRequest req) throws Exception {
		System.out.println("-------------memCheckPasswd");
		HashMap error = teamMemberDBBeanMybatis.memPagePasswd(id, passwd);
		if (error.isEmpty()) {
			mv.setViewName("redirect:/memberPage");
			req.getSession().setAttribute("id", id);
		} else {
			mv.addObject("error", error);
			mv.setViewName("member/memCheckPasswd");
			mv.addObject("idValue", id);
		}
		return mv;
	}

	

	// 회원정보 보여주는 페이지
	// (String id) 말고 HttpServletReq~로 id를 받아서 해도 됨
	// 회원정보수정버튼를 클릭했을 때 url에 ${id}를 받아도 됨
	@RequestMapping("memberPage")
	public ModelAndView getmember(String id) throws Exception {

		mv.clear();

		TeamMemberDataBean memPage = teamMemberDBBeanMybatis.memPage(id);
		mv.addObject("memPage", memPage);
		mv.setViewName("member/memberPage");
		return mv;
	}
	

	// 회원정보 수정
	@RequestMapping("upmember")
	public ModelAndView upMember(String id) throws Exception {

		mv.clear();

		TeamMemberDataBean upMem = teamMemberDBBeanMybatis.memPage(id);
		mv.addObject("upMem", upMem);
		mv.setViewName("member/upmemPage");

		return mv;
	}

	@RequestMapping("upmemberPro")
	ModelAndView upMemberPro(TeamMemberDataBean upMemPro) throws Exception {

		mv.clear();

		int check = teamMemberDBBeanMybatis.upMemberPro(upMemPro);
		mv.addObject("check", check);
		mv.setViewName("member/memberPage");

		return mv;
	}

	// 회원정보 탈퇴 페이지
	@RequestMapping("delete")
	public ModelAndView memdelete(String id) throws Exception {

		mv.clear();

		mv.addObject("id", id);
		mv.setViewName("member/deleteForm");

		return mv;
	}

	@RequestMapping("deletePro")
	ModelAndView deletePro(String id) throws Exception {

		mv.clear();

		int check = teamMemberDBBeanMybatis.memDelete(id, password);
		mv.addObject("check", check);
		mv.setViewName("index");
		
		return mv;
	}

}
