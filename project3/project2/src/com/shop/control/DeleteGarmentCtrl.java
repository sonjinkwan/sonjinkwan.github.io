package com.shop.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.biz.GarmentDAO;
import com.shop.model.GarmentVO;

@WebServlet("/DeleteGarmentCtrl")
public class DeleteGarmentCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String gcode = request.getParameter("gcode");
		int cnt = 0;
		GarmentVO vo = new GarmentVO();
		vo.setGcode(gcode);
		
		GarmentDAO dao = new GarmentDAO();
		cnt = dao.deleteGarment(vo);
		if(cnt>0) response.sendRedirect("GetGarmentListCtrl");
	}

}
