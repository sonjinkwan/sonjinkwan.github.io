package com.shop.view;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.biz.GarmentDAO;
import com.shop.model.GarmentVO;


@WebServlet("/GetGarmentCtrl2")
public class GetGarmentCtrl2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
		String gcode = request.getParameter("gcode");
		
		GarmentVO vo = new GarmentVO();
		vo.setGcode(gcode);
		
		GarmentDAO dao = new GarmentDAO();
		GarmentVO gar = dao.getGarment(vo);

		if (gar !=null) {
			request.setAttribute("gar", gar);	
			RequestDispatcher view = request.getRequestDispatcher("/garment/getGarment2.jsp");
			view.forward(request, response);
			
		} else {
			response.sendRedirect("GetGarmentListCtrl");
			
		}
	}

}
