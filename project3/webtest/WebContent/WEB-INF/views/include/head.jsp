<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="com.board.example.dto.*" %>
<c:set var="path" value="${ pageContext.request.contextPath}"/>
<%
	MemberDTO member = (MemberDTO) session.getAttribute("member");
%>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 파비콘 설정 -->
    <link rel="shortcut icon" type="image/x-icon" href="${path }/include/img/favicon.ico" />
    <!-- 메타포 설정 -->
    <meta name="title" content="강릉관광 홈페이지">
    <meta name="keywords" content="강릉관광">
    <meta name="description" content="강릉관광 홈페이지">
    <!-- 오픈그래프 설정 -->
    <meta property="og:title" content="강릉관광 홈페이지">
    <meta property="og:type" content="website">
    <meta property="og:url" content="http://tour.gangneung.go.kr">
    <meta property="og:description" content="강릉관광">
    <meta property="og:image" content="./source/site_thumb.jpg" />
    <!-- 폰트 로딩 -->
    <link href="http://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet" type="text/css">
    <!-- 필수 API 로딩 -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <script src="${path }/include/js/owl.carousel.js"></script>
    <script src="${path }/include/js/datatables.min.css"></script>
    <script src="${path }/include/js/datatables.min.js"></script>
    <script src="slick/slick.js"></script>
    <!-- 외부 스타일 연결 -->
    <link rel="stylesheet" href="reset.css">
    <link rel="stylesheet" href="${path}/include/css/common.css">
    <link rel="stylesheet" href="${path}/include/css/fonts.css">
    <link rel="stylesheet" href="${path}/include/css/grid.css">
    <link rel="stylesheet" href="typo.css">
    <link rel="stylesheet" href="${path }/include/css/owl.carousel.css">
	    

