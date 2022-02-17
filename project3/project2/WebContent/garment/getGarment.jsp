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

</head>
<body>
<form action="UpdateGarmentCtrl" method="post" name="frm">
	<table class="table">
			<tr>
			<th class="item1">상품 종류</th>
			<td><%=gar.getGtype() %></td>
			<input type="hidden" name="gtype" value="<%=gar.getGtype() %>" />
			</tr>
			<tr>
			<th class="item2">상품코드</th>
			<td><%=gar.getGcode() %></td>
			</tr>
			<tr>
			<th class="item3">상품 이름</th>
			<td><textarea name="gname" id="gname" cols="30" rows="1"><%=gar.getGname() %></textarea></td>
			</tr>
			<tr>
			<th class="item4">상품 가격</th>
			<td><textarea name="gprice" id="gprice" cols="30" rows="1"><%=gar.getGprice() %></textarea></td>
			</tr>
			<tr>
			<th class="item5">상품 재고</th>
			<td><textarea name="gcnt" id="gcnt" cols="30" rows="1"><%=gar.getGcnt() %></textarea></td>
			</tr>
			<tr>
			<th class="item5">상품 사이즈</th>
			<td><textarea name="gsize" id="gsize" cols="30" rows="1"><%=gar.getGsize() %></textarea></td>		
			</tr>
				<tr>	
					<th class="item">상품 이미지</th>
					<td class="item">
						<input type="text" name="gimg" id="gimg"  value="<%=gar.getGimg() %>" />
						<input type="button" class="btn dtn-default" onclick="imgCheck()" value="이미지 업로드"/><br>
						<img src="<%=gar.getGimg() %>" id="proData" alt="제품사진" />
						<input type="hidden" name="proimg"/>
						<input type="hidden" name="imgck"/>
					</td>
				</tr>	
</table>
		<div class="btn-group">
			<input type="submit" class="btn btn-default" value="상품 수정" />
			<a href="GetGarmentListCtrl" class="btn btn-default">글 목록</a>
			<a href="DeleteGarmentCtrl?gcode=<%=gar.getGcode() %>" class="btn btn-default">글 삭제</a>
		</div>
	</form>
</body>
</html>