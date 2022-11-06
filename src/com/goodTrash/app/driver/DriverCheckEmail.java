package com.goodTrash.app.driver;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodTrash.app.Execute;
import com.goodTrash.app.Result;
import com.goodTrash.app.driver.dao.DriverDAO;

public class DriverCheckEmail implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		DriverDAO driverDAO = new DriverDAO();
		String driverEmail = req.getParameter("driverEmail");
		
		resp.getWriter().print(driverDAO.driverCheckEmail(driverEmail));
		return null;
	}

}
