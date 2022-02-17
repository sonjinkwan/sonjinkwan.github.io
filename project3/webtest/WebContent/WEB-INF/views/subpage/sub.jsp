<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>강릉 관광</title>
    <%@ include file="../include/head.jsp" %>
    <!-- 파비콘 설정 -->
    <!-- <link rel="shortcut icon" href="${path}/include/img/favicon.ico"> -->
    <link rel="shortcut icon" type="image/x-icon" href="./img/favicon.ico" />
  
    <!-- 메타포 설정 -->
    <meta name="title" content="강릉관광 홈페이지">
    <meta name="keywords" content="강릉관광">
    <meta name="description" content="강릉관광 홈페이지">
    <!-- 오픈그래프 설정 -->
    <meta property="og:title" content="강릉 ">
    <meta property="og:type" content="website">
    <meta property="og:url" content="http://tour.gangneung.go.kr">
    <meta property="og:description" content=""/>
    <meta property="og:image" content="./source/site_thumb.jpg" />
    <!-- 폰트 로딩 -->
    <link href="http://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="${path}/include/css/fonts.css">
    <!-- 필수 API 로딩 -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <!-- 외부 스타일 연결 -->
    <link rel="stylesheet" href="${path}/include/css/common.css">
    <link rel="stylesheet" href="${path}/include/css/grid.css">
    <style>
    .vs { clear:both; width: 100%; height: 460px; 
    background-image:url("${path}/include/img/sub.jpg"); background-position:center center; 
background-repeat: no-repeat; }
    .content_wrap { clear:both; width: 1200px; margin: 0 auto; margin-top: -150px; }
    .sub_tit { height: 144px; line-height: 144px; font-size:22px; background-color: #2e70b4; text-align:center; width: 190px; float:left; color:#fff; }
    .bread_box { height: 119px; background-color: #fff; width: 980px; float:right; padding-left: 30px; padding-top: 24px; border-bottom:1px solid #999; 
    position:relative; }
    .cate_tit { color:#999; font-size:24px; }
    .bread { padding-top:24px; line-height: 1.6; font-size: 16px; }
    .bread a, .bread span { color:#999; }
    .bread span.cur { color:#222; font-weight:600;}
    .sub_tit_ico_box { position:absolute; right:30px; bottom:18px; }
    .sub_tit_ico_box li { float:left; margin-left:10px; }
    .sub_tit_ico_box li a { display:block; color:#fff; }
    .sub_tit_ico_box li a.ico { width: 34px; height: 34px; background-position:center center; background-repeat: no-repeat; border-radius:18px; border:1px solid #ccc; }
    .sub_tit_ico_box li a.ico.item1 { background-image: url("./source/ico_sns.gif"); }
    .sub_tit_ico_box li a.ico.item2 { background-image: url("./source/ico_print.gif"); }
    .sub_tit_ico_box li a.btn { border-radius:18px; padding: 6px 12px; width:auto; background-color: #999; }

    .leftbar { width:190px; float:left; min-height: 100vh; background-color: #f0f0f0; }
    .lnb { clear:both; }
    .lnb li { clear:both; margin: 5px 6px; border:1px solid #aaa; line-height: 52px;  }
    .lnb li a { color:#222; font-size:14px; padding-left:1em; }
    .lnb li.act a { color:#0e3257; font-size:18px; font-weight:bold; }
    .page_box { width:980px; float:right; padding-left: 30px; }

    .page { padding-top:40px; overflow:visible; height:auto; min-height:100vh; }
    .page_wrap {width: 960px; }
    .page_tit { padding-bottom: 36px; color:#666; }
    .sub_pic img { display:block; max-width:940px; height:auto;   }
    .pic_lst { clear: both; }
    .pic_lst li { float:left; margin-right: 15px; margin-bottom: 15px; }
    .pic_lst li img { max-width:460px; }
    .sub_pic_tit { clear:both; font-size:20px; line-height: 1.6; }
    .sub_pic_com { clear:both; font-size:14px; line-height: 1.6; padding-bottom: 24px; }
    .sub_full_tit { clear:both; color:#2e70b4; line-height: 3; font-size:32px; text-align: center; }
    .sub_con img { display:block; max-width:940px; }
    .sub_cate_com { clear:both; padding: 14px; font-style: 12px; color:#666; line-height:1.8; 
    width: 940px; font-weight:300; }
    .map_area { clear:both; position:relative;     overflow: hidden;
    width: 940px; }
    .map_tit, .sub_cate_tit { clear:both; padding-left: 32px; line-height: 2.4; font-size:20px; 
    background-repeat: no-repeat; background-position:left center; 
    background-image: url("./source/bull_h5.gif"); color:#134980; }

    #page2, #page3 { padding-top:130px; margin-top: 40px; border-top:5px solid deepskyblue; }
    .onepage { clear:both; width: 100%; padding-top: 50px; padding-bottom: 50px; }
    .onepage img { display:block; width: 100%; }
    .page { display:none; }
    .page:target { display:block; }
    </style>
</head>
<body>
<%@ include file="../include/menu.jsp" %>
<div class="wrap">
    

    
    <div class="content fix">
        <figure class="vs" id="vs">
            <!-- 배경 이미지로 채움 -->
        </figure>
        <div class="content_wrap">
            <div class="sub_box">
                <h2 class="sub_tit">관광명소</h2>
                <div class="bread_box">
                    <h3 class="cate_tit">강릉여행</h3>
                    <p class="bread"><a href="" class="home">홈</a> &gt; <a href="">관광명소</a> &gt; <span class="cur">TV속 강릉</span></p>
                    <ul class="sub_tit_ico_box">
                        <li><a href="" class="ico item1"></a></li>
                        <li><a href="" class="ico item2"></a></li>
                        <li><a href="" class="btn">정보수정요청</a></li>
                    </ul>
                </div>
            </div>
            <aside class="leftbar">
                <nav class="lnb">
                    <ul>
                        <li class="act"><a href="#page1">TV속 강릉</a></li>
                        <li><a href="#page2">자연관광</a></li>
                        <li><a href="#page3">문화관광</a></li>
                        <li><a href="#page4">레저ㆍ체험</a></li>
                        <li><a href="#page5">축제</a></li>
                    </ul>
                </nav>
            </aside>
            <div class="page_box">
                <section class="onepage">
                    <h2 class=""></h2>
                    <img src="${path }/include/img/tv2.png" alt="강릉여행"><br>
                </section>
                <section class="page" id="page1">
                    <h2 class="page_tit">TV속 강릉</h2>
                    <div class="page_wrap">
                        <figure class="sub_pic">
                            <img src="${path }/include/img/tv.png" alt="TV속 강릉">
                        </figure>
                    </div>    
                </section>    
                <section class="page" id="page2">
                    <h2 class="page_tit">자연관광</h2>
                    <div class="page_wrap">
                        <figure class="sub_pic">
                            <img src="${path }/include/img/beach.png" alt="자연관광">
                        </figure>
                    </div>    
                </section>
                <section class="page" id="page3">
                    <h2 class="page_tit">문화관광</h2>
                    <div class="page_wrap">
                        <figure class="sub_pic">
                            <ul class="pic_lst">
                                <li><img src="${path }/include/img/culture.png" alt="문화관광"></li>
                            </ul>
                        </figure>
                    </div>    
                </section>
                <section class="page" id="page4">
                        <h2 class="page_tit">레저ㆍ체험</h2>
                        <div class="page_wrap">
                            <figure class="sub_pic">
                                <ul class="course_lst">
                                    <li>
                                        <img src="${path }/include/img/leisure.png" alt="레저">
                                    </li>
                                </ul>
                            </figure>
                        </div>    
                </section>
                <section class="page" id="page5">
                        <h2 class="page_tit">축제</h2>
                        <div class="page_wrap">
                            <figure class="sub_pic">
                                <ul class="course_lst">
                                    <li>
                                        <img src="${path }/include/img/festival.png" alt="레저">
                                    </li>
                                </ul>
                            </figure>
                        </div>    
                </section>
            </div>
        </div>    
    </div>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>