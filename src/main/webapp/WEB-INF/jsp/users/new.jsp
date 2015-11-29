    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page contentType="text/html;charset=UTF-8" %>
    <html>
    <head>
        <meta charset="utf-8">
        	<title>SIGN UP</title>
        	<link type="text/css" rel="stylesheet" href="/login.css">
        	<link type="text/css" rel="stylesheet" href="/common.css">
        		<style>
            	@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
            	body{font-family: 'Nanum Gothic', sans-serif;}
            	</style>
    </head>
    <body>
        <jsp:include page="../header.jsp" />
    	<section class="content">
        <p><b>SIGN UP</b></p>
        <form action="/users/create" method="POST" >
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
                <td bgcolor="#ececec" align="center">이메일</td>
                <td><input name="email" type="text" /></td>
            </tr>

            <tr>
                <td bgcolor="#ececec"  colspan="2" align="center">
                <input type="submit" id="ok_btn" name="가입" value="가입">
                <input type="reset" id="ok_btn" value="초기화">
                </td>
            </tr>

         </table>
        </form>
    </section>
    </body>
    </html>