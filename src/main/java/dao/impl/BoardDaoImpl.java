package dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.BoardDao;
import mybatis.MyBatisConnector;

@Component
public class BoardDaoImpl implements BoardDao{
	private final String namespace = "mybatis.mybatis_mapper";

	@Autowired
	public MyBatisConnector mybatisConnector;

	
	@Override
	public int sh_ReadCount() {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		try {
		return (int)sqlSession.selectOne(namespace + ".sh_ReadCount");
		} finally {
			sqlSession.close();
		}
	}
}
