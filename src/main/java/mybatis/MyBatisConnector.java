package mybatis;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;


public class MyBatisConnector {
	String resource;
	String dbname;
	
	public SqlSession sqlSession() {
		//String resource = "mybatis/mybatis-config.xml";//위에 @Component 필요 
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
		} catch (IOException e) {
			throw new IllegalArgumentException(e);
		}
		return new SqlSessionFactoryBuilder().build(inputStream).openSession();
	}
	
	public void setDbname(String dbname) {
		this.resource = "mybatis/mybatis-config" + dbname + ".xml"; //springboardmybatis-servlet.xml파일에서 바꾸면 됨./dbname=Mysql 또는 Oracle
		this.dbname = dbname;
	}
	
	public String getDbname() {
		return dbname;
	}
}
