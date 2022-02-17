<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<%@ include file="../include/head.jsp" %>
<style>
	h2 { text-align: center; padding-top: 250px; }
	.onepage { clear:both; width: 100%; padding-top: 50px; padding-bottom: 50px; }
	.onepage img { display:block; width: 100%; }
	.page { display:none; }
	.page:target { display:block; }
	.form { clear:both; width: 100%; margin-bottom:20%; margin-top:5%;}
	.table { display:table; margin-left: 126px; margin-top:68px;  }
	.table_body { display:table-row-group; } 
	.reg_row { display:table-row; }  
	.reg_lb { display:table-cell; padding: 10px; width: 160px; } 
	.reg_input { display:table-cell; padding: 10px; } 
	.reg-control { display:block; width:600px; height: 42px; line-height: 42px; 
	padding-left: 14px; font-size:18px; }
	.reg_btn_group { padding: 40px; padding-left: 250px; padding-right: 162px; }
	
	.btn { display:block; line-height:32px; width:auto; padding: 5px 50px; 
	background-color:black; color:#fff; text-align: center; cursor:pointer; }
	.btn_left { float:left; }
	.btn_right { float:right; }
	.btn_mid { float:left; margin-left:24px; margin-right: 24px; }
</style>
</head>
<body>
<div class="wrap">
<%@ include file="../include/menu.jsp" %>
   <div class="page_wrap">
   <h2>회원가입</h2>
     <div class="join_frm_box">
         <form method="post" action="${path}/member/joinPro.do" class="form">
             <table class="table">
                 <tbody class="table_body">
                     <tr class="reg_row">
                         <th class="reg_lb"><label for="userid" class="reg-label">아이디</label></th>
                         <td class="reg_input">
                            <input type="text" id="userid" name="userid" class="reg-control" maxlength="13" required />
                        </td>
                    </tr>
                    <tr class="reg_row">
                        <th class="reg_lb"><label for="passwd" class="reg-label">비밀번호</label></th>
                        <td class="reg_input">
                            <input type="password" id="passwd" name="passwd" class="reg-control" maxlength="20" required />
                            <!-- <input type="hidden" name="passwd" value=""> -->
                        </td>
                    </tr>
                    <tr class="reg_row">
                        <th class="reg_lb"><label for="userPwChk" class="reg-label">비밀번호 확인 </label></th>
                        <td class="reg_input">
                            ​<input type="password" id="userPwChk" name="passwds2" class="reg-control" maxlength="20" required />
                        </td>
                    </tr>
                    <tr class="reg_row">
                        <th class="reg_lb"><label for="name" class="reg-label">이름</label></th>
                        <td class="reg_input">
                             <input type="text" id="name" name="name" class="reg-control" maxlength="13" required />
                         </td>
                     </tr>
                     <tr class="reg_row">
                         <th class="reg_lb"><label for="email" class="reg-label">이메일</label></th>
                         <td class="reg_input">
                             <input type="text" id="email" name="email" class="reg-control" maxlength="50" />
                         </td>
                     </tr>
                     <tr class="reg_row">
                         <td class="reg_btn_group" colspan="2">
                             <input type="submit" class="btn btn_left" id="reg_form_btn" value="회원가입" />
                             &nbsp;&nbsp;&nbsp;&nbsp;
                             <input type="reset" class="btn btn_right" id="reg_form_btn2" value="취소" />
                         </td>
                     </tr>
                 </tbody>
             </table>
         </form>
       </div>
 	</div>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>