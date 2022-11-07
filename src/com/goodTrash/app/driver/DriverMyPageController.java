package com.goodTrash.app.driver;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.goodTrash.app.Execute;
import com.goodTrash.app.Result;
import com.goodTrash.app.driver.dao.DriverDAO;

public class DriverMyPageController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		int driverNumber = 0;
		Result result = new Result();
		DriverDAO driverDAO = new DriverDAO();
		
		try {
			driverNumber = (Integer)req.getSession().getAttribute("driverNumber");
			req.setAttribute("driverEmail", driverDAO.getDriverEmail(driverNumber));
			result.setPath("/app/riderService/my_page.jsp");
		} catch (Exception e) {
			result.setPath("/driver/login.driver");
		}
		
		return result;
	}

}
