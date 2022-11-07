package com.goodTrash.app.myPage;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialException;

import com.goodTrash.app.Execute;
import com.goodTrash.app.Result;
import com.goodTrash.app.inquiry.dao.InquiryDAO;
import com.goodTrash.app.inquiry.vo.InquiryVO;

public class InquiryListController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		InquiryDAO inquiryDAO = new InquiryDAO();
		Result result = new Result();
		
		req.setAttribute("inquirys", inquiryDAO.selectAll());
		
		result.setPath("app/mapage/inquiry.jsp");
		return result;
	}
}
