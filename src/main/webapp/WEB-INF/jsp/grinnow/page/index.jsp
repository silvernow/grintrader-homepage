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
	
	<section id="home" class="hero flex items-center justify-center text-center text-white relative">
		<div class="hero-content px-6 max-w-4xl mx-auto stagger" style="--delay-step:.22s">
	    	<h1 class="text-xl md:text-5xl font-bold mb-6 leading-tight shine-once reveal-clip" data-anim>미래를 여는 <br class="block md:hidden"> 스마트 조경 유통 솔루션</h1>
	        <p class="text-sm md:text-xl mb-8 drop-in" data-anim>복잡한 수목 거래를 간편하고 투명하게,<br class="block lg:hidden"> 조경 비즈니스의 최적 파트너</p>
	        <div class="flex flex-col sm:flex-row justify-center gap-4 stagger" style="--delay-base:.44s; --delay-step:.12s">
	        	<a href="/page/intro" class="bg-white text-main-color font-bold py-3 px-8 rounded-full hover:bg-gray-100 transition duration-300 btn-pop"data-anim>회사소개</a>
	            <a href="#services" class="border border-white text-white font-bold py-3 px-8 rounded-full hover:bg-white/10 hover:text-main-color transition duration-300 btn-pop" data-anim>사업영역</a>
	        </div>
	    </div>
	    <div class="absolute bottom-10 left-1/2 transform -translate-x-1/2 animate-bounce">
	    	<a href="#about" class="text-white text-3xl"><i class="fas fa-chevron-down"></i></a>
	    </div>
	</section>
	<section id="about" class="section py-10 lg:py-32">
		<div class="container mx-auto px-6">
	    	<div data-fade="left" style="--dur:1.4s;--delay:.05s">
	        	<div class="text-center">
	            	<p class="text-main-color text-xs border border-main-color inline-block px-4 py-1 rounded-full mb-4">GRINTRADER</p>
	            </div>
	            <h2 class="text-center text-3xl md:text-4xl font-extrabold leading-tight text-slate-900">조경 유통의 새로운 기준</h2>
	            <p class="text-center text-slate-500 mt-3">우리의 시스템이 조경업계를 이렇게 바꿉니다.</p>
	        </div>
	        <div class="mt-20 grid grid-cols-1 md:grid-cols-3 gap-10 md:gap-8">
	            <div class="text-center max-w-md mx-auto" data-fade="left" style="--dur:1.4s;--delay:.05s">
	                <div class="w-20 h-20 md:w-32 md:h-32 mx-auto flex items-center justify-center">
	                    <img src="/images/document-graph-icon.png" alt="견적 아이콘">
	                </div>
	                <p class="text-base md:text-lg mt-4 font-strong text-slate-800 text-lg">간편한 온라인 견적</p>
	                <p class="text-xs md:text-base mt-1 text-slate-500">견적 요청, 이제는 클릭 한 번으로</p>
	            </div>
	            <div class="text-center max-w-md mx-auto" data-fade="right" style="--dur:1.4s;--delay:.05s">
	            	<div class="w-20 h-20 md:w-32 md:h-32 mx-auto flex items-center justify-center">
	                	<img src="/images/tree-icon-3d.png" alt="나무 아이콘">
	                </div>
	                <p class="text-base md:text-lg mt-4 font-strong text-slate-800 text-lg">체계적 수목 거래</p>
	                <p class="text-xs md:text-base mt-1 text-slate-500">복잡한 거래, 플랫폼 하나로 해결</p>
	            </div>
	            <div class="text-center max-w-md mx-auto" data-fade="left" style="--dur:1.4s;--delay:.05s">
	                <div class="w-20 h-20 md:w-32 md:h-32 mx-auto flex items-center justify-center">
	                    <img src="/images/graph-icon.png" alt="그래프 아이콘">
	                </div>
	                <p class="text-base md:text-lg mt-4 font-strong text-slate-800 text-lg">투명한 시세 정보</p>
	                <p class="text-xs md:text-base mt-1 text-slate-500">실거래 기반 시세로 가격 불투명 해소</p>
	            </div>
	        </div>
	    </div> 
	    <div class="container mx-auto px-6 mt-20 lg:mt-32">
	    	<div class="rounded-[28px] bg-slate-900 p-6 sm:p-10 lg:p-12"  data-fade="left" style="--dur:1.4s;--delay:.05s">
	        	<div class="flex flex-col lg:flex-row gap-10 lg:gap-14 items-start">
	            	<div class="lg:w-5/12" data-fade="left" style="--dur:1.4s;--delay:.05s">
	                	<div class="inline-flex items-center gap-1 mb-3">
	                    	<span class="inline-block h-4 w-4 rounded-sm bg-main-color mb-0.5"><img src="/images/star.png" alt="별"></span>
	                        <span class="text-white/60 font-semibold text-sm">성과</span>
	                    </div>
	                    <h2 class="text-2xl md:text-4xl font-bold text-white leading-tight">데이터로 증명하는 우리의 성과</h2>
	                    <p class="mt-3 text-slate-400">시세·협력·프로젝트·만족도까지 숫자로 확인해보세요.</p>
	                </div>
	                <div class="lg:w-7/12 grid grid-cols-2 xl:grid-cols-4 gap-4 md:gap-6">
	                	<article class="group rounded-3xl bg-slate-800 p-6 md:p-5 shadow-[0_8px_22px_rgba(17,95,251,.06)] hover:shadow-[0_14px_34px_rgba(17,95,251,.10)] transition-all duration-200" data-fade="right" style="--dur:1.4s;--delay:.10s">
	                        <div class="w-14 h-14 mx-auto flex items-center justify-center">
	                        	<img src="/images/folder-icon.png" alt="폴더 아이콘" width="78%">
	                        </div>
	                        <div class="text-center">
	                            <div class="text-2xl md:text-2xl font-bold text-white tracking-tight tnum">
	                                <h4 data-count="1000" data-suffix="+" data-format="comma" data-duration="4000"></h4>
	                            </div>
	                            <p class="mt-1 text-slate-400 text-xs">시세데이터</p>
	                        </div>
	                    </article>
	                    <article class="group rounded-3xl bg-slate-800 p-6 md:p-5 shadow-[0_8px_22px_rgba(17,95,251,.06)] hover:shadow-[0_14px_34px_rgba(17,95,251,.10)] transition-all duration-200" data-fade="right" style="--dur:1.4s;--delay:.18s">
	                        <div class="w-14 h-14 mx-auto flex items-center justify-center">
	                            <img src="/images/helmet-icon.png" alt="건설사 아이콘" width="90%">
	                        </div>
	                        <div class="text-center">
	                            <div class="text-2xl md:text-2xl font-bold text-white tracking-tight tnum">
	                                <h4 data-count="50" data-suffix="+" data-duration="4000"></h4>
	                            </div>
	                            <p class="mt-1 text-slate-400 text-xs">조경사·건설사 협력</p>
	                        </div>
	                    </article>
	                    <article class="group rounded-3xl bg-slate-800 p-6 md:p-5 shadow-[0_8px_22px_rgba(17,95,251,.06)] hover:shadow-[0_14px_34px_rgba(17,95,251,.10)] transition-all duration-200" data-fade="right" style="--dur:1.4s;--delay:.26s">
	                    	<div class="w-14 h-14 mx-auto flex items-center justify-center">
	                        	<img src="/images/paper-icon.png" alt="프로젝트 아이콘" width="80%">
	                        </div>
	                        <div class="text-center">
	                        	<div class="text-2xl md:text-2xl font-bold text-white tracking-tight tnum">
	                            	<h4 data-count="20" data-suffix="+" data-duration="4000"></h4>
	                            </div>
	                            <p class="mt-1 text-slate-400 text-xs">프로젝트</p>
	                        </div>
	                    </article>
	                    <article class="group rounded-3xl bg-slate-800 p-6 md:p-5 shadow-[0_8px_22px_rgba(17,95,251,.06)] hover:shadow-[0_14px_34px_rgba(17,95,251,.10)] transition-all duration-200" data-fade="right" style="--dur:1.4s;--delay:.34s">
	                        <div class="w-14 h-14 mx-auto flex items-center justify-center">
	                        	<img src="/images/thumbs-up-icon.png" alt="만족도 아이콘" width="80%">
	                        </div>
	                        <div class="text-center">
	                        	<div class="text-2xl md:text-2xl font-bold text-white tracking-tight tnum">
	                            	<h4 data-count="98" data-suffix="%" data-duration="4000"></h4>
	                            </div>
	                            <p class="mt-1 text-slate-400 text-xs">만족도</p>
	                        </div>
	                    </article>
	                </div>
	            </div>
	        </div>
	    </div>
	</section>
	
	<section class="features bg-blue-50 py-14 lg:pt-20 lg:pb-28">
		<div class="container">
	    	<div class="text-left mb-10 lg:mb-16" data-fade="left" style="--dur:1.6s;--delay:.05s">
	        	<p class="text-main-color text-xs border border-main-color inline-block px-4 py-1 rounded-full mb-4">그린트레이더의 사업</p>
	            <h2 class="text-3xl md:text-4xl font-bold text-slate-900">나무의 시작부터 순환까지,<br> 비즈니스를 한 곳에서</h2>
	        </div>
	        <div class="feature-grid">
	        	<article class="feature-card card--brand" data-fade="left" style="--dur:1.6s;--delay:.10s">
	            	<span class="badge">NEW</span>
	                <div class="card-body">
	                    <p class="eyebrow">그린나우</p>
	                    <h3 class="title">수목시세 및 견적은<br>그린나우에서!</h3>
	                    <a href="https://www.grinnow.com/" target="_blank" class="btn">바로가기</a>
	                </div>
	                <img src="/images/graph.png" alt="그래프" class="card-illust">
	            </article>
	            <article class="feature-card card--dark" data-fade="right" style="--dur:1.6s;--delay:.20s">
	            	<div class="card-body">
	                	<p class="eyebrow">리그린</p>
	                    <h3 class="title">수목 재활용 및 재사용<br>지속가능한 수목 유통</h3>
	                	<a href="#" class="btn btn--ghost">바로가기</a>
	                </div>
	                <img src="/images/recycle.png" alt="리사이클링" class="card-illust">
	            </article>
	            <article class="feature-card card--green" data-fade="left" style="--dur:1.6s;--delay:.30s">
	            	<span class="badge">HOT</span>
	                <div class="card-body">
	                	<p class="eyebrow">조경 설계 및 유지관리</p>
	                    <h3 class="title">조경 설계로<br>공간을 아름답게!</h3>
	                    <a href="https://blog.naver.com/PostList.naver?blogId=grintraders&from=postList&categoryNo=1" target="_blank" class="btn">바로가기</a>
	                </div>
	                <img src="/images/tree.png" alt="나무" class="card-illust">
	            </article>
	        </div>
	    </div>
	</section>
	
	<section id="portfolio" class="section pt-10 pb-16 lg:py-40">
		<div class="container mx-auto px-6">
	    	<div class="flex flex-col-reverse md:flex-row items-start gap-5 md:gap-20">
	        	<div class="md:w-2/3">
	            	<div class="marquee" data-fade="right" style="--dur:1.6s;--delay:.10s">
	                	<div class="marquee__track" style="--speed: 28s;">
	                    	<div class="marquee__group">
	                        	<a class="marquee__item" href="#" data-desc="형제 돼지국밥 조경설계"><img src="/images/work-01.png" alt="프로젝트 1"></a>
	                            <a class="marquee__item" href="#" data-desc="모모스커피 마린시티점 조경 유지관리"><img src="/images/work-02.png" alt="프로젝트 2"></a>
	                            <a class="marquee__item" href="#" data-desc="부산프리미엄 아울렛 티니핑 팝업"><img src="/images/work-03.png" alt="프로젝트 3"></a>
	                            <a class="marquee__item" href="#" data-desc="김해 롯데 가든 파크"><img src="/images/work-04.png" alt="프로젝트 4"></a>
	                            <a class="marquee__item" href="#" data-desc="모모스커피 온천장 식재"><img src="/images/work-05.png" alt="프로젝트 5"></a>
	                            <a class="marquee__item" href="#" data-desc="코렌스이엠 조경유지"><img src="/images/work-06.png" alt="프로젝트 6"></a>
	                        </div>
	                        <div class="marquee__group" aria-hidden="true">
	                            <a class="marquee__item" href="#" data-desc="형제 돼지국밥 조경설계"><img src="/images/work-01.png" alt="프로젝트 1"></a>
	                            <a class="marquee__item" href="#" data-desc="모모스커피 마린시티점 조경 유지관리"><img src="/images/work-02.png" alt="프로젝트 2"></a>
	                            <a class="marquee__item" href="#" data-desc="부산프리미엄 아울렛 티니핑 팝업"><img src="/images/work-03.png" alt="프로젝트 3"></a>
	                            <a class="marquee__item" href="#" data-desc="김해 롯데 가든 파크"><img src="/images/work-04.png" alt="프로젝트 4"></a>
	                            <a class="marquee__item" href="#" data-desc="모모스커피 온천장 식재"><img src="/images/work-05.png" alt="프로젝트 5"></a>
	                            <a class="marquee__item" href="#" data-desc="코렌스이엠 조경유지"><img src="/images/work-06.png" alt="프로젝트 6"></a>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <div class="w-full md:w-1/3" data-fade="left" style="--dur:1.6s;--delay:.12s">
	                <div class="text-left rounded-xl mb-10 lg:mb-0">
	                    <p class="text-main-color text-xs border border-main-color inline-block px-4 py-1 rounded-full mb-4">서비스</p>
	                    <h2 class="text-3xl md:text-4xl font-bold text-slate-900 mb-4">조경 유지·관리 서비스</h2>
	                    <p class="text-main-color mb-8">조경 설계부터 유지 관리까지 원스톱으로, <br> 그린나우에서 더 아름다운 조경을 만들어 보세요!</p>
	                    <div class="text-left" data-fade="left" style="--dur:1.6s;--delay:.38s">
	                        <a href="https://blog.naver.com/PostList.naver?blogId=grintraders&from=postList&categoryNo=1" target="_blank" class="inline-block main-color text-white text-sm py-3 px-8 rounded-lg hover:opacity-[97%] transition duration-300">더 많은 프로젝트 보기</a>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</section>
	
	<section id="contact" class="section px-5">
		<div class="container contact-bg mx-auto px-6 p-10 rounded-t-2xl">
	    	<div class="text-center my-8" data-fade="left" style="--dur:1.6s;--delay:.05s">
	        	<h2 class="text-3xl md:text-4xl font-bold text-white mb-4">당신의 조경 비즈니스,<br>더 간편하게 만들 준비 되셨나요?</h2>
	            <p class="text-white mb-5 opacity-[60%] text-sm">지금 바로 전문가와 상담하고 수목 견적부터 <br class="block lg:hidden"> 계약까지 한 번에 해결해보세요.</p>
	            <div class="text-center" data-fade="left" style="--dur:1.6s;--delay:.38s">
	            	<a id="openContactModal" href="#" class="inline-block bg-white text-main-color font-bold py-3 px-8 rounded-full hover:opacity-[97%] transition duration-300">문의하기</a>
	            </div>
	        </div>
	    </div>
	</section>
	
	<div id="contactModal" class="fixed inset-0 z-[1200] hidden">
		<div id="contactModalBackdrop" class="absolute inset-0 bg-black/50 opacity-0 transition-opacity duration-200"></div>
	   	<div class="absolute inset-0 flex items-center justify-center p-4">
	       	<div id="contactModalPanel"
	           	class="w-full max-w-lg bg-white rounded-2xl shadow-2xl opacity-0 scale-95 transition-all duration-200 focus:outline-none"
	           	role="dialog" aria-modal="true" aria-labelledby="contactModalTitle" aria-describedby="contactModalDesc">
	           	<div class="p-6 md:p-8">
	           		<div class="flex items-start justify-between mb-4">
	               		<h3 id="contactModalTitle" class="text-xl md:text-2xl font-bold text-main-color">문의하기</h3>
	               		<button type="button" id="closeContactModal" class="text-gray-500 hover:text-gray-700 text-2xl leading-none" aria-label="닫기">&times;</button>
	           		</div>
	       			<p id="contactModalDesc" class="text-sm text-gray-500 mb-5">아래 정보를 작성해 주세요. 담당자가 확인 후 연락드립니다.</p>
		       		<form name="contactForm" id="contactForm" method="post" onsubmit="return false;" class="space-y-4">
	                	<div>
		               		<label for="cName" class="block text-sm font-medium text-gray-700 mb-1">성명</label>
		               		<input id="cName" name="cName" type="text" maxlength="20"
		                       	class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-main-color focus:border-transparent" placeholder="이름을 입력하세요">
		               	</div>
		               	<div>
		               		<label for="cEmail" class="block text-sm font-medium text-gray-700 mb-1">이메일</label>
		               		<input id="cEmail" name="cEmail" type="text" maxlength="100"
		                       	class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-main-color focus:border-transparent" placeholder="example@company.com">
		               	</div>
		               	<div>
		               		<label for="cPhone" class="block text-sm font-medium text-gray-700 mb-1">휴대폰번호</label>
		               		<input id="cPhone" name="cPhone" type="text" maxlength="20"
		                       	class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-main-color focus:border-transparent"
		                       	placeholder="010-0000-0000">
		               	</div>
		               	<div>
		               		<label for="cMessage" class="block text-sm font-medium text-gray-700 mb-1">내용</label>
		               		<textarea id="cMessage" name="cMessage" rows="5"
		                        class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-main-color focus:border-transparent"
		                        placeholder="문의 내용을 입력해주세요"></textarea>
		              	</div>
		              	<div class="flex items-start gap-2">
		               		<input id="cPrivacy" name="cPrivacy" type="checkbox" required class="mt-1 h-3 w-3 rounded border-gray-300 text-main-color focus:ring-main-color" />
		               		<label for="cPrivacy" class="text-sm text-gray-600" >개인정보 수집 및 이용에 동의합니다.</label>
		               		<span class="toggle-link" onclick="togglePolicy(event);">[내용 보기]</span>
		               		<div class="policy-details" id="policyDetails">
							   	[개인정보 수집·이용에 대한 동의]
								
							   	1. 수집하는 개인정보 항목  
							   	- 성명, 연락처 등 상담 및 서비스 제공에 필요한 정보
								
							   	2. 개인정보 수집·이용 목적  
							   	- 수목 구매 및 조경 관련 업무 상담 및 서비스 제공
								
							   	3. 개인정보 보유·이용 기간  
							   	- 수집일로부터 개인정보 수집·이용 목적이 달성될 때까지 보유·이용하며,  
							     	    해당 목적 달성 시 지체 없이 파기합니다.  
							  	- 단, 관계 법령에 따라 보존할 필요가 있는 경우 해당 법령에서 정한 기간 동안<br/> 보관합니다.
								
						    	4. 동의 거부 권리 및 불이익 안내  
							   	- 귀하는 개인정보 수집·이용에 동의하지 않으실 수 있으며,  
							  	이 경우 관련 상담 및 서비스 제공이 제한될 수 있습니다.
						  	</div>
		               	</div>
		               	<button type="button" name="btnSend" id="btnSend" class="w-full main-color text-white font-bold py-3 px-6 rounded-lg hover:opacity-95 transition">문의 보내기</button>
	           		</form>
	           	</div>
	       	</div>
	    </div>
	</div>
	<jsp:include page="/WEB-INF/jsp/grinnow/include/footer.jsp" flush="false"></jsp:include>
	<script type="text/javascript" src="/js/common.js"></script>
</body>
</html>

