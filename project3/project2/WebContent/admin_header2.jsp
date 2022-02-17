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
                      <li><a href="GetGarmentListCtrl2" class="dp1">아우터</a>
                            <ul>
                                <li><a href="GetGarmentListCtrl2">패딩</a></li>
                                <li><a href="GetGarmentListCtrl2">바람막이</a></li>
                            </ul>
                      </li>
                      <li><a href="GetGarmentListCtrl2" class="dp1">상의</a>
                            <ul>
                                <li><a href="GetGarmentListCtrl2">맨투맨</a></li>
                                <li><a href="GetGarmentListCtrl2">후드티</a></li>
                            </ul>
                      </li> 
                      <li><a href="GetGarmentListCtrl2" class="dp1">하의</a>
                            <ul>
                                <li><a href="GetGarmentListCtrl2">트레이닝</a></li>
                                <li><a href="GetGarmentListCtrl2">조거</a></li>
                            </ul>
                      </li>
                      <li><a href="GetGarmentListCtrl2" class="dp1">신발</a>
                            <ul>
                                <li><a href="GetGarmentListCtrl2">런닝화</a></li>
                                <li><a href="GetGarmentListCtrl2">조던</a></li>
                            </ul>
                      </li> 
                      <li><a href="GetGarmentListCtrl2" class="dp1">용품</a>
                            <ul>
                                <li><a href="GetGarmentListCtrl2">케이스</a></li>
                                <li><a href="GetGarmentListCtrl2">모자</a></li>
                            </ul>
                      </li>  
                  </ul>
              </nav>
              <div>
	<%
	if(cid!=null && cname!=null) {	//로그인이 되어 있을 때
	%>
			<span class="side"><%=cname %>님 환영합니다</span>
			<a href="LogoutCtrl">로그아웃</a><br>
			<a href="admin.jsp">관리자페이지</a><br>

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
 