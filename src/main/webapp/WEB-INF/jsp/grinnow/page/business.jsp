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
                <p class="text-[11px] sm:text-xs text-white/90 text-center sm:text-left">사엽영역</p>
                <h1 class="text-lg sm:text-xl md:text-2xl font-extrabold tracking-wide">BUSINESS</h1>
            </div>
        </div>
    </section>

    <section id="intro" class="section py-20 lg:py-32">
        <div class="page-wrap">
            <div data-fade="left" style="--dur:1.4s;--delay:.05s">
                <h2 class="headline font-strong text-3xl md:text-4xl">조경을 데이터로 연결하는,<br /> 그린트레이더</h2>
            </div>
            <div>
                <div class="grid grid-cols-1 lg:grid-cols-3 gap-6 lg:gap-8">
                    <article class="lg:col-span-1 rounded-3xl overflow-hidden bg-gradient-to-br from-slate-900 to-slate-800 text-white" data-fade="left" style="--dur:1.4s;--delay:.05s">
                        <div class="h-full flex flex-col justify-between p-8 md:p-10">
                            <div>
                                <h2 class="text-3xl md:text-4xl font-black leading-tight">
                                    그린트레이더<br/>사업영역
                                </h2>
                                <p class="mt-4 text-white/85 leading-relaxed">
                                    수목 시세·견적부터 재이식·재활용,<br>설계와 유지관리까지.<br><br>
                                    조경 비즈니스를 데이터로 연결해 더 빠르고 투명하게 만듭니다.
                                </p>
                            </div>
                            <div class="mt-8">
                                <ul class="flex flex-wrap gap-2">
                                    <li class="px-3 py-1 rounded-full bg-white/10 text-white/90 text-xs">데이터 신뢰</li>
                                    <li class="px-3 py-1 rounded-full bg-white/10 text-white/90 text-xs">업무 효율</li>
                                    <li class="px-3 py-1 rounded-full bg-white/10 text-white/90 text-xs">ESG 실행</li>
                                </ul>
                            </div>
                        </div>
                    </article>
                    <div class="lg:col-span-2 grid grid-cols-1 sm:grid-cols-2 gap-6 lg:gap-8" data-fade="right" style="--dur:1.4s;--delay:.05s">
                        <article class="group relative min-h-[232px] rounded-3xl bg-cover bg-center bg-no-repeat bg-[url('/images/business-01.png')] shadow-sm hover:shadow-lg transform-gpu transition-transform duration-300 hover:-translate-y-1 md:hover:-translate-y-2 focus-within:-translate-y-1 p-6 md:p-8">
                            <div class="absolute inset-0 rounded-3xl bg-gradient-to-b from-black/50 to-black/10 z-0 pointer-events-none"></div>
                            <div class="relative z-10 flex items-start gap-4">
                                <div>
                                    <h3 class="text-2xl md:text-3xl font-strong text-white">그린나우</h3>
                                    <p class="mt-1 text-white text-sm font-300">데이터로 시세를 명확하게</p>
                                </div>
                            </div>
                            <a href="https://www.grinnow.com/" target="_blank" aria-label="그린나우 자세히 보기" class="absolute z-20 bottom-5 right-5 md:bottom-6 md:right-6 inline-grid place-items-center w-12 h-12 rounded-full bg-white/15 backdrop-blur-sm backdrop-saturate-150 text-white shadow-sm hover:bg-white/25 focus:outline-none focus-visible:ring-2 transition">
                                <svg viewBox="0 0 24 24" class="w-5 h-5 transition-transform group-hover:translate-x-0.5" fill="none" stroke="currentColor" stroke-width="2">
                                    <path d="M8 5l8 7-8 7" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>
                            </a>
                        </article>
                        <article class="group relative min-h-[232px] rounded-3xl bg-cover bg-center bg-no-repeat bg-[url('/images/business-02.png')] shadow-sm hover:shadow-lg transform-gpu transition-transform duration-300 hover:-translate-y-1 md:hover:-translate-y-2 focus-within:-translate-y-1 p-6 md:p-8">
                            <div class="absolute inset-0 rounded-3xl bg-gradient-to-b from-black/50 to-black/10 z-0 pointer-events-none"></div>
                            <div class="relative z-10 flex items-start gap-4">
                                <div>
                                    <h3 class="text-2xl md:text-3xl font-strong text-white">리그린</h3>
                                    <p class="mt-1 text-white text-sm font-300">재이식·재활용으로 ESG를 실천</p>
                                </div>
                            </div>
                            <a href="#" aria-label="리그린 자세히 보기" class="absolute z-20 bottom-5 right-5 md:bottom-6 md:right-6 inline-grid place-items-center w-12 h-12 rounded-full bg-white/15 backdrop-blur-sm backdrop-saturate-150 text-white shadow-sm hover:bg-white/25 focus:outline-none focus-visible:ring-2 transition">
                                <svg viewBox="0 0 24 24" class="w-5 h-5 transition-transform group-hover:translate-x-0.5" fill="none" stroke="currentColor" stroke-width="2">
                                    <path d="M8 5l8 7-8 7" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>
                            </a>
                        </article>
                        <article
                            class="group relative min-h-[232px] rounded-3xl bg-cover bg-center bg-no-repeat bg-[url('/images/business-03.png')] shadow-sm hover:shadow-lg transform-gpu transition-transform duration-300 hover:-translate-y-1 md:hover:-translate-y-2 focus-within:-translate-y-1 p-6 md:p-8">
                            <div class="absolute inset-0 rounded-3xl bg-gradient-to-b from-black/70 to-black/10 z-0 pointer-events-none"></div>
                            <div class="relative z-10 flex items-start gap-4">
                                <div>
                                    <h3 class="text-2xl md:text-3xl font-strong text-white">조경 설계 및 유지관리</h3>
                                    <p class="mt-1 text-white text-sm font-300">설계부터 유지까지 원스톱으로</p>
                                </div>
                            </div>
                            <a href="https://blog.naver.com/PostList.naver?blogId=grintraders&from=postList&categoryNo=1" target="_blank" aria-label="조경 설계 및 유지관리 자세히 보기" class="absolute z-20 bottom-5 right-5 md:bottom-6 md:right-6 inline-grid place-items-center w-12 h-12 rounded-full bg-white/15 backdrop-blur-sm backdrop-saturate-150 text-white shadow-sm hover:bg-white/25 focus:outline-none focus-visible:ring-2 transition">
                                <svg viewBox="0 0 24 24" class="w-5 h-5 transition-transform group-hover:translate-x-0.5" fill="none" stroke="currentColor" stroke-width="2">
                                    <path d="M8 5l8 7-8 7" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>
                            </a>
                        </article>
                        <article class="group relative lg:min-h-[232px] rounded-3xl bg-cover bg-center bg-no-repeat bg-slate-100 shadow-sm hover:shadow-lg transform-gpu transition-transform duration-300 hover:-translate-y-1 md:hover:-translate-y-2 focus-within:-translate-y-1 p-6 md:p-8">
                            <div class="relative z-10 flex items-start gap-4">
                                <div>
                                    <h3 class="text-2xl md:text-3xl font-strong text-slate-900">더 알아보기</h3>
                                    <p class="mt-1 text-slate-900 text-sm font-300">see more</p>
                                </div>
                            </div>
                            <a href="https://blog.naver.com/PostList.naver?blogId=grintraders" target="_blank" aria-label="자세히 보기" class="absolute z-20 bottom-5 right-5 md:bottom-6 md:right-6 inline-grid place-items-center w-12 h-12 rounded-full main-color backdrop-blur-sm backdrop-saturate-150 text-white shadow-sm focus:outline-none focus-visible:ring-2 transition">
                                <svg viewBox="0 0 24 24" class="w-5 h-5 transition-transform group-hover:translate-x-0.5" fill="none" stroke="currentColor" stroke-width="2">
                                    <path d="M8 5l8 7-8 7" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>
                            </a>
                        </article>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <jsp:include page="/WEB-INF/jsp/grinnow/include/footer.jsp" flush="false"></jsp:include>
    <script type="text/javascript" src="/js/common.js"></script>
</body>
</html>