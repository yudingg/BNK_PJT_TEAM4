<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style scoped>
		@import url("../Common/css/Nav.css?ver=1");
	</style>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		$(function() {
			$('.logo').click(function() {
				location.href="../Main/Main.jsp"	
			})
			
			$('.nav-inner #donation').click(function() {
				location.href="../Donation/Donation.jsp"
			})
			
			$('.nav-inner #card').click(function() {
				location.href="../Card/Card.jsp"
			})
		})
	</script>
</head>

<body>
	<div class="nav row">
        <div class="nav-inner offset-1 col-4">
        	<img class="logo" src="../Common/img/logo.jpg">
       		<span id="login">로그인</span>
       		<span id="signup">회원가입</span>
       	</div>
        <div class="nav-inner offset-2 col-4">
       		<span id="donation">기부</span>
       		<span id="card">카드발급</span>
       		<span>이벤트</span>
       		<span>공지사항</span>
       	</div>
    </div>
</body>
</html>