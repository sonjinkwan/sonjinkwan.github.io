<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>강릉 관광</title>
<%@ include file="./include/head.jsp" %>
<style>
    /* font-family: 'TTTogether'; */
    /* font-family: 'Noto Sans KR', sans-serif; */
    #item1 { background-image: url("./source/item1_bg.png");}
    #item2 { background-image: url("./source/item2_bg.jpg");}
    #item3 { background-image: url("./source/item3_bg.jpg");}
    #item4 { background-image: url("./source/item4_bg.png");}
    #item5 { background-image: url("./source/item5_bg.jpg");}
    #item8 { background-image: url("./source/item8_bg.png");}
    #item9 { background-image: url("./source/item9_bg.jpg");}
    #item10 { background-image: url("./source/item10_bg.jpg");}
    #item11 { background-color: #fff; }
    
    #vs { clear:both; position:relative; width: 100%; }
    .vs .img_box .vs_tit {text-align: center; padding-left:25%; margin-top: 100px;}
    .vs .img_box .vs_com {text-align: center; padding-left: 70px; }
    #vs .img_box { width: 400%; }
    #vs .img_box li { width: 25%; float:left;  } 
    #vs .img_box li a {display:block; position:relative; }
    #vs .img_box .vs_img { display:block; width: 100%; } 
    #vs .img_box li { position:relative;  }
    #vs .img_box .tit_box { position:absolute; top:100px; left: 0; z-index:4;
    padding:60px 280px; color:#fff; text-align: center; }
    #vs .img_box .vs_tit { font-family: 'TTTogether'; font-size:55px; font-weight:400; text-shadow:2px 2px 2px #333; }
    #vs .img_box .vs_com { font-size:18px; text-shadow:-1px -1px 2px #333; }
   .img_box{ clear:both; width: 100%; overflow-x: hidden; position:relative; }

         .owl-nav div {position:absolute; top:45vh; z-index: 10; width: 20px; height: 40px; background-color: #fff;
        text-indent: -10000px;} 
        .owl-next{ display: none;}
        .owl-prev{ display: none;}
        .owl-dots { position:absolute; bottom: 80px; width: 160px; height: 30px; left: 50%; margin-left: -80px;}
        .owl-dots div {display:block; width: 50px; height: 20px; float: left;
        background-color: rgb(14, 11, 11); border-radius: 12px; margin: 10px;}
        .owl-dots div.active{background: rgb(14, 15, 15);}
    


    .btn_box li button {  background-color:transparent; display:block; width: 40px; height: 280px; background-repeat: no-repeat; background-position: center center; 
    background-size:100% 100%; position:absolute; top:160px; z-index:5; 
    text-indent:-10000px; cursor:pointer; display:none; }
    .btn_box li.btn1 button { left:50px; background-image: url("./source/arrow1.png");}
    .btn_box li.btn2 button { right:50px; background-image: url("./source/arrow2.png");}

    #page1 { position:relative; background:url("${path }/include/img/bg.jpg") center top no-repeat #12c57d; background-size:120% auto; }
    .page:before { content:""; display:block; width: 440px; height: 440px; 
    position:absolute; background-color:#2ce65a; border-radius:50%; 
    left:50%; margin-left: -210px; margin-top: -490px;  opacity:0.7;   }
    .ptit_box { width: 540px; height: 480px; background-color:#0c6827; color:#fff; 
    text-align: center; padding-top: 330px; box-sizing: border-box; position:absolute; left: 50%; margin-left: -262px; border-radius:50%; margin-top: -492px;   }
    .pg_tit2 {  font-family: 'TTTogether'; font-size:36px; font-weight:400; }

    .col_tit { color:#fff; text-align: center; line-height:3; width: 100%; clear:both; margin-top: 28px; }
    .col_tit:after { content:""; display:block; width: 40px; height: 2px; 
background-color: #fff; clear:both; margin:0px auto; margin-bottom: 20px; }
    .col_com { color:#fff; padding: 20px 60px; font-size:14px; text-align: center;}
    #page1 .col_link, #page2 .col_link { display:block;  clear:both; float:none; width: 38px; height: 38px; 
    margin: 10px auto; background-image: url("${path }/include/img/family-arrow.png");
    border-radius:21px; border:2px solid #fff;  text-indent:-10000px;
background-repeat: no-repeat; background-position:center center; 
    transform: rotate(90deg); }

    .half_tit1 { font-size:24px; padding-left: 100px; padding-top:120px; color:#fff; text-shadow:1px 1px 2px #333; }
    .half_tit2 { font-size:48px; padding-left: 100px; padding-top:40px; color:#fff; 
        font-family: 'TTTogether';  font-weight:400; text-shadow:2px 2px 2px #333; }
    .half_com { color:#fff; padding:40px 100px; font-size:18px; text-shadow:1px 1px 1px #000, -1px -1px 1px #000; }


    #page2 { position:relative; 
        background-image:url("${path }/include/img/bg3.png");
        background-size:120% auto;
        background-position:center top, center bottom;
        background-repeat: no-repeat;
        background-color:#c0e6d7; 
    }
    #page2 .ptit_box { background-color: #163adb; }
    #item6 { width: 400%;  transition-delay:0.05s; 
    transition-duration:0.6s; }
    #item6 li { width: 25%; float:left; }
    .thumb_vs_wrap { position:absolute; right:0; bottom: 0; overflow:hidden; width: 300px; height: 277px; }
    #item7 { width: 400%; margin-left: 0; transition-delay:0.05s; 
    transition-duration:0.6s; }
    #item7 li { width: 25%; float:left; }
    #item7 li label { display:block; width: 18px; height: 36px; 
    background-repeat: no-repeat; background-position:center center; position:absolute; bottom:100px; text-indent:-10000px; cursor:pointer; }
    #item7 li label.lb1 { left:24px; background-image: url("${path }/include/img/fb-prev.png"); }
    #item7 li label.lb2 { right:24px; background-image: url("${path }/include/img/fb-next.png"); }
    #item7 .tbox { width: 140px; height: 140px; clear:both;overflow:hidden;   margin:20px auto; top: 50px;  border-radius:75px; border:3px solid #fff; }
    .thumb_vs_wrap #item7 li label { display:none; }
    .ra { display:none; }
    #ra1:checked ~ .thumb_vs_wrap #item7 .item1 label { display:block; }
    #ra2:checked ~ .thumb_vs_wrap #item7 .item2 label { display:block; }
    #ra3:checked ~ .thumb_vs_wrap #item7 .item3 label { display:block; }
    #ra4:checked ~ .thumb_vs_wrap #item7 .item4 label { display:block; }
    #ra1:checked ~ .thumb_vs_wrap #item7 { margin-left: 0; }
    #ra2:checked ~ .thumb_vs_wrap #item7 { margin-left:-100%; }
    #ra3:checked ~ .thumb_vs_wrap #item7 { margin-left:-200%; }
    #ra4:checked ~ .thumb_vs_wrap #item7 { margin-left:-300%; }
    #ra1:checked ~ #item6 { margin-left: 0; }
    #ra2:checked ~ #item6 { margin-left:-100%; }
    #ra3:checked ~ #item6 { margin-left:-200%; }
    #ra4:checked ~ #item6 { margin-left:-300%; }
    .col_vs_tit_box { position:absolute; top: 0; left: 0; }
    .col_vs_tit { clear:both; width: 100%;  padding-top: 50px;  }
    .col_vs_tit span { display:block; font-family: 'TTTogether';  font-weight:400; 
padding-left:120px; font-size:48px;}
    .col_vs_tit .row1 { color:#fefeff; }
    .col_vs_tit .row2 { color:#007bbf; }
    .col_vs_com { padding-left: 120px; padding-top: 30px; }
    #item8 .col_tit, #item9 .col_tit { line-height: 1.6; } 
    #item9 .col_com img { border:2px solid #fff; border-radius:100px; }
    #page2 .col_com { clear:both; float:none; width:auto; margin:0px auto; }
    .col_tit.black_txt { color:#000; line-height: 1.6; padding-top: 12px; }
    .col_tit.black_txt:after { background-color: #e3e704; }
    #item11 { position:relative; }
    #item11 .link_box { position:absolute; bottom: 0; left: 0; width: 100%; }
    #item11 .link_box li { display:block; width: 50%; float:left; }
    #item11 .link_box li a { display:block; line-height: 65px; height: 65px; color:#222; background-color: #e9ec10; padding-left:64px; font-size:14px; border-top:1px solid #fff; border-left:1px solid #fff; 
    background-repeat: no-repeat; background-position:18px center; }
    #item11 .link_box li:nth-child(2n+1) a { border-left:0px; }
    #item11 .link_box li.item1 a { background-image: url("./source/pg2_icon1.png"); }
    #item11 .link_box li.item2 a { background-image: url("./source/pg2_icon2.png"); }
    #item11 .link_box li.item3 a { background-image: url("./source/pg2_icon3.png"); }
    #item11 .link_box li.item4 a { background-image: url("./source/pg2_icon4.png"); }
   
    #page3 { background-image:url("source/bg32.png"), url("./source/bg3.png");
        background-position:center bottom, left top;
        background-repeat:no-repeat, repeat;
        background-color:#c0e6d7;  }
    #page3 .ptit_box { background-color: #819199;}
    .icon_lst { clear:both; width: 100%; padding-bottom: 50px; }
    .icon_lst:after { content:""; display:block; clear:both; }
    .icon_lst li { float:left; width: 10%; }
    .icon_lst li a { display:block; text-align: center; color:#222; font-size:14px; }
    .icon_lst li a .ico_box { display:block; width: 80px; height: 80px; 
    margin:10px auto; border:5px solid transparent; box-sizing:border-box; 
    border-radius:48px; overflow:hidden; }
    .icon_lst li a:hover { text-decoration:underline; }
    .icon_lst li a:hover .ico_box { border:5px solid #007bbf; }
    .icon_lst li a .ico_box img { display:block; width: 48px; height: 48px; margin: 0 auto; margin-top: 11px; }
    #page3 .news_lst { clear:both; background-color: #fff; width: 1200px; 
    margin: 0 auto; }
    #page3 .news_lst:after { content:""; display:block; clear:both; }
    #page3 .news_lst > .col6 { float:left; box-sizing:border-box; position:relative;
    height: 420px; height:390px; overflow:hidden; }
    .news_tit, .al_tit { font-size:24px; line-height: 3; padding-left: 24px; }
    .news_lst .more { display:block; width: 24px; height: 24px; 
    background-image: url("./source/ico_more.png"); background-repeat: no-repeat;
background-position:center center; position:absolute; top:24px; right:24px; z-index:10; }
    .noti_lst { clear:both; height: 390px; }
    .noti_lst li { clear:both; padding: 10px 24px; }
    .noti_lst li a { display:block; color:#666; font-size:16px; }
    .noti_lst li a .noti_tit { float:left; font-weight:400; width: 420px; padding-right: 20px; text-overflow: ellipsis; overflow:hidden; white-space:nowrap;}
    .noti_lst li a .noti_date { float:right; width: 110px; text-align:center; }
    .noti_lst li:hover a .noti_tit { text-decoration: underline; }
    .noti_lst li:hover a .noti_date { text-decoration: underline; }
    .noti_lst li.act:before { content:""; display:block; width: 80px; height: 80px;   background-image: url("./source/notice_act.png"); background-repeat: no-repeat; 
    background-position:center center; float:left;  }
    .noti_lst li:nth-child(2) { padding-top: 30px; }
    .noti_lst li.act a { float:left; width: 460px; overflow:hidden; }
    .noti_lst li.act a .noti_tit { width:auto; clear:both; font-size:20px; color:#333; }
    .noti_lst li.act a .noti_com { width:auto; clear:both;  border-bottom:1px solid #999; white-space: pre; width: 460px; display:-webkit-box; 
    -webkit-line-clamp:3; -webkit-box-orient: vertical; }

    .al_box { width: 199px; float:left; background-color: rgb(206, 117, 45); height: 390px; }
    .al_com { padding:8px 20px; }
    .al_btn_fr { clear:both; width:168px; margin: 20px auto; margin-top: 100px; }
    .al_btn_fr li { float:left; margin:8px; }
    .al_btn_fr li button { display:block; width: 40px; height: 40px; 
    background-repeat: no-repeat; background-position:center center; }
    .al_btn_fr li button.prev { background-image: url("${path }/include/img/fb-prev.png"); }
    .al_btn_fr li button.play { background-image: url("${path }/include/img/fb-stop.png");  }
    .al_btn_fr li button.next { background-image: url("${path }/include/img/fb-next.png");  }
    .photo_box { width: 399px; float:right; height:390px; overflow:hidden; }
    .photo_fr { width: 400%; }
    .photo_fr li { width: 25%; float:left; position:relative; }
    .photo_tit { position:absolute; top:90px; font-size:28px; color:#fff;
        text-shadow:1px 1px 2px #333, -1px -1px 2px #333; text-align: center; 
    width: 395px; }
    .photo_com { position:absolute; bottom:90px; font-size:20px; color:#fff; 
        text-shadow:1px 1px 2px #333, -1px -1px 2px #333; text-align: center; 
        width: 395px;  }
    .photo_img { display:block; width: 80%; height: auto; margin-top:70px; margin-left: 40px; }
    .sub { text-align: center; margin: 0 auto;}
    .vs{clear: both; width: 100%; }
    .img_box{ width: 400%; transition-duration:0.6s ;}
    .img_box li { width: 25%; float: left; }
        #ra1:checked ~ .img_box{margin-left: 0;}
        #ra2:checked ~ .img_box{margin-left: -100%;}
        #ra3:checked ~ .img_box{margin-left: -200%;}
        #ra4:checked ~ .img_box{margin-left: -300%;}
        .btn_box li label {display: block; width: 100px; height: 100px; position:absolute; background-color: #fff;
        top:120px; z-index:10;  }
        .btn_box li label.prev {left: 60px;}
        .btn_box li label.next {right: 60px;}
        .ra { display: none;}

        .vs { clear:both; width: 100%; overflow-x: hidden; position:relative; }
        .owl-nav div {position:absolute; top:45vh; z-index: 10; width: 20px; height: 40px; background-color: #fff;
        text-indent: -10000px;}
        .owl-next{ right: 80px;}
        .owl-prev{ left: 80px;}
        .owl-dots { position:absolute; bottom: 80px; width: 160px; height: 30px; left: 50%; margin-left: -80px;}
        .owl-dots div {display: block; width: 20px; height: 20px; float: left;
        background-color: #fff; border-radius: 12px; margin: 10px;}
        .owl-dots div.active{background: skyblue;}
        
    .col6 #item5 { background-image:url("${path }/include/img/5.jpg") ;}    
    .col6 #item4 { background-image:url("${path }/include/img/1.jpg") ;} 
    .col6 #item3 { background-image:url("${path }/include/img/3.jpg") ;}    
    .col6 #item2 { background-image:url("${path }/include/img/2.jpg") ;}    
    .col6 #item1 { background-image:url("${path }/include/img/4.jpg") ;}    
    .col_vs_tit_box { color: #fff;}
    
   </style>
</head>
<body>
<%@ include file="include/menu.jsp" %>
<div class="content fix">
        <figure class="vs" id="vs">
            <ul class="img_box owl-carousel">
                <li>
                    <a href="">
                        <img src="${path }/include/img/main1.jpg" alt="메인1" class="vs_img">
                        <div class="tit_box">
                            <h2 class="vs_tit">강릉여행 향기로 물들다</h2>
                            <p class="vs_com">맛있는 음식을 찾아서,마음을 힐링 할 수 있는 곳을 찾아서, 특별한 추억을 만들기 위해 사람들은 새로운 여행지를 찾습니다. 강릉으로 오세요!</p>  
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="${path }/include/img/main2.jpg" alt="메인2" class="vs_img">
                        <div class="tit_box">
                            <h2 class="vs_tit">강릉여행 향기로 물들다</h2>
                            <p class="vs_com">맛있는 음식을 찾아서,마음을 힐링 할 수 있는 곳을 찾아서, 특별한 추억을 만들기 위해 사람들은 새로운 여행지를 찾습니다. 강릉으로 오세요!</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="${path }/include/img/main3.jpg" alt="메인3" class="vs_img">
                        <div class="tit_box">
                            <h2 class="vs_tit">강릉여행 향기로 물들다</h2>
                            <p class="vs_com">맛있는 음식을 찾아서,마음을 힐링 할 수 있는 곳을 찾아서, 특별한 추억을 만들기 위해 사람들은 새로운 여행지를 찾습니다. 강릉으로 오세요!</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="${path }/include/img/main4.jpg" alt="메인4" class="vs_img">
                        <div class="tit_box">
                            <h2 class="vs_tit">강릉여행 향기로 물들다</h2>
                            <p class="vs_com">맛있는 음식을 찾아서,마음을 힐링 할 수 있는 곳을 찾아서, 특별한 추억을 만들기 위해 사람들은 새로운 여행지를 찾습니다. 강릉으로 오세요!</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="${path }/include/img/main5.jpg" alt="메인5" class="vs_img">
                        <div class="tit_box">
                            <h2 class="vs_tit">강릉여행 향기로 물들다</h2>
                            <p class="vs_com">맛있는 음식을 찾아서,마음을 힐링 할 수 있는 곳을 찾아서, 특별한 추억을 만들기 위해 사람들은 새로운 여행지를 찾습니다. 강릉으로 오세요!</p>
                        </div>
                    </a>
                </li>
            </ul>
            <ul class="btn_box">
                <li class="btn1"><button>이전</button></li>
                <li class="btn2"><button>다음</button></li>
            </ul>
        </figure>
        <script>
            $(function(){
                $(".owl-carousel").owlCarousel({
                    autoplay:true,  //자동 실행
                    loop:true,  //순환 반복
                    margin:0,   //아이템간 여백
                    nav:true    //제어바
                });
            });  
        </script>
        <section class="page fix" id="page1" style="">
            <div class="ptit_box">
                <h4 class="pg_tit1">지친 당신을 위한</h4>
                <h2 class="pg_tit2">힐링여행코스</h2>
            </div>
            <div class="page_wrap">
                <ul class="grid">
                    <li class="col6">
                        <div class="col6 col_item col277" id="item1">
                            <h3 class="col_tit">자연 관광</h3>
                            <p class="col_com">자연이 아름다운 강릉을 느껴보세요.</p>
                            <a href="" class="col_link">더보기</a>
                        </div>
                        <div class="col6 col_item col277" id="item2">
                            <h3 class="col_tit">관광안내소</h3>
                            <p class="col_com">강릉 관광을 안내 받을 수 있는 정보를 제공합니다.</p>
                            <a href="" class="col_link">더보기</a>
                        </div>
                        <div class="col6 col_item col277" id="item3">
                            <h3 class="col_tit">테마 여행</h3>
                            <p class="col_com">TV속 유명 관광지에 오셔서 드라마 속 주인공이 돼 보세요.</p>
                            <a href="" class="col_link">더보기</a>
                        </div>
                        <div class="col6 col_item col277" id="item4">
                            <h3 class="col_tit">강릉 길 여행</h3>
                            <p class="col_com">강릉 길을 따라 즐기실 수 있는 길 여행 코스를 만나보세요.</p>
                            <a href="" class="col_link">더보기</a>
                        </div>
                    </li>
                    <li class="col6">
                        <div class="half_box col_item col554" id="item5">
                            <h4 class="half_tit1">오죽헌</h4>
                            <h2 class="half_tit2">시립 박물관</h2>
                            <p class="half_com">신사임당과 율곡 이이가 태어난 유서깊은 장소</p>
                            <a href="" class="col_link half_more">더보기</a>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
        <section class="page fix" id="page2" style="background-color: #0dc5fd;" >
            <div class="ptit_box">
                <h4 class="pg_tit1">함께 즐기는</h4>
                <h2 class="pg_tit2">행복한 강릉 여행</h2>
            </div>
            <div class="page_wrap">
                <ul class="grid">
                    <li class="col6 col554">
                        <div class="half_box col_item col554" style="position:relative;">
                            <input type="radio" class="ra" name="ra" id="ra1" checked>
                            <input type="radio" class="ra" name="ra" id="ra2">
                            <input type="radio" class="ra" name="ra" id="ra3">
                            <input type="radio" class="ra" name="ra" id="ra4">
                            <ul class="pic_ban col554" id="item6">
                                <li class="item1">
                                    <img src="${path }/include/img/6.jpg" alt="선교장">
                                </li>
                                <li class="item2">
                                    <img src="${path }/include/img/7.jpg" alt="도깨비">
                                </li>
                                <li class="item3">
                                    <img src="${path }/include/img/8.jpg" alt="경포생태습지원">
                                </li>
                                <li class="item4">
                                    <img src="${path }/include/img/9.jpg" alt="경포해변">
                                </li>
                            </ul>   
                            <div class="thumb_vs_wrap">
                                <ul class="thumb_ban col6 col277 col_item" id="item7" style="background-color: #0beb70">
                                    <li class="item1">
                                        <h3 class="col_tit">선교장</h3>
                                        <label for="ra4" class="lb1">이전</label>
                                        <div class="tbox"><img src="${path }/include/img/77.jpg" alt="선교장"></div>
                                        <label for="ra2" class="lb2">다음</label>
                                    </li>
                                    <li class="item2">
                                        <h3 class="col_tit">도깨비</h3>
                                        <label for="ra1" class="lb1">이전</label>
                                        <div class="tbox"><img src="${path }/include/img/66.jpg" alt="도깨비"></div>
                                        <label for="ra3" class="lb2">다음</label>
                                    </li>
                                    <li class="item3">
                                        <h3 class="col_tit">경포생태습지원</h3>
                                        <label for="ra2" class="lb1">이전</label>
                                        <div class="tbox"><img src="${path }/include/img/88.jpg" alt="경포생태습지원"></div>
                                        <label for="ra4" class="lb2">다음</label>
                                    </li>
                                    <li class="item4">
                                        <h3 class="col_tit">경포해변</h3>
                                        <label for="ra3" class="lb1">이전</label>
                                        <div class="tbox"><img src="${path }/include/img/99.jpg" alt="경포해변"></div>
                                        <label for="ra1" class="lb2">다음</label>
                                    </li>
                                </ul>
                            </div>   
                            <div class="col_vs_tit_box">
                                <h2 class="col_vs_tit">
                                    <span class="row1">강릉, 지금 여기</span>
                                </h2>
                                <p class="col_vs_com">강릉의 유명 명소<br>
                                우리 함께 즐겨볼까요</p>
                            </div>
                        </div>
                    </li>
                    <li class="col6 col554">
                        <div class="col6 col277 col_item" id="item8" style="background-color: rgba(158, 158, 158, 0.973);">
                            <h3 class="col_tit">풍성한<br><span class="gold">모바일스탬프투어</span></h3>
                            <p class="col_com">
                                <img src="${path }/include/img/10.png" alt="투어로고">
                            </p>
                        </div>
                        <div class="col6 col277 col_item" id="item9" style="background-color: rgb(212, 133, 28);">
                            <h3 class="col_tit">익스트림<br>강릉 레일 바이크</h3>
                            <p class="col_com">
                                <img src="${path }/include/img/11.jpg" alt="레일바이크영상">
                            </p>
                        </div>
                        <div class="col6 col277 col_item" id="item10" style="background-color: rgb(25, 139, 192);">
                            <h3 class="col_tit">강릉의 해변</h3>
                            <p class="col_com">아름다운 강릉의<br>해변을 소개 드립니다.</p>
                            <a href="" class="col_link">더보기</a>
                        </div>
                        <div class="col6 col277 col_item" id="item11">
                            <h3 class="col_tit black_txt">당신을 위한<br>강릉여행</h3>
                            <ul class="link_box">
                                <li class="item1 col6"><a href="">음식</a></li>
                                <li class="item2 col6"><a href="">숙박</a></li>
                                <li class="item3 col6"><a href="">관광</a></li>
                                <li class="item4 col6"><a href="">레저</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
        <section class="page fix" id="page3">
            <div class="ptit_box">
                <h4 class="pg_tit1">소식 및 다양한 정보</h4>
                <h2 class="pg_tit2">강릉의 소식정보</h2>
            </div>
            <div class="page_wrap">
                <ul class="icon_lst">
                    <li class="item1">
                        <a href="">
                            <div class="ico_box"><img src="${path }/include/img/sec3Icon1.png" alt="관광안내지도"></div>
                            <span class="ico_txt">관광안내지도</span>
                        </a>
                    </li>
                    <li class="item2">
                        <a href="">
                            <div class="ico_box"><img src="${path }/include/img/sec3Icon2.png" alt="관광안내소"></div>
                            <span class="ico_txt">관광안내소</span>
                        </a>
                    </li>
                    <li class="item3">
                        <a href="">
                            <div class="ico_box"><img src="${path }/include/img/sec3Icon3.png" alt="관광지요금"></div>
                            <span class="ico_txt">관광지요금</span>
                        </a>
                    </li>
                    <li class="item4">
                        <a href="">
                            <div class="ico_box"><img src="${path }/include/img/sec3Icon4.png" alt="문화관광해설사"></div>
                            <span class="ico_txt">문화관광해설사</span>
                        </a>
                    </li>
                    <li class="item5">
                        <a href="">
                            <div class="ico_box"><img src="${path }/include/img/sec3Icon5.png" alt="거제관광여행사"></div>
                            <span class="ico_txt">강릉관광여행사</span>
                        </a>                            
                    </li>
                    <li class="item6">
                        <a href="">
                            <div class="ico_box"><img src="${path }/include/img/sec3Icon6.png" alt="교통정보"></div>
                            <span class="ico_txt">교통정보</span>
                        </a>
                    </li>
                    <li class="item7">
                        <a href="">
                            <div class="ico_box"><img src="${path }/include/img/sec3Icon7.png" alt="렌터카"></div>
                            <span class="ico_txt">렌터카</span>
                        </a>
                    </li>
                    <li class="item8">
                        <a href="">
                            <div class="ico_box"><img src="${path }/include/img/sec3Icon8.png" alt="외국인택시"></div>
                            <span class="ico_txt">외국인관광택시</span>
                        </a>
                    </li>
                    <li class="item9">
                        <a href="">
                            <div class="ico_box"><img src="${path }/include/img/sec3Icon9.png" alt="강릉서핑"></div>
                            <span class="ico_txt">강릉서핑</span>
                        </a>
                    </li>
                    <li class="item10">
                        <a href="">
                            <div class="ico_box"><img src="${path }/include/img/sec3Icon10.png" alt="강릉명물"></div>
                            <span class="ico_txt">강릉명물</span>
                        </a>
                    </li>
                </ul>
                <ul class="news_lst">
                    <li class="col6">
                        <h3 class="news_tit">새소식</h3>
                        <a href="" class="more"></a>
                        <ul class="noti_lst">
                            <li class="act">
                                <a href="">
                                    <h4 class="noti_tit">
                                        2022년 강릉 대축제 기획
                                    </h4>
                                    <p class="noti_com">공모 개요
• 사 업 명: 2022년 강릉 문화 대축제
• 공고 및 접수기간 : 2021. 12. 23.(목) ~ 2022. 1. 13.(목) 18:00
• 공모대상: 예비, 신규(1회차), 재지정(2회차), 고도화(3회차)
• 사업기간: 마을기업 약정체결 시 ~ 2022. 12. 31.
• 지원내용: 사업비(1억2천만원) 및 자립 지원(홍보, 판로, 교육, 컨설팅 등)
                                    </p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <h4 class="noti_tit">새소식 제목1 새소식 제목1 새소식 제목1 새소식 제목1 새소식 제목1 새소식 제목1 새소식 제목1 새소식 제목1 새소식 제목1 새소식 제목1</h4>
                                    <p class="noti_date">2021-12-23</p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <h4 class="noti_tit">새소식 제목2</h4>
                                    <p class="noti_date">2021-12-23</p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <h4 class="noti_tit">새소식 제목3</h4>
                                    <p class="noti_date">2021-12-23</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="col6" style="border:10px; border-color: grey;">
                        <div class="al_box">
                            <h3 class="al_tit">내가 찍은 강릉</h3>
                            <p class="al_com">한장에 담아낸 추억</p>
                            <ul class="al_btn_fr">
                                <li><button class="prev"></button></li>
                                <li><button class="play"></button></li>
                                <li><button class="next"></button></li>
                            </ul>
                        </div>
                        <div class="photo_box">
                            <ul class="photo_fr">
                                <li>
                                    <img src="${path }/include/img/13.jpg" alt="사진1" class="photo_img">
                                    <h4 class="photo_tit">안목이 좋네요</h4>
                                    <p class="photo_com">석양이 지는 안목해변</p>
                                </li>
                                <li>
                                    <img src="${path }/include/img/14.jpg" alt="사진2" class="photo_img">
                                    <h4 class="photo_tit">저무는 태양</h4>
                                    <p class="photo_com">붉은 노을과 해변</p>
                                </li>
                                <li>
                                    <img src="${path }/include/img/16.jpg" alt="사진3" class="photo_img">
                                    <h4 class="photo_tit">아름다운 순간</h4>
                                    <p class="photo_com">아득한 뒷모습</p>
                                </li>
                                
                            </ul>
                        </div>
                        
                    </li>
                </ul>
            </div>
        </section>
    </div>
<%@ include file="include/footer.jsp" %>
</body>
</html>
