<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList"%>    
<%@ page import="java.util.*" %>
<%@ page import="com.shop.model.*" %>
<%@ page import="com.shop.biz.*" %>
<%@ page import="com.shop.view.*" %> 
<%
	ArrayList<GarmentVO> garList = (ArrayList<GarmentVO>) request.getAttribute("garList"); 
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
<script src="/jquery-latest.js"></script>
<link rel="stylesheet" href="/datatables.min.css" />
<script src="/datatables.min.js"></script>
</head>
<body>
<%@ include file="../admin_header.jsp" %>
<table class="table" id="tbb">
		<tr>
			<th class="item1">상품 분류</th>
			<th class="item2">상품 코드</th>
			<th class="item3">상품 이름</th>
			<th class="item4">상품 가격</th>
			<th class="item5">상품 이미지</th>
			
		</tr>

	<%
		for(int i=0; i<garList.size(); i++){
			GarmentVO gar = garList.get(i);
	%>
	<tr>
		<td class="item1"><%=gar.getGtype() %></td>
		<td class="item2"><a href="GetGarmentCtrl?gcode=<%=gar.getGcode() %>"><%=gar.getGcode() %></a></td>
		<td class="item3"><%=gar.getGname() %></td>
		<td class="item4"><%=gar.getGprice() %></td>
		<td class="item5"><img src="<%=gar.getGimg() %>" alt="" /></td>
		
	</tr>
	<%		
		}
	%>
	</table>

	<div class="btn-group">
	<a href="./garment/addGarment.jsp" class="btn btn-default">제품 등록</a>
	</div>
</div>
   <script>
   $(function(){
      $("#tbb").DataTable();
   });
   </script>
</body>
</html>