package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/")
public class MemberController {
	ModelAndView mv = new ModelAndView();
	
	@RequestMapping("test")
	public ModelAndView test() {
		System.out.println("테스트");
		mv.setViewName("member/test");
		return mv;
	}
	
	

}
