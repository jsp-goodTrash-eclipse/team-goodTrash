package com.goodTrash.app.inquiry.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.goodTrash.app.garbageCollect.vo.GarbageCollectVO;
import com.goodTrash.app.inquiry.vo.InquiryVO;
import com.mybatis.config.MyBatisConfig;

public class InquiryDAO {
	public SqlSession sqlSession;
	
	public InquiryDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<InquiryVO> selectAll() {
		return sqlSession.selectList("inquiry.selectAll");
	} 
	
	public void insert(InquiryVO inquiryVO) {
		sqlSession.insert("inquiry.insert", inquiryVO);
	}
	public void delete(int inquiryNumber) {
		sqlSession.delete("inquiry.delete", inquiryNumber);
	}


}
