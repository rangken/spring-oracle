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
<jsp:include page="../header.jsp" />
<section id="content">
    <div class="box">
        <img src=".././img/cat.png" width="200px" height="100px" style="margin-left: 350px; margin-top: 100px;">
            <p style="text-align: center; font-size: 20px;"> 이미 존재하는 사용자입니다.</p>

        <br>
    </div>
</section>
</body>
</html>