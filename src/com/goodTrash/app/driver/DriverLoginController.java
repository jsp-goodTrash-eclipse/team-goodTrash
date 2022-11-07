package com.goodTrash.app.driver;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodTrash.app.Execute;
import com.goodTrash.app.Result;

public class DriverLoginController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		Result result = new Result();
		String cookieCheck = req.getHeader("cookie");
		
		if(cookieCheck != null) {
			Cookie[] cookies = req.getCookies();
			for(Cookie cookie : cookies) {
				if(cookie.getName().equals("email")) {
					req.setAttribute("email", cookie.getValue());
				}
			}
		}
		result.setPath("/app/rider/login.jsp");
		return result;
	}

}
