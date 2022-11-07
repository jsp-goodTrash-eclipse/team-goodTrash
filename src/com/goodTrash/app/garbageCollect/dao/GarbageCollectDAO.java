package com.goodTrash.app.garbageCollect.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.goodTrash.app.garbageCollect.vo.GarbageCollectDTO;
import com.goodTrash.app.garbageCollect.vo.GarbageCollectVO;
import com.mybatis.config.MyBatisConfig;

public class GarbageCollectDAO {

	public SqlSession sqlSession;
	
	public GarbageCollectDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void reservation(GarbageCollectVO garbageCollectVO) {
		sqlSession.insert("garbageCollect.reservation", garbageCollectVO);
	}
	
	public List<GarbageCollectVO> historyList(HashMap<String, Integer> pageMap) {
		return sqlSession.selectList("garbageCollect.historyList", pageMap);
	}
	
	public int getTotal(int userNumber) {
		return sqlSession.selectOne("garbageCollect.getTotal", userNumber); 
	}
	
	public GarbageCollectVO select(int garbageCollectNum) {
		return sqlSession.selectOne("garbageCollect.select", garbageCollectNum);
	}
	
	public void delete(int garbageCollectNum) {
		sqlSession.delete("garbageCollect.delete", garbageCollectNum);
	}
	
	public List<GarbageCollectVO> list(int userNumber) {
		return sqlSession.selectOne("garbageCollect.list", userNumber);
	}
	
	public int listCount() {
		return sqlSession.selectOne("garbageCollect.listCount");
	}

}
