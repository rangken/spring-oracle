    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page contentType="text/html;charset=UTF-8" %>
    <html>
    <head>
        <meta charset="utf-8">
    </head>
    <body>
        <h2> 유저가입 </h2>
        <form action="/users/create" method="POST" >
            <h2> 아이디 : </h2>  <input name="name" type="text" /> <br>
            <h2> 비밀번호 :</h2> <input name="password" type="password" /> <br>
            <h2> 이메일 : </h2> <input name="email" type="text" /> <br>
            <input type="submit" name="가입">
        </form>
    </body>
    </html>