<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
.tit {text-align: center;}
.frm fieldset {width: 200px; padding: 50px; margin: 20px auto;  }
.in_data { display:block; width:600px; height:48px; line-height: 48px; text-indent: 16px; margin:10px auto;}
.fr_wrap {text-align: center; margin: 70px;}
.in_btn { display: block; width: 150px; height: 48px; line-height: 48px; text-align: center;
background-color: #333; color:#fff; border:0; out-line:0; padding-bottom:10px; cursor: pointer; border-radius:10px;}
.fr_wrap span:first-child { float:left; }
.fr_wrap span:last-child { float:right; }
</style>
</head>
<body>
<%@ include file="header.jsp" %>
	<div class="content">
	<h2 class="tit">로그인</h2>
	<form action="LoginCtrl" method="post" class="frm" id="frm">
	<fieldset>
	<table>
		<tbody>
			<tr>
					<th><label for="cid"></label></th>
					<td><input type="text" name="cid" id="cid" placeholder="아이디를 입력하세요" class="in_data" required/></td>				
			</tr>
			<br>
			<br>
			<tr>
					<th><label for="cpw"></label></th>
					<td><input type="password" name="cpw" id="cpw" placeholder="비밀번호를 입력하세요" class="in_data" required /></td>				
			</tr>
		</tbody>
	</table>
		<ul class="fr_wrap">
			<span class="col_btn">
			<input type="submit" value="로그인" class="in_btn"/>
			</span>
			<span class="col_btn">
			<input type="reset" value="취소" class="in_btn"/>
			</span>
		</ul>
	</fieldset>
</form>
</div>
</body>
</html>