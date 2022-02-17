<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나이키. Just Do it. Nike.com</title>
<style>
.scroll{
     width: 1200px;
     overflow-x: scroll;
     white-space:nowrap;
      margin:0 auto;
	background-color:white;
   }
   .scroll::-webkit-scrollbar-thumb{
    height: 13%;
    background-color: rgb(120,120,120);
    border-radius: 10px;  
}
   .scroll img{
       width:300px;
       height:100%;
       marign-bottom:30px;
       
   }
   
h2 {text-align:center;}  
.mid-img { margin-left:22%;}
.scroll::-webkit-scrollbar{

    width: 6px;       
                
</style>
<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/main.css">
<link rel="stylesheet" href="./css/reset.css">
</head>
<body>
<%@ include file="header.jsp" %>
<div>
 <video class="vs" autoplay="autoplay" muted="muted" loop >
   					 <source src="./video/nike.mp4" type="video/mp4">
 </video>
 <br><br><br>
</div>
 
 <h2>Apparel Essentials</h2><br>
  <div class="scroll">
      <a href="outer.jsp"><img src="./img/padding2.jpg" /></a> 
      <a href="shoes.jsp"><img src="./img/padding1.jpg" /></a>
      <a href="outer.jsp"><img src="./img/cap2.jpg" /></a> 
      <a href="outer.jsp"><img src="./img/case1.jpg" /></a> 
      <a href="bottom.jsp"><img src="./img/jogger1.jpg" /></a> 
      <a href="shoes.jsp"><img src="./img/hoodie1.jpg" /></a>
      <a href="bottom.jsp"><img src="./img/man1.jpg" /></a> 
  </div>
  <br><br><br>
 
  
 <h2>Nike Airmax</h2><br>
 <div class="mid-img">
 <a href="shoes.jsp"><img src="./img/nikeorigin.gif"></a>
 </div>
 <br><br><br>
 <%@ include file="footer.jsp" %>
</body>

</html>
