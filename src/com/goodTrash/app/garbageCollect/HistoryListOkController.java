package com.goodTrash.app.garbageCollect;

import java.io.IOException;
import java.rmi.ServerException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodTrash.app.Execute;
import com.goodTrash.app.Result;
import com.goodTrash.app.garbageCollect.dao.GarbageCollectDAO;
import com.goodTrash.app.garbageCollect.vo.GarbageCollectVO;
import com.goodTrash.app.user.dao.UserDAO;

public class HistoryListOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		GarbageCollectDAO garbageCollectDAO = new GarbageCollectDAO();
		Result result = new Result();
		String temp = req.getParameter("page");
		HashMap<String, Integer> pageMap = new HashMap<String, Integer>();
		
		
		int userNumber = (Integer)req.getSession().getAttribute("userNumber");
		
		System.out.println(userNumber);
		
		int page = temp == null ? 1 : Integer.parseInt(temp);
		
//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 10;
		
//		한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 10;
		int startRow = (page - 1) * rowCount;
		
		int total = garbageCollectDAO.getTotal(userNumber); 
		
		int endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int)Math.ceil(total / (double)pageCount);
		
		boolean prev = startPage > 1; 
		endPage = endPage > realEndPage ? realEndPage : endPage;
		boolean next = endPage != realEndPage;
		
		pageMap.put("rowCount", rowCount);
		pageMap.put("startRow", startRow);
		pageMap.put("userNumber", userNumber);
		
		req.setAttribute("historys", garbageCollectDAO.historyList(pageMap));
		req.setAttribute("total", total);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		
		result.setPath("/app/garbageCollect/history.jsp");
		
		return result;
	}

}
