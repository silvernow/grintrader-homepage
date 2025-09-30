<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/taglib.jsp" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="format-detection" content="telephone=no">
	<title>그린트레이더 | GRINTRADER</title>
	<meta name="naver-site-verification" content="8f5c0449ab61e4db5140f7ed818a7cdd30a13d72" />
	<meta name="description" content="그린트레이더는 수목 시세 정보 제공, 조경수 거래 중개, 조경 관리 서비스를 통해 고객의 조경 사업을 돕는 전문 플랫폼입니다.">
	<meta name="author" content="그린트레이더">
	<meta name="robots" content="index,follow">
	<link rel="canonical" href="https://www.grintrader.com/">
	<meta property="og:type" content="website">
	<meta property="og:site_name" content="그린트레이더">
	<meta property="og:locale" content="ko_KR">
	<meta property="og:title" content="그린트레이더 - 조경수 중개 및 관리 플랫폼">
	<meta property="og:description" content="그린트레이더는 실시간 수목 시세 제공, 조경수 중개, 조경 관리 서비스를 제공하는 전문 플랫폼입니다.">
	<meta property="og:url" content="https://www.grintrader.com/">
	<meta property="og:image" content="https://www.grintrader.com/img/grintrader_thumbnail.png">
	<meta property="og:image:width" content="1200">
	<meta property="og:image:height" content="630">
	<meta name="twitter:card" content="summary_large_image">
	<meta name="twitter:title" content="그린트레이더 - 조경수 중개 및 관리 플랫폼">
	<meta name="twitter:description" content="실시간 수목 시세, 거래 중개, 조경 관리까지 한 번에.">
	<meta name="twitter:image" content="https://www.grintrader.com/img/grintrader_thumbnail.png">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
	<link rel="stylesheet" href="/css/common.css">
	<link rel="stylesheet" href="/css/sub.css">
	<link rel="icon" href="/images/favicon-24x24.png" type="image/x-icon" />
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
                <p class="text-[11px] sm:text-xs text-white/90 text-center sm:text-left">회사소개</p>
                <h1 class="text-lg sm:text-xl md:text-2xl font-extrabold tracking-wide">INTRO</h1>
            </div>
        </div>
    </section>

    <section id="intro" class="section py-20 lg:py-32">
        <div class="page-wrap">
            <div data-fade="left" style="--dur:1.4s;--delay:.05s">
                <h2 class="headline font-strong text-3xl md:text-4xl">조경 비즈니스를 선도하는,<br /> 그린트레이더</h2>
                <div class="h-[50px] w-[0.5px] bg-slate-500 my-8"></div>
            </div>
            <div class="intro-01">
                <div class="grid items-start gap-10 xl:gap-24 lg:grid-cols-12">
                    <div class="lg:col-span-5" data-fade="left" style="--dur:1.4s;--delay:.05s">
                        <p class="text-slate-900 leading-relaxed">
                            그린트레이더는 조경 관련 업무를 더 쉽고 투명하게 돕는 파트너입니다.
                            수목 시세와 수목 견적을 한눈에 확인하고, 환경·ESG 관점을 담아 지속가능한 조경을 지향합니다.<br><br>
                            그린트레이더는 조경 업무 전반을 편하게 연결합니다. 조경 현장의 일을 부드럽게 이어주는 플랫폼. 변하는 수목 시세와 필요한 수목 견적을 간편히 살피고, 환경·ESG 가치를 반영한 선택을 함께 고민합니다.
                        </p>
                        <a href="/page/business" class="mt-6 inline-flex items-center gap-2 text-slate-900 font-bold">
                        사업 알아보기
                        <svg class="h-4 w-4" viewBox="0 0 20 20" fill="currentColor"><path d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 111.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"/></svg>
                        </a>
                    </div>
                    <div class="lg:col-span-7" data-fade="right" style="--dur:1.4s;--delay:.05s">
                        <div class="grid grid-cols-1 sm:grid-cols-2 gap-4 sm:gap-5">
                            <a class="group rounded-2xl px-6 xl:px-10 py-6 bg-slate-50 text-slate-900 shadow-sm flex items-center gap-4 xl:block xl:gap-0 aspect-auto xl:aspect-[4/3]">
                                <div class="shrink-0 h-12 w-12 xl:h-16 xl:w-16 xl:mt-4">
                                    <img src="/images/partnership-icon.png" alt="파트너십 아이콘" class="h-full w-full object-contain">
                                </div>
                                <div class="flex-1 min-w-0 xl:min-w-full xl:mt-3">
                                    <h3 class="font-extrabold text-base xl:text-lg">안정적인 파트너십</h3>
                                    <p class="mt-1 text-slate-800 text-sm leading-relaxed">한 번의 프로젝트를 넘어, 지속가능한 파트너십을 지향합니다</p>
                                </div>
                            </a>
                            <a class="group rounded-2xl px-6 xl:px-10 py-6 bg-slate-50 text-slate-900 shadow-sm flex items-center gap-4 xl:block xl:gap-0 aspect-auto xl:aspect-[4/3] xl:bg-slate-900 xl:text-white xl:shadow-lg translate-y-0 xl:translate-y-10">
                                <div class="shrink-0 h-12 w-12 xl:h-16 xl:w-16 xl:mt-4">
                                    <img src="/images/document-icon.png" alt="시세자료 아이콘" class="h-full w-full object-contain">
                                </div>
                                <div class="flex-1 min-w-0 xl:min-w-full xl:mt-3">
                                    <h3 class="font-extrabold text-base xl:text-lg xl:text-white">실거래 표준 제시</h3>
                                    <p class="mt-1 text-slate-800 xl:text-white/90 text-sm leading-relaxed">조경수 실거래 시세 및 표준으로 가격 불투명을 해소합니다</p>
                                </div>
                            </a>
                            <a class="group rounded-2xl px-6 xl:px-10 py-6 bg-slate-50 text-slate-900 shadow-sm flex items-center gap-4 xl:block xl:gap-0 aspect-auto xl:aspect-[16/11] xl:-translate-x-32">
                                <div class="shrink-0 h-12 w-12 xl:h-16 xl:w-16 xl:mt-4">
                                    <img src="/images/setting-icon.png" alt="운영 효율 아이콘" class="h-full w-full object-contain">
                                </div>
                                <div class="flex-1 min-w-0 xl:min-w-full xl:mt-3">
                                    <h3 class="font-extrabold text-base xl:text-lg">운영 효율</h3>
                                    <p class="mt-1 text-slate-800 text-sm leading-relaxed">관리하기 까다롭고 번거로운 조경업무 서류 작업을 지원합니다</p>
                                </div>
                            </a>
                            <a class="group rounded-2xl px-6 xl:px-10 py-6 bg-slate-50 text-slate-900 shadow-sm flex items-center gap-4 xl:block xl:gap-0 aspect-auto xl:aspect-[4/3] translate-y-0 xl:translate-y-10 xl:-translate-x-32">
                                <div class="shrink-0 h-12 w-12 xl:h-16 xl:w-16 xl:mt-4">
                                    <img src="/images/recycle-icon.png" alt="ESG · 환경 아이콘" class="h-full w-full object-contain">
                                </div>
                                <div class="flex-1 min-w-0 xl:min-w-full xl:mt-3">
                                    <h3 class="font-extrabold text-base xl:text-lg">ESG · 환경</h3>
                                    <p class="mt-1 text-slate-800 text-sm leading-relaxed">수목 재이식·재활용 지표 리포트로 지속가능경영 지원합니다</p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="relative overflow-hidden text-white">
        <div class="absolute inset-0 bg-[url('/images/sub-intro.png')] bg-cover bg-center"></div>
        <div class="absolute inset-0 bg-black/50"></div>
        <div class="relative max-w-6xl mx-auto px-6 py-12 md:py-16">
            <div class="grid grid-cols-1 md:grid-cols-3">
                <div class="p-6 md:p-8" data-fade="left" style="--dur:1.4s;--delay:.05s">
                    <p class="text-lg font-extrabold">01</p>
                    <h3 class="mt-2 text-xl md:text-2xl font-extrabold leading-snug">
                        데이터로 가격을<br>명확하게
                    </h3>
                    <p class="mt-3 text-white/90">
                        실거래 기반 수목 시세로<br>가격 불투명을 해소합니다.
                    </p>
                </div>
                <div class="p-6 md:p-8 border-t md:border-t-0 md:border-l border-white/20" data-fade="right" style="--dur:1.4s;--delay:.05s">
                    <p class="text-lg font-extrabold">02</p>
                    <h3 class="mt-2 text-xl md:text-2xl font-extrabold leading-snug">
                        간편한 워크플로우로<br>빠르게
                    </h3>
                    <p class="mt-3 text-white/90">
                        반복 작업을 줄이고<br>불필요한 업무시간을 절약합니다.
                    </p>
                </div>
                <div class="p-6 md:p-8 border-t md:border-t-0 md:border-l border-white/20" data-fade="left" style="--dur:1.4s;--delay:.05s">
                    <p class="text-lg font-extrabold">03</p>
                    <h3 class="mt-2 text-xl md:text-2xl font-extrabold leading-snug">
                        지속가능한 조경을<br>확산
                    </h3>
                    <p class="mt-3 text-white/90">
                        재이식·재활용과 유지관리 리포트로<br>ESG를 실천합니다.
                    </p>
                </div>
            </div>                                                                                                                                                                                                                                                                                                                                                                                                                                           
        </div>
    </section>

    <section class="py-16 md:py-24 text-center">
        <div data-fade="left" style="--dur:1.4s;--delay:.05s">
            <div class="flex justify-center items-center">
                <div class="h-[50px] w-[0.5px] bg-slate-500 my-8"></div>
            </div>
            <p class="text-main-color text-xs border border-main-color inline-block px-4 py-1 rounded-full mb-4">Mission</p>
            <h2 class="mt-4 text-3xl md:text-5xl font-black leading-tight text-slate-900">
                수목 유통을 바꾸는 일은 <br>
                <span class="gt-highlight font-strong">지구를 푸르게</span>
                가꾸는 일입니다.
            </h2>
        </div>
        <div data-fade="right" style="--dur:1.4s;--delay:.05s">
            <p class="mt-6 text-base text-slate-900">
                우리는 수목시세·견적 표준화로 낭비를 줄이고,<br>
                재이식·재활용·유지관리 리포트로 ESG를 실천합니다.
            </p>
        </div>
    </section>


    <section class="relative overflow-hidden text-white">
        <div class="absolute inset-0 bg-[url('/images/sub-banner.png')] bg-cover bg-center"></div>
        <div class="absolute inset-0 bg-black/30"></div>
        <div class="relative max-w-4xl mx-auto px-6 pt-16 md:pt-24 pb-32 text-center">
            <h2 class="mt-3 text-4xl md:text-6xl font-black tracking-tight">grintrader</h2>
            <p class="mt-5 text-white/70 leading-relaxed">
                그린트레이더는 조경 산업의 더 나은 미래를 연구합니다.<br class="hidden md:block">
                실거래 기반 시세 데이터와 혁신적인 프로세스로 지속 가능한 조경 생태계를 만들고 있습니다.
            </p>
        </div>
    </section>
    <jsp:include page="/WEB-INF/jsp/grinnow/include/footer.jsp" flush="false"></jsp:include>
    <script src="https://cdn.tailwindcss.com"></script>
	<script type="text/javascript" src="/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="/plugins/jquery/jquery-ui.js"></script>
	<script type="text/javascript" src="/plugins/jquery/jquery.form.js"></script>
	<script type="text/javascript" src="/js/util.js"></script>
    <script type="text/javascript" src="/js/common.js"></script>
</body>
</html>