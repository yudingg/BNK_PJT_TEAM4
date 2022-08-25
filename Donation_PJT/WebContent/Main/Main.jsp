<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	<style scoped>
		@import url("css/Main.css?ver=1");
		@import url("css/Modal.css?ver=1");
	</style>
	<script>
		$(function() {	
			$('#login').click(function() {
				openModalin();
			})
			
			$('.closein-button').click(function() {
				closeModalin();
			})
			
			$('#signup').click(function() {
				openModalout();
			})
			
			$('.closeout-button').click(function() {
				closeModalout();
			})
			
			$('.goToSignup').click(function() {
				closeModalin();
				openModalout();
			})
			
			$('.goToLogin').click(function() {
				closeModalout();
				openModalin();
			})
			
		})
		
		
		function openModalin() {
			$('.modalin').addClass("is-open");
			$('.modalin').css({"position": "absolute", "z-index": "1"});
			$('body').css("overflow", "hidden");
		};
	
		function closeModalin() {
			$('.modalin').removeClass("is-open");
			$('.modalin').css('position', 'fixed');
			$('body').css("overflow", "initial");
		};
		
		function openModalout() {
			$('.modalout').addClass("is-open");
			$('.modalout').css({"position": "absolute", "z-index": "1"});
			$('body').css("overflow", "hidden");
		};
	
		function closeModalout() {
			$('.modalout').removeClass("is-open");
			$('.modalout').css('position', 'fixed');
			$('body').css("overflow", "initial");
		};
		
		$(document).ready(function(){
		  // Activate Carousel
		  $("#myCarousel").carousel();
		    
		  // Enable Carousel Indicators
		  $(".item1").click(function(){
		    $("#myCarousel").carousel(0);
		  });
		  $(".item2").click(function(){
		    $("#myCarousel").carousel(1);
		  });
		  $(".item3").click(function(){
		    $("#myCarousel").carousel(2);
		  });
		    
		  // Enable Carousel Controls
		  $(".carousel-control-prev").click(function(){
		    $("#myCarousel").carousel("prev");
		  });
		  $(".carousel-control-next").click(function(){
		    $("#myCarousel").carousel("next");
		  });
		});
		
	</script>
