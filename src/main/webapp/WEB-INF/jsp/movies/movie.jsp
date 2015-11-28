
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@ page contentType="text/html;charset=UTF-8" %>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Main page</title>
        <link type="text/css" rel="stylesheet" href="/movieText.css">
        <style>
        @import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
        body{font-family: 'Nanum Gothic', sans-serif;}
        </style>
    </head>
    <body>
        <jsp:include page="../header.jsp" flush="false" />
        <section id="content">

            <div class="box">
            <div class="wrapper">
            <table id="movieText">
            <p align="center"><b>검은 사제들</b></p>
            <tr>
                <td><img src="${pageContext.request.contextPath}/${movie.imgPath}", height="350", style="border:1; border-radius:30px;"></td>
                <td>
                    <h4>줄거리</h4>
                    ${movie.describe}
                </td>
            </tr>
            </table>

            </div>
            </div>

        </section>

    </body>
    </html>