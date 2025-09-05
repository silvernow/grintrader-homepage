<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<button id="closeMobile" class="self-end text-white text-2xl mb-4" aria-label="닫기">&times;</button>
	<nav class="flex flex-col gap-2">
		<a href="/page/intro">회사소개</a>
		<a href="/page/business">사업영역</a>
		<a href="/page/newsletter">뉴스레터</a>
		<a href="/page/location">오시는길</a>
	</nav>
</aside>