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
	<form name="newsletterListForm" action ="<c:url value='/page/newsletter' />" method="post" style="margin-bottom:0;">
	<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
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
                	<c:choose>
   						<c:when test="${fn:length(newsList) > 0}">
                   			<c:forEach var="detail" items="${newsList}" varStatus="status" >
                   				<c:if test="${detail.impYn eq 'Y'}">
                   					<li>
					                    <a href="<c:url value='${detail.pressLink}' />" target="_blank" class="group block px-4 sm:px-5 py-4 even:bg-slate-50 bg-slate-100/60 focus:bg-slate-100/60 focus:outline-none transition">
					                        <div class="flex flex-col gap-2 sm:grid sm:grid-cols-[auto_1fr_auto] sm:items-center sm:gap-4">
					                            <div class="w-[80px] text-center">
					                                <span class="hidden sm:inline-flex items-center px-2.5 py-1 text-xs rounded-full main-color text-white"><c:out value='${detail.pressTyNm}' /></span>
					                            </div>
					                            <h3 class="text-slate-900 font-medium leading-snug text-sm sm:truncate sm:whitespace-nowrap sm:overflow-ellipsis">
					                                <c:out value='${detail.pressTitle}' />
					                            </h3>
					                            <time class="hidden sm:block text-sm text-slate-500"><c:out value='${detail.creDt}' /></time>
					                            <div class="sm:hidden text-xs text-slate-500 flex items-center gap-2">
					                                <span class="inline-flex items-center px-2 py-0.5 rounded-full main-color text-white"><c:out value='${detail.pressTyNm}' /></span>
					                                <span aria-hidden="true">·</span>
					                                <time><c:out value='${detail.creDt}' /></time>
					                            </div>
					                        </div>
					                    </a>
					                </li>
                   				</c:if>
                   				<c:if test="${detail.impYn ne 'Y'}">
                   					<li>
				                        <a href="<c:url value='${detail.pressLink}' />" target="_blank" class="group block px-4 sm:px-5 py-4 hover:bg-slate-100/60 focus:bg-slate-100/60 focus:outline-none transition">
				                            <div class="flex flex-col gap-2 sm:grid sm:grid-cols-[auto_1fr_auto] sm:items-center sm:gap-4">
				                                <div class="w-[80px] text-center">
				                                    <span class="hidden sm:inline-flex items-center px-2.5 py-1 text-xs font-semibold rounded-full border border-slate-300 text-slate-700"><c:out value='${detail.pressTyNm}' /></span>
				                                </div>
				                                <h3 class="text-slate-900 font-medium leading-snug text-sm sm:truncate sm:whitespace-nowrap sm:overflow-ellipsis">
				                                    <c:out value='${detail.pressTitle}' />
				                                </h3>
				                                <time class="hidden sm:block text-sm text-slate-500"><c:out value='${detail.creDt}' /></time>
				                                <div class="sm:hidden text-xs text-slate-500 flex items-center gap-2">
				                                    <span class="inline-flex items-center px-2 py-0.5 rounded-full border border-slate-300 text-slate-700"><c:out value='${detail.pressTyNm}' /></span>
				                                    <span aria-hidden="true">·</span>
				                                    <time><c:out value='${detail.creDt}' /></time>
				                                </div>
				                            </div>
				                        </a>
				                    </li>   
                   				</c:if>
                   			</c:forEach>
                   		</c:when>
                   		<c:otherwise>
                   			<li>
			                	<a href="#a" target="_blank" class="group block px-4 sm:px-5 py-4 focus:bg-slate-100/60 focus:outline-none transition">
			                    	<div class="flex items-center justify-center py-4">
  										<h3 class="text-slate-900 font-medium leading-snug text-sm text-center">등록된 게시글이 없습니다.</h3>
									</div>    
			                	</a>
			            	</li>
                   		</c:otherwise>
                   	</c:choose>
                </ul>
            </div>
            <div class="flex justify-center mt-6">
			    <nav class="inline-flex items-center space-x-1" aria-label="Pagination">
			    <c:if test="${paginationInfo.currentPageNo > 1}">
			        <a href="javascript:linkPage(${paginationInfo.currentPageNo-1})"
			        	class="px-3 py-1 rounded-lg border border-gray-300 text-gray-600 hover:bg-gray-100">이전</a>
			    </c:if>
			    <c:forEach var="pageNo" begin="${paginationInfo.firstPageNoOnPageList}" end="${paginationInfo.lastPageNoOnPageList}">
			        <c:choose>
			        	<c:when test="${pageNo eq paginationInfo.currentPageNo}">
			          		<span class="px-3 py-1 rounded-lg main-color text-white font-bold">${pageNo}</span>
			        	</c:when>
			        	<c:otherwise>
			          		<a href="javascript:linkPage(${pageNo})" class="px-3 py-1 rounded-lg border border-gray-300 text-gray-600 hover:bg-gray-100">${pageNo}</a>
			        	</c:otherwise>
			      	</c:choose>
			    </c:forEach>
			    <c:if test="${paginationInfo.currentPageNo < paginationInfo.totalPageCount}">
			    	<a href="javascript:linkPage(${paginationInfo.currentPageNo+1})"
			            class="px-3 py-1 rounded-lg border border-gray-300 text-gray-600 hover:bg-gray-100">다음</a>
			    </c:if>
			  	</nav>
			</div>
        </div>
    </section>
 	<jsp:include page="/WEB-INF/jsp/grinnow/include/footer.jsp" flush="false"></jsp:include>
 	<script src="https://cdn.tailwindcss.com"></script>
	<script type="text/javascript" src="/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="/plugins/jquery/jquery-ui.js"></script>
	<script type="text/javascript" src="/plugins/jquery/jquery.form.js"></script>
	<script type="text/javascript" src="/js/util.js"></script>
 	<script type="text/javascript" src="/js/common.js"></script>
 	<script>
 		function linkPage(pageNo){
 			document.newsletterListForm.pageIndex.value = pageNo;
 			document.newsletterListForm.action = "<c:url value='/page/newsletter'/>";
 	   		document.newsletterListForm.submit();
 		}
 	</script>
	</form>
</body>
</html>