package com.shop.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.biz.FlexDAO;
import com.shop.model.FlexVO;

@WebServlet("/AddFlexCtrl")
public class AddFlexCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String cid = request.getParameter("cid");
		String gcode = request.getParameter("gcode");
		int num = Integer.parseInt(request.getParameter("bcnt"));
		int money = Integer.parseInt(request.getParameter("money"));
		int czip = Integer.parseInt(request.getParameter("czip"));
		String caddr1 = request.getParameter("caddr1");
		String caddr2 = request.getParameter("caddr2");
		String fway = request.getParameter("fway");
		String faccount = request.getParameter("faccount");
		String fpw = request.getParameter("fpw");
		String fbank = request.getParameter("fbank");
		if(fpw == null) {
			fpw = "해당없음";
		}
		FlexVO vo = new FlexVO();
		vo.setCid(cid);
		vo.setGcode(gcode);
		vo.setBcnt(num);
		vo.setFbank(fbank);
		vo.setFway(fway);
		vo.setFaccount(faccount);
		vo.setFpw(fpw);
		
		FlexDAO dao = new FlexDAO();
		int cnt = dao.addFlex(vo);
		System.out.println(cnt);
		
		if (cnt > 0) {
			response.sendRedirect("GetGarmentListCtrl2");
		} else {
			response.sendRedirect("/");
		}
		
	}

}
