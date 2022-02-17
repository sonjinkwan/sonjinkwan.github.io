<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.*"%>
<%@ page import="com.shop.model.*"%>
<%@ page import="com.shop.biz.*"%>
<%@ page import="com.shop.view.*"%>
<%
	ArrayList<GarmentVO> garList = (ArrayList<GarmentVO>) request.getAttribute("garList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="https://unpkg.com/masonry-layout@4.2.2/dist/masonry.pkgd.min.js"></script>

</head>
<body>
	<%@ include file="../header.jsp"%>
	<div class="container" style="padding-top: 100px;">
		<div class="table" id="mason">
			<%
				for (int i = 0; i < garList.size(); i++) {
				GarmentVO gar = garList.get(i);
			%>
			<div style="border: 1px solid gray; ">
				<div>
					<a href="GetGarmentCtrl2?gcode=<%=gar.getGcode()%>"> <img
						src="<%=gar.getGimg()%>" alt="" /></a>
				</div>
				<div>
					제품명 :
					<%=gar.getGname()%>
				</div>
				<div>
					가격 :
					<%=gar.getGprice()%>
				</div>
			</div>
			<%
				}
			%>
		</div>
	</div>
	<script>
		//var container = document.querySelector('#mason');
		//var msnry = new Masonry(container);
		$("#mason").masonry();
	</script>
	<%@ include file="../footer.jsp"%>
</body>
</html>