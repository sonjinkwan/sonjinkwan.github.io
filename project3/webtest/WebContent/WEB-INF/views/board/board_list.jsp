<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>게시판 목록</title>
<%@ include file="../include/head.jsp" %>
<style>
	h2 { text-align: center; padding-top: 250px; }
	.blank { clear:both; float:none; width:100%; height:60px; } 
	.dataTables_wrapper { width : 1200px; margin: 100px auto; }
	table.dataTable tbody th, table.dataTable tbody td { text-align: center; }
	.btn { display:block; line-height:32px; width:50px; padding: 5px 40px; margin: 30px auto;
	background-color:black; color:#fff; text-align: center; cursor:pointer; }
	table {
     margin-left: 400px;   
      width: 50%;
      border: 3px solid #444444;
      border-collapse:separate;
      text-align: center;
    }
    th, td {
      border: 1px solid #444444;
      padding: 10px;
</style>
</head>
<body>
<div class="wrap">
	<%@ include file="../include/menu.jsp" %>
	<h2 class="title">게시판 목록</h2>

	<table class="table" id="data">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>작성일자</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="row">
			<tr>
				<td>${row.bno}</td>
				<td><a href="${path}/board/read.do?bno=${row.bno}">${row.title}</a></td>
				<td>${row.writer}</td>
				<td>
					<fmt:formatDate value="${row.regdate}" pattern="yyyy-MM-dd"/>
				</td>
				<td>${row.viewcnt}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
			<a href="${path}/board/writer_page.do" class="btn">글쓰기</a>
	<%@ include file="../include/footer.jsp" %>
</div>
	<script>
		$( document ).ready(function() {
			$("#data").DataTable();
		});
	</script>
</body>
</html>