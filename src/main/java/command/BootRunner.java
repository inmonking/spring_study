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
				sql = "CREATE TABLE public.team_member (\r\n" + 
						"	id varchar(15) NOT NULL,\r\n" + 
						"	\"password\" varchar(25) NOT NULL,\r\n" + 
						"	gender varchar(2) NOT NULL,\r\n" + 
						"	\"name\" varchar(20) NOT NULL,\r\n" + 
						"	email varchar(40) NOT NULL,\r\n" + 
						"	phone varchar(11) NOT NULL,\r\n" + 
						"	CONSTRAINT team_member_pkey PRIMARY KEY (id)\r\n" + 
						");";
				map.put("create_query", sql);
				sqlSession.selectOne(namespace +".createQuery", map);
			}
			tableName = "team_qna";
			if((int)sqlSession.selectOne(namespace + ".findTable",tableName)<=0) {
				Map<String, String> map = new HashMap<String, String>();
				sql = "CREATE TABLE public.team_qna (\r\n" + 
						"	num serial primary key,\r\n" + 
						"	cat_name varchar(20) NOT NULL,\r\n" + 
						"	writer varchar(10) NOT NULL,\r\n" + 
						"	subject varchar(50) NOT NULL,\r\n" + 
						"	\"password\" varchar(12) NOT NULL,\r\n" + 
						"	reg_date date NOT NULL,\r\n" + 
						"	readcount int8 NULL DEFAULT 0,\r\n" + 
						"	\"ref\" int8 NOT NULL,\r\n" + 
						"	re_step int8 NOT NULL,\r\n" + 
						"	re_level int8 NOT NULL,\r\n" + 
						"	\"content\" varchar(3000) NOT NULL\r\n" + 
						");";
				map.put("create_query", sql);
				sqlSession.selectOne(namespace +".createQuery", map);
			}
		} finally {
			sqlSession.close();
		}
	}
}
