package com.shop.view;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.biz.GarmentDAO;
import com.shop.model.GarmentVO;

@WebServlet("/GetGarmentListCtrl2")
public class GetGarmentListCtrl2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
		GarmentDAO dao = new GarmentDAO();
		ArrayList<GarmentVO> garList = dao.getGarmentList();
		request.setAttribute("garList", garList);
		RequestDispatcher view = request.getRequestDispatcher("/garment/getGarmentList2.jsp");
		view.forward(request, response);
	}

}
