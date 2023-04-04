<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=1200, user-scalable=yes" >
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<title>명동대성당</title>
<link rel="stylesheet" href="http://www.mdsd.or.kr/theme/basic/css/animation.css">
<link rel="stylesheet" href="http://www.mdsd.or.kr/skin/latest/basic_li/style.css?ver=161022">
<link rel="stylesheet" href="http://www.mdsd.or.kr/theme/basic/css/default.css">
<!--[if lte IE 8]>
<script src="http://www.mdsd.or.kr/js/html5.js"></script>
<![endif]-->
<script>
// 자바스크립트에서 사용하는 전역변수 선언
var g5_url       = "http://www.mdsd.or.kr";
var g5_bbs_url   = "http://www.mdsd.or.kr/bbs";
var g5_is_member = "";
var g5_is_admin  = "";
var g5_is_mobile = "";
var g5_bo_table  = "";
var g5_sca       = "";
var g5_editor    = "";
var g5_cookie_domain = "";
</script>
<script src="http://www.mdsd.or.kr/js/jquery-1.8.3.min.js"></script>
<script src="http://www.mdsd.or.kr/js/jquery.menu.js"></script>
<script src="http://www.mdsd.or.kr/js/common.js"></script>
<script src="http://www.mdsd.or.kr/js/wrest.js?ver=20230404"></script>


<meta name="robots" content="ALL" />
<meta name="author" content="www.mdsd.or.kr" /> 
<meta name="og:title" content="명동대성당" /> 
<meta name="og:description" content="천주교서울대교구 주교좌명동대성당" />
<meta property="og:image" content="http://www.mdsd.or.kr/img/logo.png"/> 

</head>
<body>
<div id="_overLayer_"></div>

<div id="totalWrap" >

