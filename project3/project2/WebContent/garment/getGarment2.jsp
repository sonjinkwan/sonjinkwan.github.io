<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.shop.biz.*" %>
<%@ page import="com.shop.model.*" %>
<%@ page import="com.shop.view.*" %>
<%
	GarmentVO gar = (GarmentVO) request.getAttribute("gar");
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
<script src="../jquery-latest.js"></script>
</head>
<body>
<%@ include file="../header.jsp" %>
<form action="" method="post" name="frm">
	<table class="table">
			<tr>
			<th class="item1">상품 종류</th>
			<td><%=gar.getGtype() %></td>
			</tr>
			<tr>
			<th class="item2">상품코드</th>
			<td><%=gar.getGcode() %></td>
			</tr>
			<tr>
			<th class="item3">상품 이름</th>
			<td><input type="hidden" name="gname" id="gname" value="<%=gar.getGname() %>" />
			<p><%=gar.getGname() %></p>
			</td>
			</tr>
			<tr>
			<th class="item4">상품 가격</th>
			<td><input type="hidden" name="gprice" id="gprice" value="<%=gar.getGprice() %>" />
			<%=gar.getGprice() %></td>
			</tr>
			<tr>
			<th class="item5">상품 수량</th>
			<td><input type="number" name="gcnt" id="gcnt" max="<%=gar.getGcnt() %>" min="1" value="1"/></td>
			</tr>
			<tr>
			<th class="item5">상품 사이즈</th>
			<td><%=gar.getGsize() %></td>		
			</tr>
			<tr>
			<th class="item5">상품 이미지</th>
			<td><img src="<%=gar.getGimg() %>" alt="" /></td>
			</tr>
</table>
		<div class="btn-group">
			<a href="javascript:" onclick="payAction()" class="btn btn-primary">상품 주문</a>
			<a href="GetGarmentListCtrl2" class="btn btn-default">상품 목록</a>
			<a href="AddBasketCtrl?gcode=<%=gar.getGcode() %>&cid=<%=cid %>&gprice=<%=gar.getGprice() %>" class="btn btn-default">장바구니 담기</a>
		</div>
	</form>
		<script>
		function payAction(){
			var gcnt = document.getElementById("gcnt").value;
			var gprice = document.getElementById("gprice").value;
			var gname = document.getElementById("gname").value;
			location.href="./flex/flex.jsp?gcnt="+gcnt+"&gprice="+gprice+"&gname="+gname;
		}

		</script>
</body>
</html>