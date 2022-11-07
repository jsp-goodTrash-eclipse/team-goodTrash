package com.goodTrash.app.myPage;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodTrash.app.Execute;
import com.goodTrash.app.Result;
import com.goodTrash.app.inquiry.dao.InquiryDAO;

public class InquiryDeleteController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		int inquiryNumber = Integer.valueOf(req.getParameter("inquiryNumber"));
		
		new InquiryDAO().delete(inquiryNumber);
		
		return null;
	}

}
