<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../include/taglib.jsp" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PC 화면 권장 안내</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
    <style>
        body {
            margin: 0;
            background: #f2f4f7;
            font-family: 'Noto Sans KR', sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            text-align: center;
            color: #333;
        }
        .notice {
            max-width: 360px;
            padding: 40px 20px;
        }
        .notice img {
            width: 80px;
            margin-bottom: 24px;
            opacity: 0.8;
        }
        .notice i {
            font-size: 80px;
            color: #1A68FF;
            margin-bottom: 24px;
            opacity: 0.9;
        }
        .notice h1 {
            font-size: 22px;
            font-weight: 700;
            margin-bottom: 16px;
            color: #333;
        }
        .notice p {
            font-size: 14px;
            color: #777;
            line-height: 1.6;
            margin-bottom: 24px;
        }
        .btn-home {
            display: inline-block;
            padding: 12px 24px;
            background-color: #1A68FF;
            color: white;
            text-decoration: none;
            font-size: 14px;
            border-radius: 6px;
            font-weight: 500;
            transition: background-color 0.3s ease;
        }
        .btn-home:hover {
            background-color: #155ad8;
        }
    </style>
</head>
<body>
	<div class="notice">
    	<i class="fa-solid fa-desktop"></i>
    	<h1>PC 웹 브라우저에서만 이용 가능</h1>
    	<p>현재 서비스는 모바일 환경을 지원하지 않습니다.<br>PC 웹 브라우저로 접속해 주세요.</p>
    	<a href="https://www.grinnow.com" class="btn-home" target="_blank" rel="noopener noreferrer">그린나우 포털 바로가기</a>
	</div>
</body>
</html>