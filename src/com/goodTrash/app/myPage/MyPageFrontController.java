package com.goodTrash.app.myPage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialException;

import com.goodTrash.app.Result;
import com.goodTrash.app.myPage.InquiryListController;

public class MyPageFrontController extends HttpServlet {
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
		System.out.println(target);
		
//		사용자 마이페이지
		if(target.equals("/mypage/main.mp")){
			 result = new Result(); 
			 result.setPath("/app/myPage/myPage.jsp");
			 
//			사용자 수거내역 페이지
		}else if(target.equals("/mypage/history.ht")) {
			 result = new Result(); 
			 result.setPath("/app/garbageCollect/history.jsp");
			
//			1대1 문의 페이지
		}else if(target.equals("/mypage/inquiry.iq")) {
				result = new InquiryListController().execute(req, resp);
		
				
		}else if(target.equals("/mypage/inquiryDelete.iq")) {
			result = new InquiryDeleteController().execute(req, resp);
			
		}
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	}
	
}
