package com.goodTrash.app.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodTrash.app.Result;

public class AdminFrontController extends HttpServlet{
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
		
//		관리자 메인 페이지
		if(target.equals("/admin/index.admin")) {
			
//			관리자 스토어 관리페이지
		}else if(target.equals("/admin/storeMange.admin")) {
			result = new ProducListController().execute(req,resp);
			
//			관리자 판매현황 페이지
		}else if(target.equals("/admin/storeSaleInfo.admin")) {
			
//			관리자 차단회원 목록 페이지
		}else if(target.equals("/admin/userManageRejected.admin")) {
			
//			관리자 유저 조회 페이지
		}else if(target.equals("/admin/userManageSearch.admin")) {
			
//			관리자 기사 조회 페이지
		}else if(target.equals("/admin/driverManageSearch.admin")) {
			
//			관리자 환불 내역 페이지
		}else if(target.equals("/admin/refund.admin")) {
			
		}else if(target.equals("/admin/userSearch.admin")) {
			result = new UserSearchController().execute(req,resp);
			
			
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
