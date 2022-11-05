package com.goodTrash.app.payment.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class PaymentDAO {
	public SqlSession sqlSession;
	public PaymentDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
