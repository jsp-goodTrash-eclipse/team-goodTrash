package com.goodTrash.app.driver;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodTrash.app.Execute;
import com.goodTrash.app.Result;

public class DriverJoinOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		
		String driverEmail = req.getParameter("driverEmail");
		String driverPassword = req.getParameter("password");
		String driverArea = req.getParameter("delivery");
		String driverAccountBank = req.getParameter("driverAccountBank");
		String driverAccountNumber = req.getParameter("driverAccountNumber");
		return null;
	}

}
