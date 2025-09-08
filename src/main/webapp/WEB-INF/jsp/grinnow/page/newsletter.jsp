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
                <p class="text-[11px] sm:text-xs text-white/90 text-center sm:text-left">뉴스레터</p>
                <h1 class="text-lg sm:text-xl md:text-2xl font-extrabold tracking-wide">NEWS LETTER</h1>
            </div>
        </div>
    </section>

    <section id="intro" class="section pt-20 pb-10 lg:py-32">
        <div class="page-wrap">
            <div data-fade="left" style="--dur:1.4s;--delay:.05s">
                <div class="h-[0.5px] w-[50px] bg-slate-500 mb-8"></div>
                <h2 class="headline font-strong text-3xl md:text-4xl mb-10">조경 비즈니스의 오늘과 내일,<br />그린트레이더 뉴스레터</h2>
            </div>
            <div class="mx-auto" data-fade="right" style="--dur:1.4s;--delay:.05s">
                <ul class="mt-6 border border-slate-200 rounded-lg overflow-hidden divide-y divide-slate-200">
                    <li>
                        <a href="https://www.donga.com/news/article/all/20250425/131496554/1" target="_blank" class="group block px-4 sm:px-5 py-4 even:bg-slate-50 bg-slate-100/60 focus:bg-slate-100/60 focus:outline-none transition">
                            <div class="flex flex-col gap-2 sm:grid sm:grid-cols-[auto_1fr_auto] sm:items-center sm:gap-4">
                                <div class="w-[80px] text-center">
                                    <span class="hidden sm:inline-flex items-center px-2.5 py-1 text-xs rounded-full main-color text-white">뉴스기사</span>
                                </div>
                                <h3 class="text-slate-900 font-medium leading-snug text-sm sm:truncate sm:whitespace-nowrap sm:overflow-ellipsis">
                                    [ICT이노베이션스퀘어확산사업] 그린트레이더 “오프라인 중심 조경수 시장의 디지털 전환 이끌 것”
                                </h3>
                                <time class="hidden sm:block text-sm text-slate-500">2025-04-25</time>
                                <div class="sm:hidden text-xs text-slate-500 flex items-center gap-2">
                                    <span class="inline-flex items-center px-2 py-0.5 rounded-full main-color text-white">뉴스기사</span>
                                    <span aria-hidden="true">·</span>
                                    <time>2025-04-25</time>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="https://blog.naver.com/grintraders/223676851464" target="_blank" class="group block px-4 sm:px-5 py-4 even:bg-slate-50 bg-slate-100/60 focus:bg-slate-100/60 focus:outline-none transition">
                            <div class="flex flex-col gap-2 sm:grid sm:grid-cols-[auto_1fr_auto] sm:items-center sm:gap-4">
                                <div class="w-[80px] text-center">
                                    <span class="hidden sm:inline-flex items-center px-2.5 py-1 text-xs rounded-full main-color text-white">뉴스기사</span>
                                </div>
                                <h3 class="text-slate-900 font-medium leading-snug text-sm sm:truncate sm:whitespace-nowrap sm:overflow-ellipsis">
                                    리그린, 폐기 조경 수목 재활용 위한 수목 가치 평가 서비스 도입
                                </h3>
                                <time class="hidden sm:block text-sm text-slate-500">2024-11-20</time>
                                <div class="sm:hidden text-xs text-slate-500 flex items-center gap-2">
                                    <span class="inline-flex items-center px-2 py-0.5 rounded-full main-color text-white">뉴스기사</span>
                                    <span aria-hidden="true">·</span>
                                    <time>2024-11-20</time>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.nbntv.kr/news/articleView.html?idxno=307802" target="_blank" class="group block px-4 sm:px-5 py-4 even:bg-slate-50 bg-slate-100/60 focus:bg-slate-100/60 focus:outline-none transition">
                            <div class="flex flex-col gap-2 sm:grid sm:grid-cols-[auto_1fr_auto] sm:items-center sm:gap-4">
                                <div class="w-[80px] text-center">
                                    <span class="hidden sm:inline-flex items-center px-2.5 py-1 text-xs rounded-full main-color text-white">뉴스기사</span>
                                </div>
                                <h3 class="text-slate-900 font-medium leading-snug text-sm sm:truncate sm:whitespace-nowrap sm:overflow-ellipsis">
                                    [인터뷰] “개발지 가치 있는 나무 살릴 방법… 투명한 수목 거래 필요”
                                </h3>
                                <time class="hidden sm:block text-sm text-slate-500">2023-11-24</time>
                                <div class="sm:hidden text-xs text-slate-500 flex items-center gap-2">
                                    <span class="inline-flex items-center px-2 py-0.5 rounded-full main-color text-white">뉴스기사</span>
                                    <span aria-hidden="true">·</span>
                                    <time>2023-11-24</time>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="https://blog.naver.com/grintraders/223901036010" target="_blank" class="group block px-4 sm:px-5 py-4 even:bg-slate-50 hover:bg-slate-100/60 focus:bg-slate-100/60 focus:outline-none transition">
                            <div class="flex flex-col gap-2 sm:grid sm:grid-cols-[auto_1fr_auto] sm:items-center sm:gap-4">
                                <div class="w-[80px] text-center">
                                    <span class="hidden sm:inline-flex items-center px-2.5 py-1 text-xs font-semibold rounded-full border border-slate-300 text-slate-700">나무상식</span>
                                </div>
                                <p class="text-slate-900 font-medium leading-snug text-sm font-strong sm:truncate sm:whitespace-nowrap sm:overflow-ellipsis">
                                    [나무상식] 집에서 키우기 좋은 나무
                                <span class="inline-block align-top text-[8px] font-strong text-blue-600">N</span>
                                </p>
                                <time class="hidden sm:block text-sm text-slate-500">2025-06-16</time>
                                <div class="sm:hidden text-xs text-slate-500 flex items-center gap-2">
                                    <span class="inline-flex items-center px-2 py-0.5 rounded-full border border-slate-300 text-slate-700">나무상식</span>
                                    <span aria-hidden="true">·</span>
                                    <time>2025-06-16</time>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="https://blog.naver.com/grintraders/223870330668" target="_blank" class="group block px-4 sm:px-5 py-4 even:bg-slate-50 hover:bg-slate-100/60 focus:bg-slate-100/60 focus:outline-none transition">
                            <div class="flex flex-col gap-2 sm:grid sm:grid-cols-[auto_1fr_auto] sm:items-center sm:gap-4">
                                <div class="w-[80px] text-center">
                                    <span class="hidden sm:inline-flex items-center px-2.5 py-1 text-xs font-semibold rounded-full border border-slate-300 text-slate-700">나무상식</span>
                                </div>
                                <p class="text-slate-900 font-medium leading-snug text-sm font-strong sm:truncate sm:whitespace-nowrap sm:overflow-ellipsis">
                                    [나무상식] 뿌리, 줄기, 가지, 잎은 무슨 역할을 할까?
                                <span class="inline-block align-top text-[8px] font-strong text-blue-600">N</span>
                                </p>
                                <time class="hidden sm:block text-sm text-slate-500">2025-05-19</time>
                                <div class="sm:hidden text-xs text-slate-500 flex items-center gap-2">
                                    <span class="inline-flex items-center px-2 py-0.5 rounded-full border border-slate-300 text-slate-700">나무상식</span>
                                    <span aria-hidden="true">·</span>
                                    <time>2025-05-19</time>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="https://blog.naver.com/grintraders/223866709850" target="_blank" class="group block px-4 sm:px-5 py-4 even:bg-slate-50 hover:bg-slate-100/60 focus:bg-slate-100/60 focus:outline-none transition">
                            <div class="flex flex-col gap-2 sm:grid sm:grid-cols-[auto_1fr_auto] sm:items-center sm:gap-4">
                                <div class="w-[80px] text-center">
                                    <span class="hidden sm:inline-flex items-center px-2.5 py-1 text-xs font-semibold rounded-full border border-slate-300 text-slate-700">나무상식</span>
                                </div>
                                <p class="text-slate-900 font-medium leading-snug text-sm font-strong sm:truncate sm:whitespace-nowrap sm:overflow-ellipsis">
                                    [나무상식] 길거리 가로수에 숨은 비밀
                                </p>
                                <time class="hidden sm:block text-sm text-slate-500">2025-05-15</time>
                                <div class="sm:hidden text-xs text-slate-500 flex items-center gap-2">
                                    <span class="inline-flex items-center px-2 py-0.5 rounded-full border border-slate-300 text-slate-700">나무상식</span>
                                    <span aria-hidden="true">·</span>
                                    <time>2025-05-15</time>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="https://blog.naver.com/grintraders/223688711922" target="_blank" class="group block px-4 sm:px-5 py-4 even:bg-slate-50 hover:bg-slate-100/60 focus:bg-slate-100/60 focus:outline-none transition">
                            <div class="flex flex-col gap-2 sm:grid sm:grid-cols-[auto_1fr_auto] sm:items-center sm:gap-4">
                                <div class="w-[80px] text-center">
                                    <span class="hidden sm:inline-flex items-center px-2.5 py-1 text-xs font-semibold rounded-full border border-slate-300 text-slate-700">나무상식</span>
                                </div>
                                <p class="text-slate-900 font-medium leading-snug text-sm font-strong sm:truncate sm:whitespace-nowrap sm:overflow-ellipsis">
                                    [나무상식] 수목 이식시 주의사항
                                </p>
                                <time class="hidden sm:block text-sm text-slate-500">2024-12-10</time>
                                <div class="sm:hidden text-xs text-slate-500 flex items-center gap-2">
                                    <span class="inline-flex items-center px-2 py-0.5 rounded-full border border-slate-300 text-slate-700">나무상식</span>
                                    <span aria-hidden="true">·</span>
                                    <time>2024-12-10</time>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="https://blog.naver.com/grintraders/223688464212" target="_blank" class="group block px-4 sm:px-5 py-4 even:bg-slate-50 hover:bg-slate-100/60 focus:bg-slate-100/60 focus:outline-none transition">
                            <div class="flex flex-col gap-2 sm:grid sm:grid-cols-[auto_1fr_auto] sm:items-center sm:gap-4">
                                <div class="w-[80px] text-center">
                                    <span class="hidden sm:inline-flex items-center px-2.5 py-1 text-xs font-semibold rounded-full border border-slate-300 text-slate-700">나무상식</span>
                                </div>
                                <p class="text-slate-900 font-medium leading-snug text-sm font-strong sm:truncate sm:whitespace-nowrap sm:overflow-ellipsis">
                                    [나무상식] 나무 동해 예방 방법
                                </p>
                                <time class="hidden sm:block text-sm text-slate-500">2024-12-10</time>
                                <div class="sm:hidden text-xs text-slate-500 flex items-center gap-2">
                                    <span class="inline-flex items-center px-2 py-0.5 rounded-full border border-slate-300 text-slate-700">나무상식</span>
                                    <span aria-hidden="true">·</span>
                                    <time>2024-12-10</time>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="https://blog.naver.com/grintraders/223683713787" target="_blank" class="group block px-4 sm:px-5 py-4 even:bg-slate-50 hover:bg-slate-100/60 focus:bg-slate-100/60 focus:outline-none transition">
                            <div class="flex flex-col gap-2 sm:grid sm:grid-cols-[auto_1fr_auto] sm:items-center sm:gap-4">
                                <div class="w-[80px] text-center">
                                    <span class="hidden sm:inline-flex items-center px-2.5 py-1 text-xs font-semibold rounded-full border border-slate-300 text-slate-700">나무상식</span>
                                </div>
                                <p class="text-slate-900 font-medium leading-snug text-sm font-strong sm:truncate sm:whitespace-nowrap sm:overflow-ellipsis">
                                    [나무지식] 탄소 중립과 나무의 역할
                                </p>
                                <time class="hidden sm:block text-sm text-slate-500">2024-12-05</time>
                                <div class="sm:hidden text-xs text-slate-500 flex items-center gap-2">
                                    <span class="inline-flex items-center px-2 py-0.5 rounded-full border border-slate-300 text-slate-700">나무상식</span>
                                    <span aria-hidden="true">·</span>
                                    <time>2024-12-05</time>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="https://blog.naver.com/grintraders/223683465901" target="_blank" class="group block px-4 sm:px-5 py-4 even:bg-slate-50 hover:bg-slate-100/60 focus:bg-slate-100/60 focus:outline-none transition">
                            <div class="flex flex-col gap-2 sm:grid sm:grid-cols-[auto_1fr_auto] sm:items-center sm:gap-4">
                                <div class="w-[80px] text-center">
                                    <span class="hidden sm:inline-flex items-center px-2.5 py-1 text-xs font-semibold rounded-full border border-slate-300 text-slate-700">나무상식</span>
                                </div>
                                <p class="text-slate-900 font-medium leading-snug text-sm font-strong sm:truncate sm:whitespace-nowrap sm:overflow-ellipsis">
                                    [나무상식] 수목 고사 예방 방법
                                </p>
                                <time class="hidden sm:block text-sm text-slate-500">2024-12-05</time>
                                <div class="sm:hidden text-xs text-slate-500 flex items-center gap-2">
                                    <span class="inline-flex items-center px-2 py-0.5 rounded-full border border-slate-300 text-slate-700">나무상식</span>
                                    <span aria-hidden="true">·</span>
                                    <time>2024-12-05</time>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="https://blog.naver.com/grintraders/223683411002" target="_blank" class="group block px-4 sm:px-5 py-4 even:bg-slate-50 hover:bg-slate-100/60 focus:bg-slate-100/60 focus:outline-none transition">
                            <div class="flex flex-col gap-2 sm:grid sm:grid-cols-[auto_1fr_auto] sm:items-center sm:gap-4">
                                <div class="w-[80px] text-center">
                                    <span class="hidden sm:inline-flex items-center px-2.5 py-1 text-xs font-semibold rounded-full border border-slate-300 text-slate-700">나무상식</span>
                                </div>
                                <p class="text-slate-900 font-medium leading-snug text-sm font-strong sm:truncate sm:whitespace-nowrap sm:overflow-ellipsis">
                                    [나무상식] 병충해 예방 방법
                                </p>
                                <time class="hidden sm:block text-sm text-slate-500">2024-12-05</time>
                                <div class="sm:hidden text-xs text-slate-500 flex items-center gap-2">
                                    <span class="inline-flex items-center px-2 py-0.5 rounded-full border border-slate-300 text-slate-700">나무상식</span>
                                    <span aria-hidden="true">·</span>
                                    <time>2024-12-05</time>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="https://blog.naver.com/grintraders/223679704627" target="_blank" class="group block px-4 sm:px-5 py-4 even:bg-slate-50 hover:bg-slate-100/60 focus:bg-slate-100/60 focus:outline-none transition">
                            <div class="flex flex-col gap-2 sm:grid sm:grid-cols-[auto_1fr_auto] sm:items-center sm:gap-4">
                                <div class="w-[80px] text-center">
                                    <span class="hidden sm:inline-flex items-center px-2.5 py-1 text-xs font-semibold rounded-full border border-slate-300 text-slate-700">나무상식</span>
                                </div>
                                <p class="text-slate-900 font-medium leading-snug text-sm font-strong sm:truncate sm:whitespace-nowrap sm:overflow-ellipsis">
                                    [나무상식] 삽목작업이란?
                                </p>
                                <time class="hidden sm:block text-sm text-slate-500">2024-12-02</time>
                                <div class="sm:hidden text-xs text-slate-500 flex items-center gap-2">
                                    <span class="inline-flex items-center px-2 py-0.5 rounded-full border border-slate-300 text-slate-700">나무상식</span>
                                    <span aria-hidden="true">·</span>
                                    <time>2024-12-02</time>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </section>
 	<jsp:include page="/WEB-INF/jsp/grinnow/include/footer.jsp" flush="false"></jsp:include>
 	<script type="text/javascript" src="/js/common.js"></script>
</body>
</html>