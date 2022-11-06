package com.goodTrash.app.garbageCollect;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodTrash.app.Execute;
import com.goodTrash.app.Result;
import com.goodTrash.app.garbageCollect.dao.GarbageCollectDAO;
import com.goodTrash.app.garbageCollect.vo.GarbageCollectDTO;
import com.goodTrash.app.user.dao.UserDAO;

public class ReservationOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		req.setCharacterEncoding("UTF-8");
		
		GarbageCollectDAO garbageCollectDAO = new GarbageCollectDAO();
		UserDAO userDAO = new UserDAO();
		GarbageCollectDTO garbageCollectDTO = new GarbageCollectDTO();
		Result result = new Result();
		
		int userNumber = 0;
		
		try {
			userNumber = (Integer)req.getSession().getAttribute("userNumber");
			userDAO.getUserNumber(userNumber);
			
			garbageCollectDTO.setGarbageCollectName(req.getParameter("garbageCollectName"));
			garbageCollectDTO.setGarbageCollectPhoneNumber(req.getParameter("garbageCollectPhoneNumber"));
			garbageCollectDTO.setGarbageCollectZipcode(Integer.valueOf(String.format("%05d", Integer.valueOf(req.getParameter("garbageCollectZipcode")))));
			garbageCollectDTO.setGarbageCollectAddress(req.getParameter("garbageCollectAddress"));
			garbageCollectDTO.setGarbageCollectAddressDetail(req.getParameter("garbageCollectAddressDetail"));
			garbageCollectDTO.setGarbageCollectType(req.getParameter("garbageCollectType"));
			garbageCollectDTO.setGarbageCollectBoxCount(req.getParameter("garbageCollectBoxCount"));
			garbageCollectDTO.setGarbageCollectRequestDate(req.getParameter("garbageCollectRequestDate"));
			garbageCollectDTO.setGarbageCollectMemo(req.getParameter("garbageCollectMemo"));
			garbageCollectDTO.setGarbageCollectStatus("예약완료");
			garbageCollectDTO.setUserNumber(userNumber);		
			
			
			garbageCollectDAO.reservation(garbageCollectDTO);
			
			result.setRedirect(true);
			result.setPath(req.getContextPath() + "/garbageCollect/request.collect");
			
		}catch(Exception e) {
			result.setPath("/user/login.user");
		}
		
		return result;
	}

}
