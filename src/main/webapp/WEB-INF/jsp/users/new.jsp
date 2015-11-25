    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page contentType="text/html;charset=UTF-8" %>
    <html>
    <head>
        <meta charset="utf-8">
        	<title>Login</title>
        	<link type="text/css" href="/common.css" rel="stylesheet">
        	<link type="text/css" rel="stylesheet" href="/login.css">
        	<link type="text/css" rel="stylesheet" href="/calendar.css">
    </head>
    <body>
    <header>
    		<h1>CATHOLIC CINEMA</h1>
    	</header>
    	<nav class="nav-bar">
    		<ul>
    			<li><a href="">HOME</li>
    			<li><a href=".././html/login.html">예매</li>
    			<li><a href="#">영화</li>
    			<li><a href="">마이시네마</li>
    		</ul>
    	</nav>
    	<section class="content">
        <p><b>회원가입</b></p>
        <form action="/users/create" method="POST" >
             아이디 :   <input name="name" type="text" /> <br>
             비밀번호 : <input name="password" type="password" /> <br>
             이메일 : <input name="email" type="text" /> <br>
            <input type="submit" name="가입" value="가입">
        </form>
    </section>
    </body>
    </html>