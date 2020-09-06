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
@RequestMapping("/")
public class MainController {
	ModelAndView mv = new ModelAndView();
	@RequestMapping("")
	public ModelAndView test() {
		mv.setViewName("index");
		return mv;
	}
}
