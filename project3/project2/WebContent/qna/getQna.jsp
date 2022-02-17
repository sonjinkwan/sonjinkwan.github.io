<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.shop.biz.*" %>
<%@ page import="com.shop.model.*" %>
<%
	QnaVO qna = (QnaVO) request.getAttribute("qna");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 글 보기</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>
<%@ include file="../admin_header.jsp" %>
<form action="UpdateQnaCtrl" method="post" name="frm">
	<table class="table">
		<tr>
			<th class="item1">번호</th>
			<td><%=qna.getIdx() %></td>
			<input type="hidden" name="idx" value="<%=qna.getIdx() %>" />
			</tr>
			<tr>
			<th class="item2">작성자</th>
			<td><%=qna.getAuthor() %></td>
			</tr>
			<tr>
			<th class="item3">제목</th>
			<td><textarea name="title" id="title" cols="30" rows="1"><%=qna.getTitle() %></textarea></td>
			</tr>
			<tr>
			<th class="item4">내용</th>
			<td><textarea name="content" id="content" cols="90" rows="10"><%=qna.getContent() %></textarea></td>
			</tr>
			<tr>
			<th class="item5">작성일</th>
			<td><%=qna.getRegdate() %></td>
			</tr>
			<tr>
			<th class="item5">읽은횟수</th>
			<td><%=qna.getVisited() %></td>		
		</tr>
</table>
		<div class="btn-group">
			<input type="submit" class="btn btn-default" value="글 수정" />
			<a href="GetQnaListCtrl" class="btn btn-default">글 목록</a>
			<a href="DeleteQnaCtrl?idx=<%=qna.getIdx() %>" class="btn btn-default">글 삭제</a>
			<!-- <button onclick="func1(<%=qna.getIdx() %>)" class="btn btn-default">글 삭제</button> -->
		</div>
	</form>
	<!-- <script>
      function func1(data) {
         if(confirm("정말로 삭제하시겠습니까?")){
         location.href="DeleteInformCtrl?inum="+data;
         } else {
         return false();
         }
      }
   </script> -->
</body>
</html>