</head>
<body>
    <%@ include file="../Common/Nav.jsp" %>
    <div class="modalin">
        <div class="modalin-container">
            <div class="modalin-left">
                <h1 class="modalin-title">환영합니다.!</h1>
                <p class="modalin-desc">기부를 하기 위해 로그인을 진행해주세요.</p>
                <div class="input-block">
                    <label for="email" class="input-label">이메일</label>
                    <input type="email" name="email" id="email" placeholder="Email">
                </div>
                <div class="input-block">
                    <label for="password" class="input-label">비밀번호</label>
                    <input type="password" name="password" id="password" placeholder="Password">
                </div>
                <br><br>
                <div class="modalin-buttons">
                    <a href="" class="">비밀번호 찾기</a>
                    <button class="input-buttonin">로그인</button>
                </div>
                <p class="sign-up">아직 계정이 없으신가요? <a href="#" class="goToSignup">&nbsp;회원가입하기</a></p>
            </div>
            <div class="modalin-right">
                <img src="img/MrB.jpg" alt="" style="width: 80%;">
            </div>
            <button class="icon-button closein-button">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50">
                    <path d="M 25 3 C 12.86158 3 3 12.86158 3 25 C 3 37.13842 12.86158 47 25 47 C 37.13842 47 47 37.13842 47 25 C 47 12.86158 37.13842 3 25 3 z M 25 5 C 36.05754 5 45 13.94246 45 25 C 45 36.05754 36.05754 45 25 45 C 13.94246 45 5 36.05754 5 25 C 5 13.94246 13.94246 5 25 5 z M 16.990234 15.990234 A 1.0001 1.0001 0 0 0 16.292969 17.707031 L 23.585938 25 L 16.292969 32.292969 A 1.0001 1.0001 0 1 0 17.707031 33.707031 L 25 26.414062 L 32.292969 33.707031 A 1.0001 1.0001 0 1 0 33.707031 32.292969 L 26.414062 25 L 33.707031 17.707031 A 1.0001 1.0001 0 0 0 32.980469 15.990234 A 1.0001 1.0001 0 0 0 32.292969 16.292969 L 25 23.585938 L 17.707031 16.292969 A 1.0001 1.0001 0 0 0 16.990234 15.990234 z"></path>
                </svg>
            </button>
		</div>
    </div>
    <div class="modalout">
        <div class="modalout-container">
            <div class="modalout-left">
                <h1 class="modalout-title">환영합니다.!</h1>
                <p class="modalout-desc">기부를 하기 위해 회원가입을 진행해주세요.</p>
                <div class="input-block">
                    <label for="email" class="input-label">이메일</label>
                    <input type="email" name="email" id="email" placeholder="Email">
                </div>
                <div class="input-block">
                    <label for="nickname" class="input-label">닉네임</label>
                    <input type="text" name="nickname" id="nickname" placeholder="Nickname">
                </div>
                <div class="input-block">
                    <label for="password" class="input-label">비밀번호</label>
                    <input type="password" name="password" id="password" placeholder="Password">
                </div>
                <div class="input-block">
                    <label for="passwordConfirm" class="input-label">비밀번호 확인</label>
                    <input type="password" name="passwordConfirm" id="passwordConfirm" placeholder="passwordConfirm">
                </div>
                <div class="modalout-buttons">
                    <button class="input-buttonout">회원가입</button>
                </div>
                <p class="sign-in">이미 계정이 있으신가요? <a href="#" class="goToLogin">&nbsp;로그인하기</a></p>
            </div>
            <div class="modalout-right">
                <img src="img/MrB.jpg" alt="" style="width: 80%;">
            </div>
            <button class="icon-button closeout-button">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50">
                    <path d="M 25 3 C 12.86158 3 3 12.86158 3 25 C 3 37.13842 12.86158 47 25 47 C 37.13842 47 47 37.13842 47 25 C 47 12.86158 37.13842 3 25 3 z M 25 5 C 36.05754 5 45 13.94246 45 25 C 45 36.05754 36.05754 45 25 45 C 13.94246 45 5 36.05754 5 25 C 5 13.94246 13.94246 5 25 5 z M 16.990234 15.990234 A 1.0001 1.0001 0 0 0 16.292969 17.707031 L 23.585938 25 L 16.292969 32.292969 A 1.0001 1.0001 0 1 0 17.707031 33.707031 L 25 26.414062 L 32.292969 33.707031 A 1.0001 1.0001 0 1 0 33.707031 32.292969 L 26.414062 25 L 33.707031 17.707031 A 1.0001 1.0001 0 0 0 32.980469 15.990234 A 1.0001 1.0001 0 0 0 32.292969 16.292969 L 25 23.585938 L 17.707031 16.292969 A 1.0001 1.0001 0 0 0 16.990234 15.990234 z"></path>
                </svg>
            </button>
		</div>
    </div>
    <div class="container my-5 pb-4">
    	<div class="row">
            <div class="col-7 d-flex align-items-center">
                <div class="about-text">
                    <h5 class="small-text">환영합니다 정재호 고객님</h5>
                    <h1 class="animated animated-text">
                        <span class="mr-2">잔액 조회</span>
                            <div class="animated-info">
                                <span class="animated-item">연동 계좌 : 6,400,000원</span>
                                <span class="animated-item">마일리지 : 500,000원</span>
                            </div>
                    </h1>
					<br>
                    <p>Building a successful product is a challenge. I am highly energetic in user experience design, interfaces and web development.</p>
                    <br><br>
                    <div class="d-flex justify-content-around">
                      <button class="btn-slide-line">계좌 관리</button>
                      <button class="btn-slide-line">마일리지 구매</button>
                      <button class="btn-slide-line">마일리지 내역</button>
                    </div>
                </div>
            </div>
			<br><br>
            <div class="col-5">
                <div class="about-image svg">
                    <img src="img/undraw_software_engineer_lvl5.svg" class="img-fluid" alt="svg image">
                </div>
            </div>

        </div>
    </div>
    <%@ include file="../Common/Footer.jsp" %>
</body>
</html>