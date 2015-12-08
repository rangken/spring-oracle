<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <title>예매</title>
    <link type="text/css" rel="stylesheet" href="/login.css">
    <link type="text/css" rel="stylesheet" href="/common.css">
    <style>
        @import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
        body{font-family: 'Nanum Gothic', sans-serif;}
    </style>
    <title>Reserve Page</title>
</head>
<jsp:include page="../header.jsp" />
<section class="content">
    <p><b>예매 페이지</b></p>
    <form action="/reserves/createReserve" method="POST" >
        <table align="center" border="1" bordercolor="white" cellspacing="0" cellpadding="2">
            <tr>
                <td colspan="2" align="center" bgcolor="#F2F0E4">예매 정보 선택</td>
            </tr>
            <tr>
                <td bgcolor="#F2F0E4">영화 선택</td>
                <td>
                    <input type="radio" name="movie_id" value="1">
                    <img src="/img/visible_15.png">1. 검은 사제들
                    <input type="radio" name="movie_id" value="2">
                    <img src="/img/visible_12.png">2. 도리화가
                    <input type="radio" name="movie_id" value="3">
                    <img src="/img/visible_18.png">3. 내부자들
                    <input type="radio" name="movie_id" value="4">
                    <img src="/img/visible_15.png">4. 헝거게임:더 파이널
                </td>
            </tr>

            <tr>
                <td bgcolor="#F2F0E4">상영 날짜</td>
                <td>
                    <input type="radio" name="date" value="11/08"> 11/08
                    <input type="radio" name="date" value="11/09"> 11/09
                    <input type="radio" name="date" value="11/10"> 11/10
                    <input type="radio" name="date" value="11/11"> 11/11
                    <input type="radio" name="date" value="11/12"> 11/12
                    <input type="radio" name="date" value="11/13"> 11/13

                </td>
            </tr>
            <tr>
                <td bgcolor="#F2F0E4">상영 시간</td>
                <td>
                    <input type="radio" name="time" value="09:00"> 09:00
                    <input type="radio" name="time" value="09:00"> 12:00
                    <input type="radio" name="time" value="09:00"> 15:00
                    <input type="radio" name="time" value="09:00"> 18:00
                    <input type="radio" name="time" value="09:00"> 21:00
                </td>
            </tr>
            <tr>
                <td bgcolor="#F2F0E4">상영관</td>
                <td>
                    <input type="radio" name="theater" value="강남"> 강남
                    <input type="radio" name="theater" value="홍대"> 홍대
                    <input type="radio" name="theater" value="신촌"> 신촌
                </td>
            </tr>
            <tr>
                <td colspan="2" bgcolor="#F2F0E4" align="center">
                    <input type="submit" id="ok_btn" name="완료" value="완료"></td>
            </tr>
        </table>
    </form>
</section>
</body>
</html>