package com.goodTrash.app.inquiry.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class InquiryDAO {
	public SqlSession sqlSession;
	public InquiryDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
