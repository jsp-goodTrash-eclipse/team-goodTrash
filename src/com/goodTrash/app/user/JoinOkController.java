package com.goodTrash.app.user;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodTrash.app.Execute;
import com.goodTrash.app.Result;
import com.goodTrash.app.user.dao.UserDAO;
import com.goodTrash.app.user.vo.UserVO;

public class JoinOkController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		Result result = new Result();
		UserVO userVO = new UserVO();
		UserDAO userDAO = new UserDAO();
		
		String userPassword = req.getParameter("userPassword");
		String userEmail = req.getParameter("userEmail");
		String userNickname = req.getParameter("userNickname");
		String userRecommendName = req.getParameter("userRecommendName");
		
		userVO.setUserPassword(userPassword);
		userVO.setUserEmail(userEmail);
		userVO.setUserNickname(userNickname);
		userVO.setUserRecommendName(userRecommendName);
		
		userDAO.join(userVO);
		
		// redirect 일때는 req.getContextPath()를 붙여 준다. 
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/user/login.user");
		
		return result;
	}
}
