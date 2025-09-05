<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
	<head>
    	<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta property="og:type" content="website">
		<meta property="og:title" content="GRINNOW 서비스">
		<meta property="og:description" content="수목시세 정보 및 업무서비스 그린나우">
		<meta property="og:image" content="/" />
		<link rel="shortcut icon" href="${pageContext.request.contextPath }<c:url value='/images/grinnow/cmm/favicon-grinerp.ico'/>">
    	<title><%=application.getInitParameter("title") %></title>
    	<link rel="stylesheet" href="/css/grinnow/cmm/default.css">
	</head>
    <body class="light">
    	<div class="wrapper vh-100">
      		<div class="align-items-center h-100 d-flex w-50 mx-auto">
        		<div class="mx-auto text-center">
          			<h1 class="display-1 m-0 font-weight-bolder text-muted" style="font-size:80px;">404</h1>
          			<h1 class="mb-1 text-muted font-weight-bold">OOPS!</h1>
          			<h6 class="mb-3 text-muted">The page could not be found.</h6>
          			<a href="/page/index" class="btn btn-lg btn-primary px-5">Back to Main</a>
        		</div>
      		</div>
    	</div>
  	</body>
</html>