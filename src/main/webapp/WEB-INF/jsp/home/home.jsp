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
			<table align="center", width="900", height="500", frame="void", rules="none">
				<tr>
					<td colspan="4", align="center"> <h2> 현재 상영작 </h2> </td>
				</tr>
				<tr>
				    <c:forEach items="${movies}" var="movie">
                        <td width="225", height="400" align="center">
                            <a href="/movies/${movie.id}"><img src="${pageContext.request.contextPath}/${movie.imgPath}", height="250", style="border:1; border-radius:30px;"></a>
                            <br>${movie.id}. <img src="/img/visible_${movie.age}.png">${movie.title}
                        </td>
					</c:forEach>
				</tr>
			</table>
		</div>

	</section>

</body>
</html>