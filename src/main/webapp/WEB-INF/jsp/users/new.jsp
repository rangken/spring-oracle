    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page contentType="text/html;charset=UTF-8" %>
    <html>
    <head>
        <meta charset="utf-8">
        	<title>Login</title>
        	<link type="text/css" rel="stylesheet" href="/login.css">
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
    			<li><a href=".././html/login.html">예매</a></li>
    			<li><a href="#">영화</a></li>
    			<li><a href="/users/new">회원가입</a></li>
    		</ul>
    	</nav>
    	<section class="content">
        <p><b>회원가입</b></p>
        <form action="/users/create" method="POST" >
             아이디 :   <input name="name" type="text" /> <br>
             비밀번호 : <input name="password" type="password" /> <br>
             이메일 : <input name="email" type="text" /> <br>
            <input type="submit" id="ok_btn" name="가입" value="가입">
        </form>
    </section>
    </body>
    </html>