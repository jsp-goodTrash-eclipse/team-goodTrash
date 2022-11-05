package com.goodTrash.app.driver.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class DriverDAO {
	public SqlSession sqlSession;
	public DriverDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
