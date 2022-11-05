package com.goodTrash.app.garbageCollect;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodTrash.app.Result;

public class GarbageCollectFrontController extends HttpServlet {
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

// 		쓰레기수거 메인 요청 페이지로 	
		if(target.equals("/garbageCollect/request.collect")){
			
			System.out.println("몰라");
			result = new Result();
			result.setPath("/app/garbageCollect/request.jsp");
			
//			쓰레기 요청 내역 확인 페이지로  
		}else if(target.equals("/garbageCollect/requestCheck.collect")) {
			
//			쓰레기 수거 예약 페이지로 
		}else if(target.equals("/garbageCollect/reservation.collect")) {
			
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
