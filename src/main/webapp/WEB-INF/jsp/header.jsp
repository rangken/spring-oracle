<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<header>
    <img src="img/logo.png" width="250px" height="70px">
    <span id="name" style="float:right; margin-top: 0px;" >
        <c:if test="${user != null }">
            안녕하세요! ${user.name} 님
        </c:if>
    </span>
</header>
<nav class="nav-bar">
    <ul>
        <li><a href="/home">HOME</a></li>
        <li><a href="/reserves">예매</a></li>
        <li><a href="/reserves/list">예매내역</a></li>
        <c:if test="${user == null }">
            <li><a href="/users/login">로그인</a></li>
            <li><a href="/users/new">회원가입</a></li>
        </c:if>
        <c:if test="${user != null}">
            <li><a href="/users/logout">로그아웃</a></li>
        </c:if>
    </ul>

</nav>