package com.goodTrash.app.user;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.goodTrash.app.Execute;
import com.goodTrash.app.Result;
import com.goodTrash.app.user.dao.UserDAO;
import com.goodTrash.app.user.vo.UserVO;

public class LoginOkController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		
		Result result = new Result();
		UserVO userVO = new UserVO();
		UserDAO userDAO = new UserDAO();
		int userNumber = 0;
		HttpSession session = req.getSession();
		
		String userEmail = req.getParameter("userEmail");
		String userPassword = req.getParameter("userPassword");
		String saveId = req.getParameter("save_id");
		
		userVO.setUserEmail(userEmail);
		userVO.setUserPassword(userPassword);
		
		try {
			userNumber = userDAO.login(userVO);
			session.setAttribute("userNumber", userNumber);
			// 로그인 성공
			if(saveId != null) {
				Cookie userEmailCookie = new Cookie("userEmail" , userEmail);
				Cookie saveIdCookie = new Cookie("save_id" , saveId);
				resp.addCookie(userEmailCookie);
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
			result.setPath("/user/mainPage.user");
			
			
		} catch (Exception e) {
			// 로그인 실패 
			result.setPath("/user/login.user?login=false");
		}
		
		return result;
		
	}
}
