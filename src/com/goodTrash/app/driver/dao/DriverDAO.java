package com.goodTrash.app.driver.dao;

import org.apache.ibatis.session.SqlSession;

import com.goodTrash.app.driver.vo.DriverVO;
import com.mybatis.config.MyBatisConfig;

public class DriverDAO {
	public SqlSession sqlSession;
	public DriverDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public boolean driverCheckEmail(String driverEmail) {
		return (Integer)sqlSession.selectOne("driver.driverCheckEmail",driverEmail) == 0;
	}
	
	public void driverJoin(DriverVO driverVO) {
		sqlSession.insert("driver.driverJoin",driverVO);
	}
}
