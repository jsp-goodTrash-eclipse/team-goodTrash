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
	
	public int driverLogin(DriverVO driverVO) {
		return sqlSession.selectOne("driver.driverLogin",driverVO);
	}
	
	// 세션에 저장된 driverNumber를 통해 driverEmail을 가져온다.
	public String getDriverEmail(int driverNumber) {
		return sqlSession.selectOne("driver.getDriverEmail",driverNumber);
	}
}
