package com.shop.view;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.biz.QnaDAO;
import com.shop.model.QnaVO;

@WebServlet("/GetQnaListCtrl2")
public class GetQnaListCtrl2 extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      response.setContentType("text/html; charset=UTF-8");
      request.setCharacterEncoding("UTF-8");
      
	  QnaDAO dao = new QnaDAO();
      ArrayList<QnaVO> qnaList = dao.getQnaList();
      request.setAttribute("qnaList", qnaList);
      RequestDispatcher view = request.getRequestDispatcher("/qna/getQnaList2.jsp");
      view.forward(request, response);
   }
}