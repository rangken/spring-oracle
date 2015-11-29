<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>예매 목록</title>
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

    <div class="box" style="overflow:scroll">
        <table  border="0" bordercolor="white" align="center">
            <h2 align="center"> ${title} </h2>
            <c:forEach items="${reserves}" var="reserve">
            <br/>
            <tr>
                <td colspan="4" bgcolor="#F2F0E4" align="center">예매 내역</td>
            </tr>
            <tr>
                <td colspan="4" align="center"><img src="${pageContext.request.contextPath}/${reserve.movie.imgPath}", height="250", style="border:1; border-radius:30px;"></td>
                </td>
            </tr>
            <tr>
                <td bgcolor="#F2F0E4" align="center">예매 영화</td>
                <td><c:out value="${reserve.movie.title}" /></td>
            </tr>
            <tr>
                <td bgcolor="#F2F0E4" align="center">상영 날짜</td>
                <td><c:out value="${reserve.movieDateStr}" /></td>
            </tr>
            <td bgcolor="#F2F0E4" align="center">상영관</td>
            <td><c:out value="${reserve.theater}" /></td>
            <tr>

                </c:forEach>
        </table>
    </div>
</section>

<br>
</body>
</html>