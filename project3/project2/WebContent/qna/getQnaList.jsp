<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList"%>    
<%@ page import="java.util.*" %>
<%@ page import="com.shop.model.*" %>
<%@ page import="com.shop.biz.*" %>
<%@ page import="com.shop.view.*" %> 
<%
	ArrayList<QnaVO> qnaList = (ArrayList<QnaVO>) request.getAttribute("qnaList"); 
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="/jquery-latest.js"></script>
<link rel="stylesheet" href="/datatables.min.css" />
<script src="/datatables.min.js"></script>
</head>
<body>
<%@ include file="../admin_header.jsp" %>
  <div class="container">
      <h2 class="tit">공지사항 목록</h2>
      <form action="" method="post" id="qna">
            <table class="table" id="qna">
               <tr>
                  <td>
                        <select name="searchType" id="">
                           <option value="intit">제목</option>
                           <option value="incon">내용</option>
                        </select>
                        <input type="text" name="searchKeyword" />
                        <input type="submit" value="검색"/>
                  </td>
               </tr>
            </table>
      </form>
	<table class="table">
		<tr>
			<th class="item1">번호</th>
			<th class="item2">작성자</th>
			<th class="item3">제목</th>
			<th class="item4">작성일</th>
			<th class="item5">읽은횟수</th>
		</tr>

	<%
		for(int i=0; i<qnaList.size(); i++){
			QnaVO qna = qnaList.get(i);
	%>
	<tr>
		<td class="item1"><%=qna.getIdx() %></td>
		<td class="item2"><%=qna.getAuthor() %></td>
		<td class="item3"><a href="GetQnaCtrl?idx=<%=qna.getIdx() %>"><%=qna.getTitle() %></a></td>
		<td class="item4"><%=qna.getRegdate() %></td>
		<td class="item5"><%=qna.getVisited() %></td>
	</tr>
	<%		
		}
	%>
	</table>

	<nav>
		<ul class="pagenation">
			<li><a href=""><span arial-hidden="true">&laquo;</span></a></li>
			<li><a href=""></a>1</li>
			<li><a href=""><span arial-hidden="true">&raquo;</span></a></li>
		</ul>		
	</nav>
	<div class="btn-group">
	<a href="./qna/addQna.jsp" class="btn btn-default">글작성</a>
	</div>
</div>
   <script>
   $(function(){
      $("#qna").DataTable();
   });
   </script>
</body>
</html>