<!-- 상단 시작 { -->
<div id="hd"  >
    <h1 id="hd_h1">명동대성당</h1>

    <div id="skip_to_container"><a href="#container">본문 바로가기</a></div>

    
<!-- 팝업레이어 시작 { -->
<div id="hd_pop">
    <h2>팝업레이어 알림</h2>

<span class="sound_only">팝업레이어 알림이 없습니다.</span></div>

<script>
$(function() {
    $(".hd_pops_reject").click(function() {
        var id = $(this).attr('class').split(' ');
        var ck_name = id[1];
        var exp_time = parseInt(id[2]);
        $("#"+id[1]).css("display", "none");
        set_cookie(ck_name, 1, exp_time, g5_cookie_domain);
    });
    $('.hd_pops_close').click(function() {
        var idb = $(this).attr('class').split(' ');
        $('#'+idb[1]).css('display','none');
    });
    $("#hd").css("z-index", 1000);
});
</script>
<!-- } 팝업레이어 끝 -->
		<link rel="stylesheet" href="http://www.mdsd.or.kr/theme/basic/css/main.css">
<script type="text/javascript" src="/js/jquery.bxslider.js"></script>
<script type="text/javascript" src="/js/jquery.aw-showcase.js"></script>
<script src="/js/slides.min.jquery.js"></script>
<script src="/js/ui.js" type="text/javascript"></script>

<script type="text/javascript">
$(document).ready(function(e) {
	 $('.gnb_1dli').mouseover(function(){ 
		var idx = $(this).attr('meIdx');
		$('#snb_wrap .wrap').hide();
		$('#snbWrap'+idx).show();
		$('#snb_wrap').slideDown(100);
    }); 

	/*
    $('#gnb_1dul').mouseover(function(){ 
		$('#snb_wrap').slideDown(100);
    }); 
	*/
    $('#snb_wrap').mouseover(function(){ 
	    $('#snb_wrap').show(); 
    });

	$('#mtopArea').mouseover(function(){ 
	    $('#snb_wrap').slideUp(); 
    }); 

	$('#wrapper').mouseover(function(){ 
	    $('#snb_wrap').slideUp(); 
    }); 
    $('#hd_wrapper').mouseover(function(){ 
	    $('#snb_wrap').slideUp(); 
    }); 
	$('#locationArea').mouseover(function(){ 
	    $('#snb_wrap').slideUp(); 
    }); 
    $('#sVisualA').mouseover(function(){ 
	    $('#snb_wrap').slideUp(); 
    }); 
    $('#wrapper').mouseover(function(){ 
	    $('#snb_wrap').slideUp(); 
    }); 
}); 

 $( document ).ready( function() {
        var jbOffset = $( '#gnb_bg' ).offset();
        $( window ).scroll( function() {
          if ( $( document ).scrollTop() > jbOffset.top ) {
       //     $( '#gnb_bg' ).addClass( 'gnbFixed' );
          }
          else {
      //      $( '#gnb_bg' ).removeClass( 'gnbFixed' );
          }
        });
      } );

</script>
<div id="tlog_naviA">
    <nav id="gnb">
		<div id="logo">
		   <a href="http://www.mdsd.or.kr"><img src="/img/logo.png" alt="명동대성당"></a>
		</div>
	    <div id="gnb_bg">

		<h2>메인메뉴</h2>
        <ul id="gnb_1dul">
                        <li class="gnb_1dli" style="z-index:999"  meIdx="0">
                <a href="/bbs/content.php?co_id=1010" target="_self" class="gnb_1da">명동대성당</a>
            </li>
                        <li class="gnb_1dli" style="z-index:998"  meIdx="1">
                <a href="/bbs/content.php?co_id=2010" target="_self" class="gnb_1da">성당업무</a>
            </li>
                        <li class="gnb_1dli" style="z-index:997"  meIdx="2">
                <a href="/bbs/board.php?bo_table=3010" target="_self" class="gnb_1da">성당소식</a>
            </li>
                        <li class="gnb_1dli" style="z-index:996"  meIdx="3">
                <a href="/bbs/board.php?bo_table=4010" target="_self" class="gnb_1da">성당자료실</a>
            </li>
                        <li class="gnb_1dli" style="z-index:995"  meIdx="4">
                <a href="/bbs/content.php?co_id=5010" target="_self" class="gnb_1da gnb1el">미사와 성사</a>
            </li>
                        <li class="gnb_1dli" style="z-index:994"  meIdx="5">
                <a href="/bbs/content.php?co_id=6010" target="_self" class="gnb_1da">가톨릭소개</a>
            </li>
                    </ul>

		<div id="snb_wrap">
						
			<div class="wrap" id="snbWrap0">
			<dl class="snb">
				<div class="onbul onleft0 fadeInLeft"></div>
				<div class="stimg">
					<img src="/img/snbImg0.png">
				</div>
				<h3>명동대성당<span class="stt">천주교서울대교구주교좌명동대성당</span></h3>


				<dd class="snb01">
				<div class="ssnb01 clearfx">
					<ul>
											<li class=""><a href="/bbs/content.php?co_id=1010" target="_self" class="">명동대성당의 역사</a></li>
											<li class=""><a href="/bbs/content.php?co_id=1020" target="_self" class="">주보성인</a></li>
											<li class=""><a href="/bbs/content.php?co_id=1030" target="_self" class="">역대 주교좌 교구장</a></li>
											<li class=""><a href="/bbs/content.php?co_id=1040" target="_self" class="">역대 본당 주임사제</a></li>
											<li class=""><a href="/bbs/content.php?co_id=1050" target="_self" class="">본당 사목지침</a></li>
											<li class=""><a href="/bbs/content.php?co_id=1060" target="_self" class="">본당 신부님</a></li>
											<li class=""><a href="/bbs/content.php?co_id=1070" target="_self" class="">본당 수녀님</a></li>
											<li class=""><a href="/bbs/content.php?co_id=1080" target="_self" class="">사목협의회</a></li>
										</ul>
				</div>
				
				</dd>
			</dl>
			</div>		
						
			<div class="wrap" id="snbWrap1">
			<dl class="snb">
				<div class="onbul onleft1 fadeInLeft"></div>
				<div class="stimg">
					<img src="/img/snbImg1.png">
				</div>
				<h3>성당업무<span class="stt">천주교서울대교구주교좌명동대성당</span></h3>


				<dd class="snb01">
				<div class="ssnb02 clearfx">
					<ul>
											<li class=""><a href="/bbs/content.php?co_id=2010" target="_self" class="">사무실안내</a></li>
											<li class=""><a href="/bbs/content.php?co_id=2020" target="_self" class="">찾아오시는길</a></li>
											<li class=""><a href="/bbs/board.php?bo_table=2030" target="_self" class="">자주하는 질문</a></li>
											<li class=""><a href="/bbs/content.php?co_id=2040" target="_self" class="">묻고 답하기</a></li>
										</ul>
				</div>
				
				</dd>
			</dl>
			</div>		
						
			<div class="wrap" id="snbWrap2">
			<dl class="snb">
				<div class="onbul onleft2 fadeInLeft"></div>
				<div class="stimg">
					<img src="/img/snbImg2.png">
				</div>
				<h3>성당소식<span class="stt">천주교서울대교구주교좌명동대성당</span></h3>


				<dd class="snb01">
				<div class="ssnb03 clearfx">
					<ul>
											<li class=""><a href="/notice" target="_self" class="">공지사항</a></li>
											<li class=""><a href="/bbs/board.php?bo_table=3020" target="_self" class="">단체모집</a></li>
											<li class=""><a href="/bbs/board.php?bo_table=3030" target="_self" class="">본당주보</a></li>
											<li class=""><a href="/bbs/board.php?bo_table=3040" target="_self" class="">전례안내</a></li>
										</ul>
				</div>
				
				</dd>
			</dl>
			</div>		
						
			<div class="wrap" id="snbWrap3">
			<dl class="snb">
				<div class="onbul onleft3 fadeInLeft"></div>
				<div class="stimg">
					<img src="/img/snbImg3.png">
				</div>
				<h3>성당자료실<span class="stt">천주교서울대교구주교좌명동대성당</span></h3>


				<dd class="snb01">
				<div class="ssnb04 clearfx">
					<ul>
											<li class=""><a href="/bbs/board.php?bo_table=4010" target="_self" class="">명동 앨범</a></li>
											<li class=""><a href="/bbs/content.php?co_id=4020" target="_self" class="">동영상 보기</a></li>
											<li class=""><a href="/bbs/board.php?bo_table=4030" target="_self" class="">문화가 있는 명동</a></li>
										</ul>
				</div>
				
				</dd>
			</dl>
			</div>		
						
			<div class="wrap" id="snbWrap4">
			<dl class="snb">
				<div class="onbul onleft4 fadeInLeft"></div>
				<div class="stimg">
					<img src="/img/snbImg4.png">
				</div>
				<h3>미사와 성사<span class="stt">천주교서울대교구주교좌명동대성당</span></h3>


				<dd class="snb01">
				<div class="ssnb05 clearfx">
					<ul>
											<li class=""><a href="/bbs/content.php?co_id=5010" target="_self" class="">미사와 성사 안내</a></li>
											<li class=""><a href="/bbs/content.php?co_id=5020" target="_self" class="">세례성사</a></li>
											<li class=""><a href="/bbs/content.php?co_id=5030" target="_self" class="">성체성사</a></li>
											<li class=""><a href="/bbs/content.php?co_id=5040" target="_self" class="">견진성사</a></li>
											<li class=""><a href="/bbs/content.php?co_id=5050" target="_self" class="">고해성사</a></li>
											<li class=""><a href="/bbs/content.php?co_id=506010" target="_self" class="">혼인성사</a></li>
											<li class=""><a href="/bbs/content.php?co_id=5070" target="_self" class="">병자성사</a></li>
											<li class=""><a href="/bbs/content.php?co_id=5080" target="_self" class="">장례안내</a></li>
										</ul>
				</div>
				
				</dd>
			</dl>
			</div>		
						
			<div class="wrap" id="snbWrap5">
			<dl class="snb">
				<div class="onbul onleft5 fadeInLeft"></div>
				<div class="stimg">
					<img src="/img/snbImg5.png">
				</div>
				<h3>가톨릭소개<span class="stt">천주교서울대교구주교좌명동대성당</span></h3>


				<dd class="snb01">
				<div class="ssnb06 clearfx">
					<ul>
											<li class=""><a href="/bbs/content.php?co_id=6010" target="_self" class="">한국천주교회사</a></li>
											<li class=""><a href="/bbs/content.php?co_id=6020" target="_self" class="">기본교리</a></li>
											<li class=""><a href="/bbs/content.php?co_id=603010" target="_self" class="">예비신자 교리학교</a></li>
											<li class=""><a href="/bbs/content.php?co_id=6040" target="_self" class="">성서교육 프로그램</a></li>
										</ul>
				</div>
				
				</dd>
			</dl>
			</div>		
					</div>
			</div>

        <dl id="tnb">
			<dt>Language</dt>
			<dd><ul>
			<li><a href="/bbs/content.php?co_id=7010">English</a></li>
			<li><a href="http://www.mdsd.or.kr">Korean</a></li>
            			</dd>
	    </dl>
			 </div>

    </nav>

</div>  
</div>
<!-- } 상단 끝 -->

