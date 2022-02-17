<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList"%>    
<%@ page import="java.util.*" %>
<%@ page import="com.shop.model.*" %>
<%@ page import="com.shop.biz.*" %>
<%@ page import="com.shop.view.*" %> 
<%
	ArrayList<CustomVO> customList = (ArrayList<CustomVO>) request.getAttribute("customList"); 
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>
<%@ include file="../admin_header.jsp" %>
<table class="table">
		<tr>
			<th class="item1">회원 아이디</th>
			<th class="item2">회원 이름</th>
			<th class="item3">회원 전화번호</th>
			<th class="item4">회원 이메일</th>
			
		</tr>

	<%
		for(int i=0; i<customList.size(); i++){
			CustomVO custom = customList.get(i);
	%>
	<tr>
		<td class="item1"><%=custom.getCid() %></td>
		<td class="item2"><a href="GetCustomCtrl?cid=<%=custom.getCid() %>"><%=custom.getCname() %></a></td>
		<td class="item3"><%=custom.getCtel() %></td>
		<td class="item4"><%=custom.getCemail() %></td>
		
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

</div>
</body>
</html>