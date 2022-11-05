package com.goodTrash.app.garbageCollect.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class GarbageCollectDAO {
	public SqlSession sqlSession;
	public GarbageCollectDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
