<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>로그인 페이지</title>
<%@ include file="../include/head.jsp" %>
<style>
	h2 { text-align: center; }
    .onepage { clear:both; width: 100%; padding-top: 50px; padding-bottom: 50px; }
    .onepage img { display:block; width: 100%; }
    .page { display:none; }
    .page:target { display:block; }

    .form { clear:both; width: 100%; margin-left: 20%; }
    .from_wrap { display:table; margin-left: 70px; } 
    .form_group { display:table-row-group; } 
    .form_group tr { display:table-row; } 
    .form_group tr .control_wrap { display:table-cell; padding: 10px; } 
    .form-control { display:block; width: 500px; height: 36px; line-height: 36px; 
    padding-left: 14px; font-size:18px; }
    .btn { display:block; line-height:32px; width:auto; padding: 5px 40px; 
    background-color:black; color:#fff; text-align: center; cursor:pointer; }
	.btn-left { float:left; cursor: pointer; border-radius:10px;}
    .btn-right { float:right; cursor: pointer; border-radius:10px;}
    .btn-mid { float:left; margin-left:18px; margin-right: 18px; }
    </style>
</head>
<body>
<%@ include file="../include/menu.jsp" %>
    <div class="page_box">
        <section class="onepage">
            <div class="" style="height:20px"></div>
            <h2 class="page_tit">로그인</h2>
            <div class="page_wrap">
                <div class="login_frm_box">
                   <form action="${path}/member/loginPro.do" method="post" id="login_frm" class="form">
                       <table class="from_wrap">
                           <tbody class="form_group">
                               <tr class="form_row">
                                   <td class="control_wrap">
                                       <input type="text" class="form-control" name="userid" id="userid" placeholder="아이디를 입력하세요">
                                   </td>
                               </tr> 
                               <tr class="form_row">
                                   <td class="control_wrap">
                                       <input type="password" id="passwd" name="passwd" class="form-control" maxlength="20" placeholder="비밀번호 입력하세요" required />
                                   </td>
                               </tr> 
                               <tr class="form_row">
                                   <td class="control_wrap">
                                       <input type="submit" class="btn btn-left" value="로그인" id="login_submit" />
                                       &nbsp;&nbsp;&nbsp;&nbsp;
                                       <button type="button" class="btn btn-right" onclick="${path}/member/join.do">회원가입</button>
                                   </td>
                               </tr>
                           </tbody>
                       </table>
                   </form>
            </div>
        </section>
    </div>
    <%@ include file="../include/footer.jsp" %>
</body>
</html>