<hr>



<script type="text/javascript" src="/js/common-ui.js"></script>
<script type="text/javascript" src="/js/util.js"></script>


<div id="connerBanner">
        <a href="https://www.youtube.com/user/mdsd1784" title="유튜브 생방송 미사 중계" target="_blank"><img src="/img/banner_01.jpg"></a>
</div>


<div id="mtopArea">
	<div id="mVisualA">
		<div class="showcase" id="showcase">
			
<!-- 메인비주얼 최신글 시작 { -->

			<div class="showcase-slide">								
		<div class="showcase-content">
			<a href="http://www.mdsd.or.kr/bbs/board.php?bo_table=3010&wr_id=7932" title="사순 시기 고해성사" class="thumb"><div class="mvisTxt" style="background:#2d3c4f;"><h3>사순 시기 고해성사</h3><div class="mtxt_exp">사순절의 시작인<br>재의 수요일부터 보신<br />
고해성사는<br>부활 판공성사로 간주됩니다.</div></div><div class="mtxt_go">MORE</div><div class="mpimg" style="background:url(http://www.mdsd.or.kr/data/file/mainvisual/747965500_8YMbKqGN_5892a60330d756a183a563491390651971d73b19.jpg) center top no-repeat;"><img src="/img/blank.gif" alt="" width="1200" height="510"  alt="사순 시기 고해성사"/></div></a>
		</div>
		</div>
			<div class="showcase-slide">								
		<div class="showcase-content">
			<a href="http://www.mdsd.or.kr/bbs/board.php?bo_table=3010&wr_id=7948" title="성주간 전례" class="thumb"><div class="mvisTxt" style="background:#2d3c4f;"><h3>성주간 전례</h3><div class="mtxt_exp">성 목요일부터 파스카성야까지는<br />
성삼일 전례 외<br />
미사가 없습니다.</div></div><div class="mtxt_go">MORE</div><div class="mpimg" style="background:url(http://www.mdsd.or.kr/data/file/mainvisual/1522374169_87570.jpg) center top no-repeat;"><img src="/img/blank.gif" alt="" width="1200" height="510"  alt="성주간 전례"/></div></a>
		</div>
		</div>
			<div class="showcase-slide">								
		<div class="showcase-content">
			<a href="http://www.mdsd.or.kr/bbs/board.php?bo_table=3010&wr_id=7933" title="2023년&lt;br&gt;상반기 견진성사" class="thumb"><div class="mvisTxt" style="background:#2d3c4f;"><h3>2023년<br>상반기 견진성사</h3><div class="mtxt_exp">ㆍ견진성사 : 5월 28일(주일)<br />
ㆍ교리신청 : 3월 19일(주일)~<br>　　　　　    방문 접수</div></div><div class="mtxt_go">MORE</div><div class="mpimg" style="background:url(http://www.mdsd.or.kr/data/file/mainvisual/1532762995_06660.jpg) center top no-repeat;"><img src="/img/blank.gif" alt="" width="1200" height="510"  alt="2023년&lt;br&gt;상반기 견진성사"/></div></a>
		</div>
		</div>
			<div class="showcase-slide">								
		<div class="showcase-content">
			<a href="http://www.mdsd.or.kr/bbs/board.php?bo_table=3010&wr_id=7935" title="4월&lt;br&gt;예비신자 교리반" class="thumb"><div class="mvisTxt" style="background:#8c6238;"><h3>4월<br>예비신자 교리반</h3><div class="mtxt_exp">ㆍ목요반 (19:30)<br />
　　　 - 교구청본관 402호<br />
ㆍ주일반 (10:00)<br />
　　　 - 교구청본관 401호</div></div><div class="mtxt_go">MORE</div><div class="mpimg" style="background:url(http://www.mdsd.or.kr/data/file/mainvisual/1517559461_70480.jpg) center top no-repeat;"><img src="/img/blank.gif" alt="" width="1200" height="510"  alt="4월&lt;br&gt;예비신자 교리반"/></div></a>
		</div>
		</div>
			<div class="showcase-slide">								
		<div class="showcase-content">
			<a href="http://www.mdsd.or.kr/bbs/board.php?bo_table=506020" title="명동대성당&lt;br&gt;혼인예약 현황" class="thumb"><div class="mvisTxt" style="background:#8c6238;"><h3>명동대성당<br>혼인예약 현황</h3><div class="mtxt_exp">2023년 1월 ~ 12월</div></div><div class="mtxt_go">MORE</div><div class="mpimg" style="background:url(http://www.mdsd.or.kr/data/file/mainvisual/1517619680_2620.jpg) center top no-repeat;"><img src="/img/blank.gif" alt="" width="1200" height="510"  alt="명동대성당&lt;br&gt;혼인예약 현황"/></div></a>
		</div>
		</div>
	    
<!-- } 메인비주얼 최신글 끝 -->		<!--
		<div class="showcase-slide">								
		<div class="showcase-content">
			<a href="/bbs/board.php?bo_table=4010" title=" " ><div class="mpimg" style="background:url(/img/main/mviaul_01.jpg) center top no-repeat;"><img src="/img/blank.gif" alt="" width="100%" height="510"  alt=" "/></div></a>
		</div>
		</div>
		<div class="showcase-slide">								
		<div class="showcase-content">
			<a href="/bbs/content.php?co_id=5010" title=" " ><div class="mpimg" style="background:url(/img/main/mviaul_02.jpg) center top no-repeat;"><img src="/img/blank.gif" alt="" width="100%" height="510"  alt=" "/></div></a>
		</div>
		</div>
		<div class="showcase-slide">								
		<div class="showcase-content">
			<a href="/bbs/board.php?bo_table=4030" title=" " ><div class="mpimg" style="background:url(/img/main/mviaul_03.jpg) center top no-repeat;"><img src="/img/blank.gif" alt="" width="100%" height="510"  alt=" "/></div></a>
		</div>
		</div>
		-->

		</div>
	</div>
		<div class="quickArea">
			<ul class="quick">
				<li><a href="/bbs/board.php?bo_table=3030" ><div class="qoff  fadeInDownShort07 qbg1"></div><div class="qon   qbg1_on"></div><p>본당주보 보기</p></a></li>
				<li><a href="/bbs/content.php?co_id=5010" ><div class="qoff  fadeInDownShort07 qbg2"></div><div class="qon   qbg2_on"></div><p>미사와 성사안내</p></a></li>
				<li><a href="/bbs/content.php?co_id=506010" ><div class="qoff  fadeInDownShort07 qbg3"></div><div class="qon   qbg3_on"></div><p>혼인성사 안내</p></a></li>
				<li><a href="/bbs/board.php?bo_table=4030" ><div class="qoff  fadeInDownShort07 qbg4"></div><div class="qon   qbg4_on"></div><p>문화가 있는 명동</p></a></li>
				<li><a href="/bbs/board.php?bo_table=3010" ><div class="qoff  fadeInDownShort07 qbg5"></div><div class="qon   qbg5_on"></div><p>명동대성당 소식</p></a></li>
				<li><a href="/bbs/content.php?co_id=2040" ><div class="qoff  fadeInDownShort07 qbg6"></div><div class="qon   qbg6_on"></div><p>묻고답하기</p></a></li>
				<li><a href="/bbs/content.php?co_id=2020" ><div class="qoff  fadeInDownShort07 qbg7"></div><div class="qon   qbg7_on"></div><p>오시는길</p></a></li>
			</ul>
		</div>
