package service;


import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.TeamMemberDataBean;
import mybatis.MyBatisConnector;

@Service
public class TeamMemberDBBeanMybatis {
	private final String namespace = "mybatis.mybatis_mapper";

	@Autowired
	public MyBatisConnector mybatisConnector;

	// 로그인
	public HashMap login_check(String id, String passwd) throws Exception {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		System.out.println("-----------login_check");
		HashMap map = new HashMap();
		map.put("id", id);
		map.put("password", passwd);
		HashMap<String, Boolean> error = new HashMap<String, Boolean>();
		try {
			String idValue = sqlSession.selectOne(namespace + ".login_idCheck", id);
			if (idValue == null) {
				error.put("id", Boolean.TRUE);
			}
			String password = sqlSession.selectOne(namespace + ".login_pwCheck", map);
			if (password == null) {
				error.put("passwd", Boolean.TRUE);
			}

			return error;
		} finally {
			sqlSession.close();
		}
	}

	public boolean idCheck(String id) throws Exception {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		try {
			String idValue = sqlSession.selectOne(namespace + ".login_idCheck", id);
			if (idValue == null) {
				return true;
			}
			return false;
		} finally {
			sqlSession.close();
		}
	}


	// 회원가입
	public int sh_insert(TeamMemberDataBean joinmember) throws Exception {
		SqlSession sqlSession = mybatisConnector.sqlSession();

		System.out.println("-----------service_insert");
		try {
			return sqlSession.insert(namespace + ".sh_insert", joinmember); // teammemberOracle.xml에서 id=sh_insert
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
	}
	

	// 회원정보페이지 전에 비밀번호 입력하기
	public HashMap memPagePasswd(String id, String passwd) throws Exception {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		System.out.println("-----------memPagePasswd");
		HashMap map = new HashMap();
		map.put("id", id);
		map.put("password", passwd);
		HashMap<String, Boolean> error = new HashMap<String, Boolean>();
		try {
			String password = sqlSession.selectOne(namespace + ".memCheckPasswd", map);
			if (password == null) {
				error.put("passwd", Boolean.TRUE);
			}
			return error;
		} finally {
			sqlSession.close();
		}
	}

	
	// 회원정보 보기
	public TeamMemberDataBean memPage(String id) throws Exception {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		System.out.println("-------------memPage");
		HashMap map = new HashMap();
		map.put("id", id);
		TeamMemberDataBean memPage = new TeamMemberDataBean();
		try {
			memPage = sqlSession.selectOne(namespace + ".memPage", map);
			System.out.println("******" + memPage);
		} finally {
			sqlSession.close();
			return memPage;
		}
	}


	// 회원정보수정 후
	public int upMemberPro(TeamMemberDataBean upMemPro) throws Exception {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		System.out.println("-------------upMemberPro");
		HashMap map = new HashMap();
		map.put("id", upMemPro.getId());
		int x = -1;
		try {
			String dbpasswd = (String) sqlSession.selectOne(namespace + ".memCheckPasswd", map);
			if (dbpasswd.equals(upMemPro.getPassword())) {
				x = sqlSession.update(namespace + ".up_memPage", upMemPro);
			}
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
		return x;
	}

	
	// 회원탈퇴
	public int memDelete(String id, String password) throws Exception {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		System.out.println("-------------memDelete");
		HashMap map = new HashMap();
		map.put("id", id);
		int x = -1;
		try {
			String idValue = sqlSession.selectOne(namespace + ".memCheckPasswd", map);
			if (idValue.equals(password)) {
				x = sqlSession.delete(namespace + ".memdelete", map);
			}
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
		return x;
	}

}
