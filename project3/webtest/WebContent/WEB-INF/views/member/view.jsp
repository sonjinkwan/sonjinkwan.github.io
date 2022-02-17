<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 상세 보기</title>
<%@ include file="../include/head.jsp" %>
<style>
	h2 { text-align: center; padding-top: 15%; }
	.form { clear:both; width: 100%; margin-bottom:60px;}
	.table { display:table; margin-left: 500px; margin-top:68px; border-collapse:collapse; } 
	.table_body { display:table-row-group; } 
	.reg_row { display:table-row; } 
	.reg_lb { display:table-cell; padding: 10px; width: 160px; }  
	.reg_input { display:table-cell; padding: 10px; } 
	.reg-control { display:block; width:600px; height: 42px; line-height: 42px; 
	padding-left: 14px; font-size:18px; }
	.reg_btn_group { padding: 20px; padding-left: 90px; padding-right: 162px; }
	.btn { display:block; line-height:32px; width:auto; padding: 5px 40px; 
	background-color:black; color:#fff; text-align: center; cursor:pointer; }
	.btn_left { float:left; border-radius:10px; }
	.btn_right { float:right; border-radius:10px; }
	.btn_mid { float: none; width: 60px;margin: 25px auto; border-radius:10px;}
	.top { clear:both; float: right; padding-right: 200px; }
    .tit { text-align: center;}
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
    }
	
</style>
</head>
<body>
<div class="wrap">
<%@ include file="../include/menu.jsp" %>
<h2>회원 정보 관리</h2>
<form name="dto" action="${path}/updateMember.do" method="post" class="form">
	<table class="table">
		<tbody class="table_body">
			<tr class="reg_row">
				<th class="reg_lb"><label for="userid">아이디</label></th>
				<td class="reg_input"><input type="text" name="userid" class="reg_control" size="80" value="${data.userid}" readonly /></td>
			</tr>
			<tr class="reg_row">
				<th class="reg_lb"><label for="passwd">비밀번호</label></th>
				<td class="reg_input"><input type="text" name="passwd" class="reg_control" size="80" value="${data.passwd}" /></td>
			</tr>
			<tr class="reg_row">
				<th class="reg_lb"><label for="name">이름</label></th>
				<td class="reg_input"><input type="text" name="name" class="reg_control" size="80" value="${data.name}" /></td>
			</tr>
			<tr class="reg_row">
				<th class="reg_lb"><label for="email">이메일</label></th>
				<td class="reg_input"><input type="text" name="email" class="reg_control" size="80" value="${data.email}" /></td>
			</tr>
			<tr class="reg_row">
				<th class="reg_lb">가입일</th>
				<td class="reg_input">
				<fmt:formatDate value="${data.regdate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
			</tr>
			<tr class="reg_row">
				<td colspan="2" class="reg_btn_group">
					<input type="submit" value="회원 정보 수정" class="btn btn_left"/>
					<input type="reset" value="취소" class="btn btn_right"/>
					<a href="${path}/member/out.do?userid=${data.userid}" class="btn btn_mid">회원탈퇴</a>
				</td>
			</tr>
		</tbody>
	</table>
</form>
<%@ include file="../include/footer.jsp" %>
</div>
</body>
</html>