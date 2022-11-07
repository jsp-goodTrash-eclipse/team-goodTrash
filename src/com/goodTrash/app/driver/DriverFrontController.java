package com.goodTrash.app.driver;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodTrash.app.Result;

public class DriverFrontController extends HttpServlet{
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
		
		// driver 처음 시작 페이지
		if(target.equals("/goodTrash/driver.driver")) {
			result = new Result();
			result.setPath("/app/rider/index.jsp");
			
			// driver 회원가입 페이지
		}else if(target.equals("/driver/join.driver")) {
			result = new Result();
			result.setPath("/app/rider/join.jsp");
		
			// driver 회원가입후 로그인 창으로 이동
		}else if(target.equals("/driver/joinOk.driver")) {
			result = new DriverJoinOkController().execute(req,resp);
			
			// driver 이메일 체크하는 부분
		}else if(target.equals("/driver/driverCheckEmail.driver")) {
			result = new DriverCheckEmail().execute(req,resp);
			
			// driver 로그인 하는 페이지로 이동
		}else if(target.equals("/driver/login.driver")) {
			result = new DriverLoginController().execute(req,resp);
			
			// 로그인 확인 여부
		}else if(target.equals("/driver/loginOk.driver")) {
			result = new DriverLoginOkController().execute(req,resp);
			
			// 로그아웃 세션 초기화 및 쿠키를 위해 컨트롤러 타고 가도록 
		}else if(target.equals("/driver/logout.driver")) {
			result = new DriverLogoutController().execute(req,resp);
			
			// 기사 로그인 성공 후 기사 페이지로 이동 하도록 설정 
		}else if(target.equals("/driver/main.driver")) {
			result = new DriverMyPageController().execute(req , resp);
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
