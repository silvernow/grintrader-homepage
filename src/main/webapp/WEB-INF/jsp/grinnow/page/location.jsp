<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/taglib.jsp" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="format-detection" content="telephone=no">
    <%@ include file="../include/include.jsp" %>
</head>
<body class="bg-white">
    <nav id="navbar" class="navbar text-white fixed w-full z-50 border-b border-white/30">
        <div class="container mx-auto px-6 py-6">
            <div class="flex items-center justify-between">
                <div class="text-2xl font-bold">
                    <a href="/page/index" class="flex items-center logo-wrap" aria-label="GRINTRADER">
                        <img src="/images/logo-white.png" alt="GRINTRADER" class="logo-img logo-white" />
                        <img src="/images/logo-color.png" alt="" aria-hidden="true" class="logo-img logo-color" />
                    </a>
                </div>
                <div class="hidden lg:flex items-center space-x-12 nav-links">
                    <a href="/page/intro" class="text-white hover:text-gray-200 transition">회사소개</a>
                    <a href="/page/business" class="text-white hover:text-gray-200 transition">사업영역</a>
                    <a href="/page/newsletter" class="text-white hover:text-gray-200 transition">뉴스레터</a>
                    <a href="/page/location" class="text-white hover:text-gray-200 transition">오시는길</a>
                </div>
                <button id="hamburger" class="lg:hidden hamburger" aria-label="모바일 메뉴 열기" aria-expanded="false" aria-controls="mobilePanel">
                    <i class="fas fa-bars text-2xl text-white"></i>
                </button>
            </div>
        </div>
    </nav>
    <div id="backdrop" class="backdrop" tabindex="-1" aria-hidden="true"></div>
    <aside id="mobilePanel" class="mobile-panel" role="dialog" aria-modal="true" aria-label="모바일 메뉴">
        <button id="closeMobile" class="self-end text-white text-2xl mb-4" aria-label="닫기">
            &times;
        </button>
        <nav class="flex flex-col gap-2">
            <a href="/page/intro">회사소개</a>
            <a href="/page/business">사업영역</a>
            <a href="/page/newsletter">뉴스레터</a>
            <a href="/page/location">오시는길</a>
        </nav>
    </aside>
    <section class="sub-visual sub-img04 relative text-white bg-cover bg-center">
        <div class="h-[220px] sm:h-[280px] md:h-[340px] lg:h-[420px] xl:h-[460px]"></div>
        <div class="absolute bottom-[-26px] left-1/2 -translate-x-1/2 sm:left-[18%] sm:translate-x-0 md:left-[22%] lg:left-[24%]">
            <div class="bg-slate-900 px-6 py-4 sm:px-12 sm:py-8 shadow-xl">
                <p class="text-[11px] sm:text-xs text-white/90 text-center sm:text-left">오시는길</p>
                <h1 class="text-lg sm:text-xl md:text-2xl font-extrabold tracking-wide">LOCATION</h1>
            </div>
        </div>
    </section>

    <section id="location" class="section pt-20 pb-10 lg:py-32">
        <div class="page-wrap">
            <div data-fade="left" style="--dur:1.4s;--delay:.05s">
                <h2 class="headline font-strong text-3xl md:text-4xl">조경 비즈니스의 시작점,<br /> 그린트레이더 오시는 길 안내</h2>
                <div class="h-[50px] w-[0.5px] bg-slate-500 my-8"></div>
            </div>
            <div class="info-grid">
                <div data-fade="right" style="--dur:1.4s;--delay:.05s">
                    <p class="text-main-color text-xs border border-main-color inline-block px-4 py-1 rounded-full mb-4">Contact us</p>
                    <p class="addr">
                    부산광역시 부산진구 중앙대로 922, 401호<br />
                    <span class="font-strong">그린트레이더(Grintrader)</span>
                    </p>
                    <p class="meta">
                    Tel. 070-7954-4845 &nbsp;&nbsp; Fax. 0504-034-4440<br />
                    E-mail. <a href="mailto:support@grintrader.co.kr">support@grintrader.co.kr</a>
                    </p>
                </div>
                <div data-fade="left" style="--dur:1.4s;--delay:.05s">
                    <p class="text-main-color text-xs border border-main-color inline-block px-4 py-1 rounded-full mb-4">Location</p>
                    <p class="meta">
                    부산 1호선 양정역 콘텐츠기업지원센터 방면 2번 출구, 도보 1분<br />
                    건물 주차장 이용 가능(유료)<br />
                    방문 전 미리 연락 주세요.
                    </p>
                </div>
            </div>
            <hr class="sep" />
            <div id="map" style="width:100%;height:350px;"></div>
        </div>
    </section>
    <jsp:include page="/WEB-INF/jsp/grinnow/include/footer.jsp" flush="false"></jsp:include>
    <script type="text/javascript" src="/js/common.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=82dfb6bcf4a6bffefa7ad29d627488a8"></script>
	<script>
		var mapContainer = document.getElementById('map'), 
			mapOption = { 
		    	center: new kakao.maps.LatLng(35.1722723, 129.0710839),
		    	level: 3
			};
		
		var map = new kakao.maps.Map(mapContainer, mapOption);		
		var mapTypeControl = new kakao.maps.MapTypeControl();
		
		map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
		
		var zoomControl = new kakao.maps.ZoomControl();
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
		
		var marker = new kakao.maps.Marker({ 
		    position: map.getCenter() 
		}); 
		marker.setMap(map);
		
	</script>
</body>
</html>