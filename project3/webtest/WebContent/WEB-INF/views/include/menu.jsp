<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <div class="wrap">
<header class="hd_fix">
	<div class="hd_wrap">
	    <a class="logo" href="${path}/">
		    <img src="${path }/include/img/logo.png" alt="로고">
		    <h2 class="logo_tit">관광문화</h2>
		</a>
		<nav class="tnb">
                <ul>
            	<c:if test="${member == null }">
                <li><a href="${path}/member/login.do">로그인</a></li>
                <li><a href="${path}/member/join.do">회원가입</a></li>
                <li><a href="${path}/board/boardList.do">게시판</a></li>
                <li><a href="${path }/board/writer_page.do">글쓰기</a></li>
                </c:if>
                <c:if test="${member !=null }">
                <li><a href="${path}/member/logout.do">로그아웃</a></li>
                <li><a href="${path}/member/mypage.do?userid=${member.getUserid() }">마이페이지</a></li>
                </c:if>
                <c:if test="${member.userid == 'admin' }">
                <li><a href="${path}/board/boardList.do">게시판 관리</a></li>
                <li><a href="${path}/member/memberList.do">회원 관리</a></li>
                </c:if>
            </ul>
            </nav>
            <nav class="gnb">
                <ul>   
                    <li>
                        <a href="theme.html" class="dp1">테마여행</a>
                        <ul class="sub">
                            <li><a href="theme1.html">추천여행코스</a></li>
                            <li><a href="theme2.html">강릉 HOT PLACE </li>
                            <li><a href="theme3.html">강릉길여행</a></li>
                            <li><a href="theme4.html">해양관광의 도시</a></li>
                            <li><a href="theme5.html">가상관광</a></li>
                            <li><a href="theme6.html">웰니스관광</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="attraction.html" class="dp1">관광명소</a>
                        <ul class="sub">
                            <li><a href="${path}/subpage/sub.do">TV속 강릉</a></li>
                            <li><a href="attraction2.html#page2">자연관광</a></li>
                            <li><a href="attraction3.html#page3">문화관광</a></li>
                            <li><a href="attraction4.html#page4">레저ㆍ체험</a></li>
                            <li><a href="attraction5.html#page5">축제</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="beach.html" class="dp1">해수욕장</a>
                        <ul class="sub">
                            <li><a href="beach.html#page1">해변 20개소</a></li>  
                        </ul>
                    </li>
                    <li>
                        <a href="tourinfo.html" class="dp1">관광안내</a>
                        <ul class="sub">
                            <li><a href="info1.html">공지사항</a></li>
                            <li><a href="info2.html">음식</a>   </li>
                            <li><a href="info3.html">숙박</a>  </li>
                            <li><a href="info4.html">관광 홍보물 및 신청</a></li>
                            <li><a href="info5.html">문화관광 해설 예약</a></li>
                            <li><a href="info6.html">교통정보</a></li>
                            <li><a href="info7.html">관광안내소</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="now.html" class="dp1">강릉은지금</a>
                        <ul class="sub">
                            <li><a href="now1.html">생활관광</a></li>
                            <li><a href="now2.html">모바일스탬프투어</a></li>
                            <li><a href="now3.html">외국인 관광 택시</a></li>
                            <li><a href="now4.html">강릉서핑</a></li>
                            <li><a href="now5.html">강릉여행영상</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </header>

