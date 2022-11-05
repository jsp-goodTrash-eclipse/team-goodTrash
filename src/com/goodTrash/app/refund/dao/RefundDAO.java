package com.goodTrash.app.refund.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class RefundDAO {
	public SqlSession sqlSession;
	public RefundDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