</div>
<!-- 콘텐츠 시작 { -->
<div id="wrapper">
	<div class="wrap">
			<dl class="notiArea">
			<dt><a href="/bbs/board.php?bo_table=3010">공지사항<div class="bt_more">더보기</div></a></dt>
			<dd><ul class="notiA fadeInLeft2">
<!-- 공지사항 최신글 시작 { -->

            <li>
            <a href="http://www.mdsd.or.kr/bbs/board.php?bo_table=3010&amp;wr_id=7950"><strong>2023년 성주간 수난감실 성체조배 일정표</strong> 			 </a>
        </li>
            <li>
            <a href="http://www.mdsd.or.kr/bbs/board.php?bo_table=3010&amp;wr_id=7946"><strong>2023 본당의 날 행사 '님 찾아 나선 길'</strong> 			 </a>
        </li>
            <li>
            <a href="http://www.mdsd.or.kr/bbs/board.php?bo_table=3010&amp;wr_id=7945">4월 11일(화) 본당 사무실 휴무 			 </a>
        </li>
            <li>
            <a href="http://www.mdsd.or.kr/bbs/board.php?bo_table=3010&amp;wr_id=7940"><strong>2023년도 초등부 첫영성체 교리반 신청</strong> 			 </a>
        </li>
        
<!-- } 공지사항 최신글 끝 --></ul></dd>
			</dl>
			<dl class="recArea">
			<dt><a href="/bbs/board.php?bo_table=3020">단체모집<div class="bt_more">더보기</div></a></dt>
			<dd><ul class="recA fadeInLeft2">
<!-- 단체모집 최신글 시작 { -->

            <li>
            <a href="http://www.mdsd.or.kr/bbs/board.php?bo_table=3020&amp;wr_id=7274"><strong>명동대성당 청년전례단 '쉐마' 신입단원 모집</strong> 			 </a>
        </li>
            <li>
            <a href="http://www.mdsd.or.kr/bbs/board.php?bo_table=3020&amp;wr_id=7273"><strong>명동대성당 청년성가대 '엘리' 단원 모집</strong> 			 </a>
        </li>
            <li>
            <a href="http://www.mdsd.or.kr/bbs/board.php?bo_table=3020&amp;wr_id=7272"><strong>명동대성당 청년성서모임 신입 봉사자 모집</strong> 			 </a>
        </li>
            <li>
            <a href="http://www.mdsd.or.kr/bbs/board.php?bo_table=3020&amp;wr_id=7269"><strong>명동대성당 로고스합창단 신입단원 모집</strong> 			 </a>
        </li>
        
<!-- } 단체모집 최신글 끝 --></ul></dd>
			</dl>
			
			<!--div class="tobibleA">
				<a href="/bbs/content.php?co_id=4040">
					<div class="ic"></div>
					<div class="title fadeInDownShort07" id="api_goodnews_title"></div>
					<div class="cont "  id="api_goodnews_content"></div>
					<div class="more">···</div>
					<div class="bible"  id="api_goodnews_name"></div>
					</a>
			</div-->
			<div class="basicB">
				<a href="/bbs/board.php?bo_table=4010">
				<h3>성당자료실</h3>
				<div class="txt fadeInDownShort07">주교좌 명동대성당의 행사 사진과<br/>동영상 자료들을 보실 수 있습니다</div>
			</a>
			</div>
			<div class="serviceA">
				<h3>성당사무실</h3>
				<div class="txt ">
					<div class="telnum fadeInDownShort07"><p class="num">02<span>·</span>774<span>·</span>1784</p></div>
					<ul>
					<li><span>화 ~ 금</span>09:00~19:00</li>
					<li style="padding-left:63px;">사무실 폐문 (12:00~13:00)</li>
					<li><span>토요일</span>09:00~19:00</li>
					<li><span>주<span style="width:14px;"></span>일</span>07:00~21:00</li>
					<li class="extt">월요일은 쉽니다.</li>
					</ul>
				</div>
			</div>

			<div class="basicA">
			<a href="/bbs/content.php?co_id=603010">
				<h3>예비신자 교리학교</h3>
				<div class="txt fadeInDownShort07"><!--예비신자환영식은 12월 3일 (주일) 오후 2시<br />서울대교구청 신관 401호에서 있습니다.-->천주교 신자가 되시려면 세례를 받아야 합니다.</div>
			</a>
			</div>
	</div>
</div>



<script>

function string_cut(str, len, tail) {
	return str.substr(0, len)+tail;
}

$(document).ready(function(){


	var playListURL = 'http://mobile3.catholic.or.kr/missa/missajson.asp?goMonth=';

	$.get(playListURL, function(data){
		
		var jsonObj = JSON.parse(data);

		var gospel ="";
		var title = "";
		var name1 = "";
		var nameg = "";
		var content = "";
			
		for(k=0;k<jsonObj.MissaData.length;k++){
		
			if(jsonObj.MissaData[k].gubunid == "2"){
				content = get_content(jsonObj.MissaData[k].content);
				name1 = content;
			}
			if(name1 == "성토요일"){
				title = "";							
				gospel = "이날은 노자 성체만 허락되며, 주님 만찬 성목요일의 만찬 미사 뒤에 제대포를 벗긴 제대는 오늘도 그 상태로 둔다. 장엄한 부활 성야 예식을 거행한 뒤에야 부활의 기쁨을 함께 나누며, 이 기쁨은 50일 동안 넘쳐흐른다.";
				nameg = "교회는 성토요일에는 미사를 봉헌하지 않는다.";
			}


			if(jsonObj.MissaData[k].gubunid == "11"){
				content = jsonObj.MissaData[k].content;
				
				if(jsonObj.MissaData[k].name1 == "주님 수난 성지 주일"){
					 content = content.replace ("촛불도, 향도, 인사도, 책에 하던 십자 표시도 없이 읽는다. 부제가 읽든지 부제가 없으면 사제가 읽는다. 평신도도 읽을 수 있으나 그리스도의 말씀은 되도록 사제가 읽는 것이 좋다. 부제가 읽을 때에는 다른 때와 마찬가지로 축복을 청한다.", "");
					 content = content.replace ("● ", " ");
					 content = content.replace ("○ ", " ");
					 content = content.replace ("◎ ", " ");
					 content = content.replace ("⊙ ", " ");
					 content = content.replace ("+ ", " ");

					title = get_title(content);
					nameg = "예수님께서는 다시 큰 소리로 외치시고 나서 숨을 거두셨다.";
					content = get_content(content.replace (nameg, ""));
					
				}
				else if(name1 == "주님 수난 성금요일"){
					content = jsonObj.MissaData[k].content;

					 content = content.replace ("촛불도, 향도, 인사도, 책에 하던 십자 표시도 없이 읽는다. 부제가 읽든지 부제가 없으면 사제가 읽는다. 평신도도 읽을 수 있으나 그리스도의 말씀은 되도록 사제가 읽는 것이 좋다. 부제가 읽을 때에는 다른 때와 마찬가지로 축복을 청한다.", "");
					 content = content.replace ("● ", " ");
					 content = content.replace ("○ ", " ");
					 content = content.replace ("◎ ", " ");
					 content = content.replace ("⊙ ", " ");
					 content = content.replace ("+ ", " ");
					 
					 title = get_title(content);

					nameg = "거기에는 ‘유다인들의 임금 나자렛 사람 예수’라고 쓰여 있었다.";

					content = get_content(content.replace (nameg, ""));

				}
				else if(name1 ==  "성토요일"){

					nameg = "성토요일";
					
					content = "교회는 성토요일에는 미사를 봉헌하지 않는다. 주님의 무덤 옆에 머무르면서 주님의 수난과 죽음을 깊이 묵상한다. 이날은 노자 성체만 허락되며, 주님 만찬 성목요일의 만찬 미사 뒤에 제대포를 벗긴 제대는 오늘도 그 상태로 둔다. 장엄한 부활 성야 예식을 거행한 뒤에야 부활의 기쁨을 함께 나누며, 이 기쁨은 50일 동안 넘쳐흐른다.";
					
					title = "교회는 성토요일에는 미사를 봉헌하지 않는다.";

				}
				else{
					content = jsonObj.MissaData[k].content;
					title = get_title(content);
					nameg = get_nameg(content);
					content = get_content(content);
					

				}// e name 1 week parse


			}//e gubunid 11

		}
		
		

			content = string_cut(content, 140, "...");
			name1 = nameg + " " + name1

			$("#api_goodnews_title").html(title);
			$("#api_goodnews_content").html(content);
			
			$("#api_goodnews_name").html(name1);
    });
	

	

/*
	var playListURL = '/api/proxy_goodnews.php';


	$.getJSON(playListURL, function(data) {

			var title = (data.title != null) ? data.title : "";
			var name1 = (data.name1 != null) ? data.name1 : "";
			var nameg = (data.nameg != null) ? data.nameg : "";
			var content = data.content;
			

			content = string_cut(content, 140, "...");

			console.log("conetnet: " + content);

			name1 = nameg + " " + name1

			$("#api_goodnews_title").html(title);
			$("#api_goodnews_content").html(content);
			
			$("#api_goodnews_name").html(name1);

	});
*/
});


function get_title (str){
	arr_str = str.split("\n");

	firstline = arr_str[0];	
	/*
	 $firstline = str_replace ("이 전한 거룩한 복음입니다.", "", $firstline);
	 $firstline = str_replace ("가 전한 거룩한 복음입니다.", "", $firstline);
	 $firstline = str_replace ("이 전한 우리 주 예수 그리스도의 수난기입니다.", "", $firstline);
	 $firstline = str_replace ("가 전한 우리 주 예수 그리스도의 수난기입니다.", "", $firstline);
	 */

	firstline = firstline.replace ("+", "");
	firstline = firstline.replace ("✠", "");
	firstline = firstline.replace ("<", "");
	firstline = firstline.replace (">", "");

	return firstline;
}
function get_content (str){
	arr_str = str.split("\n");

	firstline = arr_str[0];	
	/*
	 $firstline = str_replace ("이 전한 거룩한 복음입니다.", "", $firstline);
	 $firstline = str_replace ("가 전한 거룩한 복음입니다.", "", $firstline);
	 $firstline = str_replace ("이 전한 우리 주 예수 그리스도의 수난기입니다.", "", $firstline);
	 $firstline = str_replace ("가 전한 우리 주 예수 그리스도의 수난기입니다.", "", $firstline);
	 */
	 return str.replace (firstline, "");
}
function get_nameg (str){

	arr_str = str.split("\n");
	namestr = "";

	if(arr_str.length > 0){
		for(i=1;i<arr_str.length;i++){	// 1번째 줄부터 .. 
			if(arr_str[i] != ""){
				namestr = arr_str[i];
				break;
			}
		}
	}

	namestr = namestr.replace ("이 전한 거룩한 복음입니다.", "");
	namestr = namestr.replace ("가 전한 거룩한 복음입니다.", "");
	namestr = namestr.replace ("이 전한 우리 주 예수 그리스도의 수난기입니다.", "");
	namestr = namestr.replace ("가 전한 우리 주 예수 그리스도의 수난기입니다.", "");
	namestr = namestr.replace ("+", "");
	namestr = namestr.replace ("✠", "");
	namestr = namestr.replace ( "<", "");
	namestr = namestr.replace (">", "");

	return namestr;
}
</script>

</div>



<!-- } 콘텐츠 끝 -->

