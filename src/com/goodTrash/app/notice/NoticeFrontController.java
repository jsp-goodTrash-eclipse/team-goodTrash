package com.goodTrash.app.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodTrash.app.Result;

public class NoticeFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String target = req.getRequestURI().substring(req.getContextPath().length());
		Result result = null;
		
//		쓰레기 수거 지역 가능 페이지
		if(target.equals("/notice/infomation.notice")) {
			
//			이용 방법 페이지
		}else if(target.equals("/notice/notandum.notice")) {
			
//			공지사항 목록 페이지
		}else if(target.equals("/notice/noticeDetail.notice")) {
			
//			수거 가능 품록 나와있는 페이지
		}else if(target.equals("/notice/subject.notice")) {
			
		}
			
		
		
//		if(result != null) {
//			if(result.isRedirect()) {
//				resp.sendRedirect(result.getPath());
//			}else {
//				req.getRequestDispatcher(result.getPath()).forward(req, resp);
//			}
//		}
	}
}