<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="./css/reset.css">
<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/main.css">

<meta charset="UTF-8">
<title>헤더</title>

<%
	String cid = (String) session.getAttribute("cid");
	String cname = (String) session.getAttribute("cname");
%>
<div>
   <a href="admin_index.jsp"><img src="./img/logo.png" alt="" class="logo" /></a>
   <div class="wrap">
      <header class="hd">
         <nav class="gnb">
                  <ul>
                  	  <li><a href="admin.jsp" class="dp1">관리자 페이지</a></li>
                      <li><a href="GetGarmentListCtrl" class="dp1">제품관리</a></li>
                      <li><a href="GetCustomListCtrl" class="dp1">회원관리</a></li>  
                      <li><a href="GetQnaListCtrl" class="dp1">게시판관리</a></li> 
                      <li><a href="admin_index.jsp" class="dp1">메인페이지</a></li>  
                  </ul>
              </nav>
              <div>
	<%
	if(cid!=null && cname!=null) {	//로그인이 되어 있을 때
	%>
			<span><%=cname %>님 환영합니다</span>
			<a href="LogoutCtrl">로그아웃</a><br>
	<%		
		} else {
	%>
		<a href="login.jsp">로그인</a><br>
		<a href="join.jsp">회원가입</a><br>
		<a href="GetGarmentListCtrl2">전체상품</a>
	<%
		}
	%>
</div>
     </header>
    </div>
    </div>
 