package service;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.c_BoardDataBean;
import mybatis.MyBatisConnector;




@Service
public class c_BoardDBBeanMybatis {
	private final String namespace = "mybatis.mybatis_mapper"; //boardOracle.xml에 있음
	
	@Autowired
	public MyBatisConnector mybatisConnector;
	
	//총 게시글 카운트
	public int getArticleCount(String boardid) throws Exception {
		SqlSession sqlSession=mybatisConnector.sqlSession();
		System.out.println("getArticleCount===old");
		try {
			return sqlSession.selectOne(namespace + ".getArticleCount", boardid);
		} finally {
			sqlSession.close();
		}
	}

	// 글리스트 -> 글 내용 보기
	public List getArticles(int start, int end, String boardid) throws Exception {
		SqlSession sqlSession=mybatisConnector.sqlSession();
		System.out.println("getArticles===old");		
		HashMap map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		map.put("boardid", boardid);
		try {
			return sqlSession.selectList(namespace + ".getArticles", map);
		} finally {
			sqlSession.close();
		}
	}
	
	//글 등록
	public void insertArticle(c_BoardDataBean article, String boardid) throws Exception {
		SqlSession sqlSession=mybatisConnector.sqlSession();
		System.out.println("insertArticle===old");	
		int num = article.getNum();
		int ref = article.getRef();
		int re_step = article.getRe_step();
		int re_level = article.getRe_level();
		try {			
			HashMap map = new HashMap();
			int number = sqlSession.selectOne(namespace + ".insertArticle_new");
			if (number != 0)				number = number + 1;
			else	number = 1;
			if (num != 0) {
				map.put("ref", ref);
				map.put("re_step", re_step);
				sqlSession.update(namespace + ".insertArticle_update", map);
				re_step = re_step + 1;
				re_level = re_level + 1;
			} else {ref = number;	re_step = 0;re_level = 0;
			}			article.setNum(number);
			article.setRef(ref);	article.setRe_step(re_step);
			article.setRe_level(re_level);
			article.setBoardid(boardid);
			System.out.println("insert:" + article);
			article.setFilename("");
			article.setFilesize(0);
			int result = sqlSession.insert(namespace + ".insertArticle_insert", article);
			System.out.println("insert  0k:" + result);
		} catch (Exception e) {		e.printStackTrace();
		} finally {			sqlSession.commit();		sqlSession.close();		}
	}

	// 게시글 내용 보기
	public c_BoardDataBean getArticle(int num, String boardid) throws Exception {
		SqlSession sqlSession=mybatisConnector.sqlSession();
		System.out.println("getArticle===old");	
		HashMap map = new HashMap();
		map.put("num", num);
		map.put("boardid", boardid);
		c_BoardDataBean article = new c_BoardDataBean();
		try {
			int result = sqlSession.update(namespace + ".update_readcount", map);
			article = (c_BoardDataBean) sqlSession.selectOne(namespace + ".getArticle", map);
		} finally {
			sqlSession.commit();
			sqlSession.close();
			return article;
		}
	}
	
	
//-----------------------------------------------여기까지 함	
	
	
	
	
	
	
	
	

	//글 수정 후 리스트로 감
	public c_BoardDataBean getUpdate(int num, String boardid) throws Exception {
		SqlSession sqlSession=mybatisConnector.sqlSession();
		System.out.println("getUpdate===old");	
		HashMap map = new HashMap();
		map.put("num", num);
		map.put("boardid", boardid);
		c_BoardDataBean article = new c_BoardDataBean();
		try {
			article = (c_BoardDataBean) sqlSession.selectOne(namespace + ".getArticle", map);
			System.out.println(":::" + article);
		} finally {
			sqlSession.close();
			return article;
		}
	}

	//글 수정
	public int updateArticle(c_BoardDataBean article, String boardid) throws Exception {
		SqlSession sqlSession=mybatisConnector.sqlSession();
		System.out.println("updateArticle===old");
		HashMap map = new HashMap();
		map.put("num", article.getNum());
		int x = -1;
		try {
			String dbpasswd = (String) sqlSession.selectOne(namespace + ".update_passwd", map);
			if (dbpasswd.equals(article.getPasswd())) {
				x = sqlSession.update(namespace + ".update_update", article);
			}
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
		return x;
	}

	//글 삭제
	public int deleteArticle(int num, String passwd) throws Exception {
		SqlSession sqlSession=mybatisConnector.sqlSession();
		System.out.println("deleteArticle===old");
		HashMap map = new HashMap();
		map.put("num", num);
		int x = -1;
		try {
			String dbpasswd = (String) sqlSession.selectOne(namespace + ".update_passwd", map);
			if (dbpasswd.equals(passwd)) {
				x = sqlSession.delete(namespace + ".delete", map);
			}
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
		return x;
	}


}
