package com.goodTrash.app.product.dao;

import org.apache.ibatis.session.SqlSession;

import com.goodTrash.app.product.vo.ProductVO;
import com.mybatis.config.MyBatisConfig;

public class ProductDAO {
	public SqlSession sqlSession;
	public ProductDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	public ProductVO adminSearchProduct() {
		
		return (ProductVO)sqlSession.selectList("product.adminSearchProduct");
		
	}
}