<hr>

<div id="ft">
	<div id="ft_copy">
	<div class="flogo">천주교서울대교구주교좌명동대성당</div>
	<p class="info"><span class="info_poin">A</span>서울시 중구 명동길 74 (명동2가)<span class="parti"></span><span class="info_poin">T</span>+82 2 774 1784<span class="parti"></span><span class="info_poin">E</span>mdsdca@catholic.or.kr</p>
	<p class="cp">© 2017 Myeongdong Catholic Cathedral Archdiocese of Seoul.  All rights reserved.</p>
	<div class="frmenu">
		<a href="http://aos.catholic.or.kr/" target="_blank">서울대교구청</a>
		<span class="bar"></span>
		<a href="http://www.catholic.or.kr/" target="_blank">가톨릭굿뉴스</a>
	</div>
</div>


<div class="page_top_down" style="display:none">
    <a style="cursor:pointer" title="페이지 상단으로 가기" class="top">페이지 상단으로 가기</a>
	<!--<a style="cursor:pointer" title="페이지 하단으로 가기" class="down">페이지 하단으로 가기</a>-->
</div></div>


</div>



<!-- } 하단 끝 -->

<script>
$(function() {
    // 폰트 리사이즈 쿠키있으면 실행
    font_resize("container", get_cookie("ck_font_resize_rmv_class"), get_cookie("ck_font_resize_add_class"));
});
</script>



<!-- ie6,7에서 사이드뷰가 게시판 목록에서 아래 사이드뷰에 가려지는 현상 수정 -->
<!--[if lte IE 7]>
<script>
$(function() {
    var $sv_use = $(".sv_use");
    var count = $sv_use.length;

    $sv_use.each(function() {
        $(this).css("z-index", count);
        $(this).css("position", "relative");
        count = count - 1;
    });
});
</script>
<![endif]-->

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-115472651-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-115472651-1');

  //$("#gnb").show();
</script>


</body>
</html>

