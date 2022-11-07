package com.goodTrash.app.driver;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.goodTrash.app.Execute;
import com.goodTrash.app.Result;
import com.goodTrash.app.driver.dao.DriverDAO;
import com.goodTrash.app.driver.vo.DriverVO;

public class DriverJoinOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		Result result = new Result();
		DriverVO driverVO = new DriverVO();
		DriverDAO driverDAO = new DriverDAO();
		
		
		String driverEmail = req.getParameter("driverEmail");
		String driverPassword = req.getParameter("password");
		String driverArea = req.getParameter("delivery");
		String driverAccountBank = req.getParameter("driverAccountBank");
		String driverAccountNumber = req.getParameter("driverAccountNumber");
		
		driverVO.setDriverEmail(driverEmail);
		driverVO.setDriverPassword(driverPassword);
		driverVO.setDriverArea(driverArea);
		driverVO.setDriverAccountBank(driverAccountBank);
		driverVO.setDriverAccountNumber(driverAccountNumber);
		
		driverDAO.driverJoin(driverVO);
		
		result.setRedirect(true);
		result.setPath(req.getContextPath()+"/driver/login.driver");
		
		
		
		return result;
	}

}
