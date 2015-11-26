    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page contentType="text/html;charset=UTF-8" %>
    <html>
    <head>
        <meta charset="utf-8">
        	<title>SIGN IN</title>
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
    			<li><a href="/users/reserve">예매</a></li>
    			<li><a href="/users/movielist">영화</a></li>
    			<li><a href="/users/login">로그인</a></li>
    			<li><a href="/users/new">회원가입</a></li>
    		</ul>
    	</nav>

    	<section class="content">
        <p><b>SIGN IN</b></p>
        <form action="/users/create" method="GET" >
         <table align="center" border="1" bordercolor="white" cellspacing="0" cellpadding="2">
            <tr>
                <td bgcolor="#ececec" align="center">아이디</td>
                <td><input name="name" type="text" /></td>
            </tr>
            <tr>
                <td bgcolor="#ececec" align="center">비밀번호</td>
                <td><input name="password" type="password" /></td>
            </tr>
            <tr>
                <td bgcolor="#ececec"  colspan="2" align="center">
                <input type="submit" id="ok_btn" name="가입" value="로그인">
                </td>
            </tr>

         </table>
        </form>
    </section>
    </body>
    </html>