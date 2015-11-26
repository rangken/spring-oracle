
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>Main page</title>
	<link type="text/css" rel="stylesheet" href="/index.css">
	<link type="text/css" rel="stylesheet" href="/common.css">
	<link type="text/css" rel="stylesheet" href="/movieselect.css">
	<link type="text/css" rel="stylesheet" href="/login.css">
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
			<li><a href="/users/movieselect">예매</a></li>
			<li><a href="/users/movielist">영화</a></li>
			<li><a href="/users/new">회원가입</a></li>
		</ul>
	</nav>
	<section class="content">
    	<p><b>예매 영화 선택</b></p>
    	<div id="select_date">
    			<ul>
    				<li onclick="alert('15세 이상 관람입니다.')">
    				<input type="radio" name="movie_select"/>
    				<img src="/img/visible_15.png">
    				<a href="#" class="re_link"> 검은사제들</a>
    				</li>

    				<li onclick="alert('15세 이상 관람입니다.')">
    				<input type="radio" name="movie_select"/>
    				<img src="/img/visible_15.png">
    				<a href="#" class="re_link"> 이터널 선샤인</a>
    				</li>

    				<li onclick="alert('15세 이상 관람입니다.')">
    				<input type="radio" name="movie_select"/>
    				<img src="/img/visible_15.png">
    				<a href="#" class="re_link"> 도리화가</a>
    				</li>

    				<li>
    				<input type="radio" name="movie_select"/>
    				<img src="/img/visible_12.png"><a href="#"> 마션</a>
    				</li>
    			</ul>
    			<li align="center"><button type="button" class="ok_btn" onClick="location.href='.././html/dateselect.html'" value="Jump">선택</button>
    			</li>
    			</div>
    	</section>

</body>
</html>