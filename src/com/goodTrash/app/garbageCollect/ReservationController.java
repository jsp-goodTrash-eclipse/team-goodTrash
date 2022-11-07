package com.goodTrash.app.garbageCollect;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodTrash.app.Execute;
import com.goodTrash.app.Result;
import com.goodTrash.app.garbageCollect.dao.GarbageCollectDAO;

public class ReservationController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		int userNumber = 0;
		Result result = new Result();
		GarbageCollectDAO garbageCollectDAO = new GarbageCollectDAO();
		try {
			userNumber = (Integer)req.getSession().getAttribute("userNumber");
			result.setPath("/app/garbageCollect/reservation.jsp");
			
		} catch (Exception e) {
			result.setPath("/user/login.user");
		}
		
		return result;
	}
}
