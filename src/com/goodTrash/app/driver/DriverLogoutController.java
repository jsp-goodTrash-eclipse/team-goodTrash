package com.goodTrash.app.driver;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodTrash.app.Execute;
import com.goodTrash.app.Result;

public class DriverLogoutController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		Result result = new Result();
		req.getSession().invalidate();
		String cookieCheck = req.getHeader("cookie");
		String saveId = null;
		
		if(cookieCheck != null) {
			Cookie[] cookies = req.getCookies();
			for(Cookie cookie : cookies) {
				if(cookie.getName().equals("save_id")) {
					saveId = cookie.getValue();
				}
			}
			if(saveId == null) {
				for(Cookie cookie : cookies) {
					if(cookie.getName().equals("email")) {
						cookie.setMaxAge(0);
						resp.addCookie(cookie);
					}
				}
			}
		}
		
		result.setPath("app/rider/my_page.jsp");
		return result;
	}

}
