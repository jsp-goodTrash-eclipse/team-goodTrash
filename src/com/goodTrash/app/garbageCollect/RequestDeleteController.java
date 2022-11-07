package com.goodTrash.app.garbageCollect;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodTrash.app.Execute;
import com.goodTrash.app.Result;
import com.goodTrash.app.garbageCollect.dao.GarbageCollectDAO;

public class RequestDeleteController implements Execute {
 
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		Result result = new Result();
		int garbageCollectNum = Integer.valueOf(req.getParameter("garbageCollectNum")); 	
		GarbageCollectDAO garbageCollectDAO = new GarbageCollectDAO();
		garbageCollectDAO.delete(garbageCollectNum);
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/garbageCollect/history.collect");
		return result;
	}

}
