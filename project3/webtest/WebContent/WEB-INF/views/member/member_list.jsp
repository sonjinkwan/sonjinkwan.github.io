<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원목록</title>
<%@ include file="../include/head.jsp" %>
<style>
	h2 { text-align: center; padding-top: 50px; }
	table.dataTable tbody th, table.dataTable tbody td { text-align: center; }
	.dataTables_wrapper { width : 1200px; margin: 100px auto; }
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
	<h2 class="title">회원 목록</h2>
		<table class="table" id="data">
			<thead>
				<tr>
					<th>아이디</th>
					<th>이름</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="row">
				<tr>
					<td>${row.userid}</td>
					<td><a href="${path}/member/view.do?userid=${row.userid}">${row.name}</a></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
<%@ include file="../include/footer.jsp" %>
</div>
	<script>
		$( document ).ready(function() {
			$("#data").DataTable();
		});
	</script>
</body>
</html>