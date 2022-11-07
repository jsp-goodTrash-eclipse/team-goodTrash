package com.goodTrash.app.user.dao;

import org.apache.ibatis.session.SqlSession;

import com.goodTrash.app.user.vo.UserVO;
import com.mybatis.config.MyBatisConfig;

public class UserDAO {
	public SqlSession sqlSession;
	
	public UserDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	// 이메일 중복 체크
	public boolean checkEmail(String userEmail) {
		return (Integer)sqlSession.selectOne("user.checkEmail",userEmail) == 0;
		
	}
	
	// 닉네임 중복 체크
	public boolean checkNickname(String userNickname) {
		return (Integer)sqlSession.selectOne("user.checkNickname",userNickname) == 0;
		 
	}
	
	public void join(UserVO userVO) {
		sqlSession.insert("user.insert",userVO);
	}
	
	public int login(UserVO userVO) {
		return sqlSession.selectOne("user.login",userVO);
	}
	
	public int getUserNumber(int userNumber) {
		return sqlSession.selectOne("user.getUserNumber", userNumber);
	}
	
	
	

	
}
