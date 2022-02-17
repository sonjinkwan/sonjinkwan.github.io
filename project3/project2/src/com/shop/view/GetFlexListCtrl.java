package com.shop.view;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.biz.FlexDAO;
import com.shop.model.FlexVO;

@WebServlet("/GetFlexListCtrl")
public class GetFlexListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		FlexDAO dao = new FlexDAO();
		ArrayList<FlexVO> flexList;
		flexList = dao.getFlexList();
		
		request.setAttribute("flexList", flexList);
		RequestDispatcher view = request.getRequestDispatcher("/flex/getFlexList.jsp");
		view.forward(request, response);
		
	}

}
