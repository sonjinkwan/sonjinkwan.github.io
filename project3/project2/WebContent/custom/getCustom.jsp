<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.shop.biz.*" %>
<%@ page import="com.shop.model.*" %>
<%@ page import="com.shop.view.*" %>
<%
	CustomVO custom = (CustomVO) request.getAttribute("custom");
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
<form action="UpdateCustomCtrl" method="post" name="frm">
	<table class="table">
			<tr>
			<th class="item1">회원 아이디</th>
			<td><%=custom.getCid() %></td>
			<input type="hidden" name="cid" value="<%=custom.getCid() %>" />
			</tr>
			<tr>
			<th class="item2">회원 비밀번호</th>
			<td><textarea name="cpw" id="cpw" cols="30" rows="1"><%=custom.getCpw() %></textarea></td>
			</tr>
			<tr>
			<th class="item3">회원 이름</th>
			<td><textarea name="cname" id="cname" cols="30" rows="1"><%=custom.getCname() %></textarea></td>
			</tr>
			<tr>
			<th class="item4">회원 우편번호</th>
			<td><textarea name="czip" id="czip" cols="30" rows="1"><%=custom.getCzip() %></textarea></td>
			</tr>
			<tr>
			<th class="item5">회원 주소</th>
			<td><textarea name="caddr1" id="caddr1" cols="30" rows="1"><%=custom.getCaddr1() %></textarea></td>
			</tr>
			<tr>
			<th class="item5">상세주소</th>
			<td><textarea name="caddr2" id="caddr2" cols="30" rows="1"><%=custom.getCaddr2() %></textarea></td>		
			</tr>
			<tr>
			<th class="item5">회원 전화번호</th>
			<td><textarea name="ctel" id="ctel" cols="30" rows="1"><%=custom.getCtel() %></textarea></td>
			</tr>
			<tr>
			<th class="item5">회원 이메일</th>
			<td><textarea name="cemail" id="cemail" cols="30" rows="1"><%=custom.getCemail() %></textarea></td>
			</tr>
			<tr>
			<th class="item5">회원 생년월일</th>
			<td><textarea name="cbirth" id="cbirth" cols="30" rows="1"><%=custom.getCbirth() %></textarea></td>
			</tr>
</table>
		<div class="btn-group">
			<input type="submit" class="btn btn-default" value="회원정보 수정" />
			<a href="GetCustomListCtrl" class="btn btn-default">회원 목록</a>
			<a href="DeleteCustomCtrl?cid=<%=custom.getCid() %>" class="btn btn-default">회원 탈퇴</a>
		</div>
	</form>
</body>
</html>