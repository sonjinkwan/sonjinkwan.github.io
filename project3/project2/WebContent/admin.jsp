<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<style>
.admin_img1 img { width: 200px; height: 200px; }
.admin_img2 img { width: 200px; height: 200px; }
.admin_img3 img { width: 200px; height: 200px; }
.admin_img4 img { width: 200px; height: 200px; }
.admin_img1 { display: block; text-align: center; margin-top: 100px; }
.admin_img2 { float: right; margin-right: 500px; }
.admin_img3 { float: left; margin-left: 500px;}
.admin_img4 { text-align:center; margin-left: 500px;}
</style>
</head>
<body>
<%@ include file="admin_header.jsp" %>
<div class="admin">
<div class="admin_img1">
<a href="admin.jsp"><img src="./img/main.png" /></a>
<h2>관리자홈</h2>
</div>
<div class="admin_img2">
<a href="GetGarmentListCtrl"><img src="./img/product.png" /></a>
<h2>제품관리</h2>
</div>
<div class="admin_img3">
<a href="GetCustomListCtrl"><img src="./img/custom.png"  /></a>
<h2>회원관리</h2>
</div>
<div class="admin_img4">
<a href="GetQnaListCtrl"><img src="./img/notice.png"  /></a>
<h2>게시판관리</h2>
</div>
</div>
</div>
</body>
</html>