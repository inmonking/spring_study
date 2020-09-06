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
@RequestMapping("/event/")
public class EventController {
	ModelAndView mv = new ModelAndView();
	@RequestMapping("roulette")
	public ModelAndView Roulette() {
		mv.setViewName("event/roulette");
		return mv;
	}
}
