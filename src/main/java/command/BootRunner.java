package command;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import mybatis.MyBatisConnector;

@Component
public class BootRunner {
	private final String namespace = "mybatis.mybatis_mapper";

	@Autowired
	public MyBatisConnector mybatisConnector;
	
	@PostConstruct
	public void init() {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		System.out.println("bootRunner start");
		try {
			String sql = "";
			String tableName = "team_member";
			if((int)sqlSession.selectOne(namespace + ".findTable",tableName)<=0) {
				Map<String, String> map = new HashMap<String, String>();
				sql = "CREATE TABLE \"TEAM_MEMBER\" \r\n" + 
						"   (	\"ID\" VARCHAR2(15) NOT NULL ENABLE, \r\n" + 
						"	\"password\" VARCHAR2(25) NOT NULL ENABLE, \r\n" + 
						"	\"GENDER\" VARCHAR2(2) NOT NULL ENABLE, \r\n" + 
						"	\"name\" VARCHAR2(20) NOT NULL ENABLE, \r\n" + 
						"	\"EMAIL\" VARCHAR2(40) NOT NULL ENABLE, \r\n" + 
						"	\"PHONE\" VARCHAR2(11) NOT NULL ENABLE, \r\n" + 
						"	 CONSTRAINT \"TEAM_MEMBER_PKEY\" PRIMARY KEY (\"ID\")\r\n" + 
						"	 )";
				map.put("create_query", sql);
				sqlSession.selectOne(namespace +".createQuery", map);
			}
			tableName = "team_qna";
			if((int)sqlSession.selectOne(namespace + ".findTable",tableName)<=0) {
				Map<String, String> map = new HashMap<String, String>();
				sql = "CREATE TABLE \"TEAM_QNA\" \r\n" + 
						"   (	\"NUM\" NUMBER(*,0), \r\n" + 
						"	\"CAT_NAME\" VARCHAR2(20) NOT NULL ENABLE, \r\n" + 
						"	\"WRITER\" VARCHAR2(10) NOT NULL ENABLE, \r\n" + 
						"	\"SUBJECT\" VARCHAR2(50) NOT NULL ENABLE, \r\n" + 
						"	\"password\" VARCHAR2(12) NOT NULL ENABLE, \r\n" + 
						"	\"REG_DATE\" DATE NOT NULL ENABLE, \r\n" + 
						"	\"READCOUNT\" NUMBER(*,0), \r\n" + 
						"	\"ref\" NUMBER(*,0) NOT NULL ENABLE, \r\n" + 
						"	\"RE_STEP\" NUMBER(*,0) NOT NULL ENABLE, \r\n" + 
						"	\"RE_LEVEL\" NUMBER(*,0) NOT NULL ENABLE, \r\n" + 
						"	\"content\" VARCHAR2(3000) NOT NULL ENABLE, \r\n" + 
						"	 PRIMARY KEY (\"NUM\")\r\n" + 
						"	 )";
				map.put("create_query", sql);
				sqlSession.selectOne(namespace +".createQuery", map);
			}
		} finally {
			sqlSession.close();
		}
	}
}
