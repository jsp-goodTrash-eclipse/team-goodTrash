package com.goodTrash.app.garbageCollect;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodTrash.app.Execute;
import com.goodTrash.app.Result;
import com.goodTrash.app.garbageCollect.dao.GarbageCollectDAO;
import com.goodTrash.app.garbageCollect.vo.GarbageCollectVO;
import com.goodTrash.app.user.dao.UserDAO;

public class ReservationOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		req.setCharacterEncoding("UTF-8");
		
		GarbageCollectDAO garbageCollectDAO = new GarbageCollectDAO();
		UserDAO userDAO = new UserDAO();
		GarbageCollectVO garbageCollectVO = new GarbageCollectVO();
		Result result = new Result();
		
		int userNumber = 0;
		
		try {
			userNumber = (Integer)req.getSession().getAttribute("userNumber");
			userDAO.getUserNumber(userNumber);
			
			garbageCollectVO.setGarbageCollectName(req.getParameter("garbageCollectName"));
			garbageCollectVO.setGarbageCollectPhoneNumber(req.getParameter("garbageCollectPhoneNumber"));
			garbageCollectVO.setGarbageCollectZipcode(Integer.valueOf(String.format("%05d", Integer.valueOf(req.getParameter("garbageCollectZipcode")))));
			garbageCollectVO.setGarbageCollectAddress(req.getParameter("garbageCollectAddress"));
			garbageCollectVO.setGarbageCollectAddressDetail(req.getParameter("garbageCollectAddressDetail"));
			garbageCollectVO.setGarbageCollectType(req.getParameter("garbageCollectType"));
			garbageCollectVO.setGarbageCollectBoxCount(req.getParameter("garbageCollectBoxCount"));
			garbageCollectVO.setGarbageCollectRequestDate(req.getParameter("garbageCollectRequestDate"));
			garbageCollectVO.setGarbageCollectMemo(req.getParameter("garbageCollectMemo"));
			garbageCollectVO.setGarbageCollectStatus("예약완료");
			garbageCollectVO.setUserNumber(userNumber);		
			
			
			garbageCollectDAO.reservation(garbageCollectVO);
			
			result.setRedirect(true);
			result.setPath(req.getContextPath() + "/garbageCollect/request.collect");
			
		}catch(Exception e) {
			result.setPath("/user/login.user");
		}
		
		return result;
	}

}
