package com.goodTrash.app.user;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodTrash.app.Execute;
import com.goodTrash.app.Result;
import com.goodTrash.app.user.dao.UserDAO;

public class CheckNicknameController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		String userNickname = req.getParameter("userNickname");
		UserDAO userDAO = new UserDAO();
		resp.getWriter().print(userDAO.checkNickname(userNickname));
		return null;
	}

}
