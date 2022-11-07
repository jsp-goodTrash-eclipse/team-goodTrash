package com.goodTrash.app.driver;

import java.io.Console;
import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.goodTrash.app.Execute;
import com.goodTrash.app.Result;
import com.goodTrash.app.driver.dao.DriverDAO;
import com.goodTrash.app.driver.vo.DriverVO;
import com.mysql.cj.Session;

public class DriverLoginOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		System.out.println("2. Controller 들어옴");
		Result result = new Result();
		DriverVO driverVO = new DriverVO();
		DriverDAO driverDAO = new DriverDAO();
		int driverNumber = 0;
		HttpSession session = req.getSession();
		
		String driverEmail = req.getParameter("email");
		String driverPassword = req.getParameter("pw");
		String saveId = req.getParameter("save_id");
		
		System.out.println(driverEmail);
		System.out.println(driverPassword);
		
		driverVO.setDriverEmail(driverEmail);
		driverVO.setDriverPassword(driverPassword);
		
		try {
			driverNumber = driverDAO.driverLogin(driverVO);
			session.setAttribute("driverNumber", driverNumber);
			//로그인 성공
			if(saveId != null) {
				Cookie DriverEmailCookie = new Cookie("driverEmail",driverEmail);
				Cookie saveIdCookie = new Cookie("save_id" , saveId); 
				resp.addCookie(DriverEmailCookie);
				resp.addCookie(saveIdCookie);
			}
			else {
				String cookieCheck = req.getHeader("Cookie");
				Cookie[] cookies = req.getCookies();
				if(cookieCheck != null) {
					for(Cookie cookie : cookies) {
						if(cookie.getName().equals("save_id")) {
							cookie.setMaxAge(0);
							resp.addCookie(cookie);
						}
					}
				}
			}
			System.out.println(":로그인 성공들어옴");
			result.setPath("driver/main.driver");
			
		} catch (Exception e) {
			// 로그인 실패
			System.out.println("로그인실패 들어옴");
			result.setPath("/driver/login.driver?driverLogin=false");
		}
		return result;
	}

}
