package controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import model.c_BoardDataBean;
import service.c_BoardDBBeanMybatis;

@Controller
@RequestMapping("/c_board/")
public class c_BoardController {
	ModelAndView mv = new ModelAndView();
	
	String boardid;
	int pageNum;
	String ip;
	String passwd;

	@Autowired
	public c_BoardDBBeanMybatis boardDBBeanMybatis;

	// @RequestMapping("/board/") 테스트
	@RequestMapping("c_test")
	public ModelAndView test() {
		mv.setViewName("board/test");
		return mv;
	}

	@ModelAttribute
	public void setAtt(HttpServletRequest req) {
		HttpSession session = req.getSession();
		String reqboardid = req.getParameter("boardid");

		if (reqboardid != null)
			session.setAttribute("boardid", reqboardid);
		if (session.getAttribute("boardid") == null)
			boardid = "1"; // 위에 String boardid
		else
			boardid = (String) session.getAttribute("boardid");

		try {
			pageNum = Integer.parseInt(req.getParameter("pageNum"));
		} catch (Exception e) {
			pageNum = 1;
		}

		ip = req.getRemoteAddr();
		passwd = req.getParameter("passwd");// deleteForm에 있는 name="passwd" / 아래 deletePro에서 필요함.

	}

	@RequestMapping("list") // url에 프로젝트명/팩키지명/@RequestMapping(명)
	public ModelAndView list() throws Exception {

		int pageSize = 6;
		int currentPage = pageNum;

		// int currentPage =Integer.parseInt(pageNum);
		int count = boardDBBeanMybatis.getArticleCount(boardid);
		int startRow = (currentPage - 1) * pageSize;
		int endRow = currentPage * pageSize;
		List articleList = boardDBBeanMybatis.getArticles(startRow, pageSize, boardid);
		int number = count - ((currentPage - 1) * pageSize);

		int bottomLine = 3;
		// 5 page
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		int startPage = 1 + (currentPage - 1) / bottomLine * bottomLine;
		int endPage = startPage + bottomLine - 1;
		if (endPage > pageCount)
			endPage = pageCount;
		mv.addObject("count", count);
		mv.addObject("boardid", boardid);
		mv.addObject("pageNum", pageNum);
		mv.addObject("articleList", articleList);
		mv.addObject("number", number);
		mv.addObject("startPage", startPage);
		mv.addObject("bottomLine", bottomLine);
		mv.addObject("endPage", endPage);
		mv.addObject("pageCount", pageCount);
		mv.setViewName("board/list");// 웹에서 보여지는 jsp파일로 감.

		return mv;
	}

	@RequestMapping("writeForm")
	public ModelAndView writeForm(c_BoardDataBean article) throws Exception {

		mv.clear();

		mv.addObject("num", article.getNum());
		mv.addObject("pageNum", pageNum);
		mv.addObject("ref", article.getRef());
		mv.addObject("re_step", article.getRe_step());
		mv.addObject("re_level", article.getRe_level());
		mv.setViewName("board/writeForm");

		return mv;
	}

	
	  @RequestMapping("writePro")
	  public String writePro(c_BoardDataBean article) throws Exception {
	  article.setIp(ip); boardDBBeanMybatis.insertArticle(article, boardid);
	  return "redirect:list?pageNum=" + pageNum; 
	  }
	 

	/*
	 * @RequestMapping("writeUploadPro") public String
	 * writeUploadPro(MultipartHttpServletRequest multipart, BoardDataBean article)
	 * throws Exception {
	 * 
	 * MultipartFile multi = multipart.getFile("uploadfile"); String filename =
	 * multi.getOriginalFilename(); if (filename != null && !filename.equals("")) {
	 * String uploadPath = multipart.getRealPath("/") + "/fileSave";
	 * System.out.println(uploadPath); FileCopyUtils.copy(multi.getInputStream(),
	 * new FileOutputStream(uploadPath + "/" + multi.getOriginalFilename()));
	 * article.setFilename(filename); article.setFilesize((int) multi.getSize()); }
	 * else { article.setFilename(""); article.setFilesize(0); } article.setIp(ip);
	 * boardDBBeanMybatis.insertArticle(article, boardid); return
	 * "redirect:list?pageNum=" + pageNum; }
	 */

	@RequestMapping("content")
	public ModelAndView content(int num) throws Exception {

		mv.clear();

		c_BoardDataBean article = boardDBBeanMybatis.getArticle(num, boardid);
		mv.addObject("article", article);
		mv.addObject("pageNum", pageNum);
		mv.setViewName("board/content");

		return mv;

	}

	@RequestMapping("update") // url에 프로젝트명/팩키지명/@RequestMapping(명)
	public ModelAndView update(int num) throws Exception {

		mv.clear();

		c_BoardDataBean article = boardDBBeanMybatis.getUpdate(num, boardid);
		mv.addObject("article", article);
		mv.addObject("pageNum", pageNum);
		mv.setViewName("board/updateForm");// 웹에서 보여지는 jsp파일로 감.

		return mv;

	}

	@RequestMapping("updatePro") // url에 프로젝트명/팩키지명/@RequestMapping(명)
	public ModelAndView updatePro(c_BoardDataBean article) throws Exception {

		mv.clear();

		int check = boardDBBeanMybatis.updateArticle(article, boardid);
		mv.addObject("check", check);
		mv.addObject("pageNum", pageNum);
		mv.setViewName("board/updatePro");// 웹에서 보여지는 jsp파일로 감.

		return mv;

	}

	@RequestMapping("delete") // url-> 프로젝트명/팩키지명/@RequestMapping(명)
	public ModelAndView delete(int num) throws Exception {

		mv.clear();

		mv.addObject("num", num);
		mv.addObject("pageNum", pageNum);
		mv.setViewName("board/deleteForm");

		return mv;
	}

	@RequestMapping("deletePro") // url-> 프로젝트명/팩키지명/@RequestMapping("명")
	public ModelAndView deletePro(int num) throws Exception {

		mv.clear();

		int check = boardDBBeanMybatis.deleteArticle(num, passwd);
		mv.addObject("check", check);
		mv.addObject("pageNum", pageNum);
		mv.setViewName("board/deletePro");

		return mv;
	}
}
