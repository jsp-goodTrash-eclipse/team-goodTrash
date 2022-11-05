package com.goodTrash.app.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodTrash.app.Result;

public class UserFrontController extends HttpServlet{
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
		
		if(target.equals("/user/join.user")) {
			result = new Result();
			result.setPath("/app/user/join.jsp");
			
		}else if(target.equals("/user/joinOk.user")) {
			result = new JoinOkController().execute(req,resp);
			
//			이메일 체크하는 경로를 요청한다.
		}else if(target.equals("/user/checkEmail.user")) {
			result = new CheckEmailController().execute(req, resp);
				
			// 로그인 화면으로 쏴준다 
		}else if(target.equals("/user/login.user")) {
			result = new LoginController().execute(req, resp);
			
		}else if(target.equals("/user/loginOk.user")) {
			result = new LoginOkController().execute(req, resp);
			
			// 로그아웃
		}else if(target.equals("/user/logout.user")) {
			result = new LogoutController().execute(req, resp);
			
			// 닉네임 중복 검사
		}else if(target.equals("/user/nicknameCheck.user")) {
			result = new CheckNicknameController().execute(req , resp);
			
			// 로그인 성공후 메인페이지로 이동한다.
		}else if(target.equals("/user/mainPage.user")) {
			result = new Result();
			result.setPath("/app/mainPage/main.jsp");
			
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
