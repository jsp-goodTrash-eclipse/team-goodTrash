package com.goodTrash.app.shoppingBasket.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class ShoppingBasketDAO {
	public SqlSession sqlSession;
	public ShoppingBasketDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
