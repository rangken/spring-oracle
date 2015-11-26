
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>Main page</title>
	<link type="text/css" rel="stylesheet" href="/index.css">
	<link type="text/css" rel="stylesheet" href="/common.css">
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
			<table align="center", width="900", height="500", frame="void", rules="none">
				<tr>
					<td colspan="4", align="center"> <h2> 현재 상영작 </h2> </td>
				</tr>
				<tr>
					<td width="225", height="400" align="center">
						<a href="/users/movie1"><img src="/img/black.jpg", height="250", style="border:1; border-radius:30px;"></a>
						<br>1.<img src="/img/visible_15.png">검은 사제들
					</td>
					<td width="225", height="400" align="center">
						<img src="/img/dori1.jpg", height="250", style="border:1; border-radius:30px;">
						<br>2.<img src="/img/visible_12.png">도리화가
					</td>
					<td width="225", height="400" align="center">
						<img src="/img/movie33.jpg", height="250", style="border:1; border-radius:30px;">
						<br>3.<img src="/img/visible_18.png">내부자들
					</td>
					<td width="225", height="400" align="center">
						<img src="/img/movie4.jpg", height="250", style="border:1; border-radius:30px;">
						<br>4.<img src="/img/visible_15.png">헝거게임:더 파이널
					</td>
				</tr>
			</table>
		</div>

	</section>

</body>
</html>