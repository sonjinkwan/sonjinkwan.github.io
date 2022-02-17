package com.shop.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.biz.GarmentDAO;
import com.shop.model.GarmentVO;

@WebServlet("/AddGarmentCtrl")
public class AddGarmentCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String gtype = request.getParameter("gtype");
		String gcode = request.getParameter("gcode");
		String gname = request.getParameter("gname");
		int gprice = Integer.parseInt(request.getParameter("gprice"));
		int gcnt = Integer.parseInt(request.getParameter("gcnt"));
		String gsize = request.getParameter("gsize");
		String gimg = request.getParameter("gimg");
		
		GarmentVO vo = new GarmentVO();
		vo.setGtype(gtype);
		vo.setGcode(gcode);
		vo.setGname(gname);
		vo.setGprice(gprice);
		vo.setGcnt(gcnt);
		vo.setGsize(gsize);
		vo.setGimg(gimg);
		
		GarmentDAO dao = new GarmentDAO();
		int cnt = dao.addGarment(vo);
		if (cnt!=0) {
			response.sendRedirect("GetGarmentListCtrl");
		} else {
			response.sendRedirect("/garment/addGarment.jsp");
		}
	}

}
