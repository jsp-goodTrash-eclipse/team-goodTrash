package com.goodTrash.app.user;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.jni.User;

import com.goodTrash.app.Execute;
import com.goodTrash.app.Result;
import com.goodTrash.app.user.dao.UserDAO;

public class CheckEmailController implements Execute{
	 @Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		 String userEmail = req.getParameter("userEmail");
		 UserDAO userDAO = new UserDAO();
		 resp.getWriter().print(userDAO.checkEmail(userEmail));
//		 Ajax 통신을 사용하면 자체적으로 응답을 해주기 때문에 리턴을하면 두번 응답하는 꼴이기 때문에 리턴 null
		return null;
	}
}
