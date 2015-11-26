
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>Main page</title>
	<link type="text/css" rel="stylesheet" href="/movieText.css">
	<style>
	@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
	body{font-family: 'Nanum Gothic', sans-serif;}
	</style>
</head>
<body>
	<header>
		<h1>CATHOLIC CINEMA</h1>
	</header>
	<nav class="nav-bar">
		<ul>
			<li><a href="/users/home">HOME</a></li>
			<li><a href="/users/reserve">예매</a></li>
			<li><a href="/users/movielist">영화</a></li>
			<li><a href="/users/login">로그인</a></li>
			<li><a href="/users/new">회원가입</a></li>
		</ul>
	</nav>
	<section id="content">

		<div class="box">
		<div class="wrapper">
		<table id="movieText">
		<p align="center"><b>검은 사제들</b></p>
		<tr>
        		    <td><img src="/img/black.jpg", height="350", style="border:1; border-radius:30px;"></td>
        		    <td>
        		    <h4>줄거리</h4>
        		    2015년 서울
                                 뺑소니 교통사고 이후 의문의 증상에 시달리는 한 소녀(박소담).
                                 잦은 돌출 행동으로 교단의 눈 밖에 난 ‘김신부’(김윤석)는
                                 모두의 반대와 의심 속, 소녀를 구하기 위한 자신만의 계획을 준비한다.

                                 이를 위해선 모든 자격에 부합하는 또 한 명의 사제가 필요한 상황,
                                 모두가 기피하는 가운데 신학생인 ‘최부제’(강동원)가 선택되고,
                                 그는 ‘김신부’를 돕는 동시에 감시하라는 미션을 받게 된다.

                                 그리고 마침내 소녀를 구할 수 있는 단 하루의 기회,
                                 김신부와 최부제는 모두의 목숨을 잃을 수도 있는 위험한 예식을 시작하는데…
                                 “절대 쳐다보지마. 이제부터 넌 여기 없는 거야”
                    </td>
        		</tr>
		</table>


        </div>
		</div>

	</section>

</body>
</html>