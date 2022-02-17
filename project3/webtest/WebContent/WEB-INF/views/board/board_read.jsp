<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>글 보기</title>
<%@ include file="../include/head.jsp" %>
<style>
	h2 { text-align: center; padding-top: 40px; }
	.table { display:table; margin: 70px auto; } 
	.table_body { display:table-row-group; } 
	.reg_row { display:table-row; }  
	.reg_lb { display:table-cell; padding: 10px; width: 160px; } 
	.reg_input { display:table-cell; padding: 10px; }  
	.reg-control { display:block; width:600px; height: 42px; line-height: 42px; 
	padding-left: 14px; font-size:18px; }
	.reg_btn_group { clear:both; width: 408px; margin-left: 782px; }
	
	.btn { display:block; line-height:32px; width:auto; padding: 5px 40px; 
	background-color:black; color:#fff; text-align: center; cursor:pointer; }
	.btn_left { float:left; }
	.btn_right { float:right; }
	.btn_mid { float:left; margin-left:24px; margin-right: 24px; }
	table {
     margin-left: 400px;   
      width: 50%;
      border: 3px solid #444444;
      border-collapse:separate;
      text-align: center;
    }
    th, td {
      border: 1px solid #444444;
      padding: 10px;
</style>
</head>
<body>
<%@ include file="../include/menu.jsp" %>
<div class="wrap">
	<div class="content">
		<h2 class="title">글 보기</h2>
		<table class="table">
			<tbody class="table_body">
				<tr class="reg_row">
					<th class="reg_lb">글 번호</th>
					<td class="reg_input">${data.bno}</td>
				</tr>
				<tr class="reg_row">
					<th class="reg_lb">글 제목</th>
					<td class="reg_input">${data.title}</td>
				</tr>
				<tr class="reg_row">
					<th class="reg_lb">글 내용</th>
					<td class="reg_input">${data.content}</td>
				</tr>
				<tr class="reg_row">
					<th class="reg_lb">글 작성자</th>
					<td class="reg_input">${data.writer}</td>
				</tr>
				<tr class="reg_row">
					<th class="reg_lb">작성일</th>
					<td class="reg_input">
					<fmt:formatDate value="${data.regdate}" pattern="yyyy-MM-dd HH:mm:ss"/>
					</td>
				</tr>
				<tr class="reg_row">
					<th class="reg_lb">조회수</th>
					<td class="reg_input"class="reg_input">${data.viewcnt}</td>
				</tr>
			</tbody>
		</table>
		<div class="reg_btn_group">
		<c:if test="${member.userid == 'admin'}">
			<div class="btn btn_left">
				<a href="${path}/board/updatepage?bno=${data.bno}" class="">수정</a>
			</div>
			<div class="btn btn_right">
				<a href="${path}/board/delete.do?bno=${data.bno}" class="">삭제</a>
			</div>
		</c:if>
			<div class="btn btn_mid">
				<a href="${path}/board/boardList.do" class="">글 목록</a>
			</div>	
		</div>
	</div>
<%@ include file="../include/footer.jsp" %>
</div>
</body>
</html>