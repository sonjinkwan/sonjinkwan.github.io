<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정</title>
<%@ include file="../include/head.jsp" %>
<style>
	h2 { text-align: center; padding-top: 40px; }
	.form { clear:both; width: 100%; }
	.table { display:table; margin-left: 510px; margin-top:68px;  }
	.table_body { display:table-row-group; } 
	.reg_row { display:table-row; }  
	.reg_lb { display:table-cell; padding: 10px; width: 160px; } 
	.reg_input { display:table-cell; padding: 10px; } 
	.reg-control { display:block; width:600px; height: 42px; line-height: 42px; 
	padding-left: 14px; font-size:18px; }
	.reg_btn_group { padding: 40px; padding-left: 250px; padding-right: 162px; }
	.btn { display:block; line-height:32px; width:auto; padding: 5px 40px; 
	background-color:black; color:#fff; text-align: center; cursor:pointer; }
	.btn_left { float:left; }
	.btn_right { float:right; }
	.btn_mid { float:left; margin-left:24px; margin-right: 24px; }
</style>
</head>
<body>
<div class="wrap">
<%@ include file="../include/menu.jsp" %>
	<div class="content">
	<h2>게시글 수정</h2>
		<form name="bdto" action="${path}/board/update.do" method="post" class="form">
			<table class="table">
				<tbody class="table_body">
					<tr class="reg_row">
						<th class="reg_lb"><label for="bno">글 번호</label></th>
						<td class="reg_input"><input type="text" name="bno" class="reg-control" size="80" value="${data.bno}" readonly /></td>
					</tr>
					<tr class="reg_row">
						<th class="reg_lb"><label for="title">제목</label></th>
						<td class="reg_input"><input type="text" name="title" class="reg-control" size="80" value="${data.title}" /></td>
					</tr>
					<tr class="reg_row">
						<th class="reg_lb"><label for="content">내용</label></th>
						<td class="reg_input"><textarea name="content" id="content" class="reg-control" cols="80" rows="8">${data.content}</textarea></td>
					</tr>
					<tr class="reg_row">
						<th class="reg_lb"><label for="writer">작성자</label></th>
						<td class="reg_input"><input type="text" name="writer" id="writer" class="reg-control" value="${data.writer }" /></td>
					</tr>
					<tr class="reg_row">
						<td colspan="2" class="reg_btn_group">
							<input type="submit" value="글 수정" class="btn btn_left"/>
							<input type="reset" value="취소" class="btn btn_right"/>
							<a href="${path}/board/boardList.do" class="btn btn_mid">글 목록</a>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>    
</body>
</html>