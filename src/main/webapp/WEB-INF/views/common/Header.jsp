<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-10-13
  Time: 오전 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<html>
<head>
    <title>Header</title>
    <link rel="stylesheet" href="${contextPath}/resources/CSS/List.css" type="text/css" />
    <link rel="stylesheet" href="${contextPath}/resources/CSS/Main2.css" type="text/css" />
    <%-- 폰트 --%>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
    </style>

</head>
<body>

<%--헤더--%>
<section class="head">
    <header>
        스마트팜
    </header>
    <nav>
        <c:choose>
            <c:when test="${user != null}">
                <h5 align="right">환영합니다. ${user.name}님! </h5>
                <ul>
                    <li>
                        <a href="ReadInfo.do">
                            <button class="button">내정보</button>
                        </a>
                    </li>
                    <li>
                        <a href="Logout.do">
                            <button class="button">로그아웃</button>
                        </a>
                    </li>
                </ul>
            </c:when>
            <c:otherwise>
                <ul>
                    <li>
                        <a href="${contextPath}/smartfarm/Register.do">
                            <button class="button">회원가입</button>
                        </a>
                    </li>
                    <li>
                        <a href="${contextPath}/smartfarm/Login.do">
                            <button class="button">로그인</button>
                        </a>
                    </li>
                </ul>
            </c:otherwise>
        </c:choose>
    </nav>

</section>

<section class="nav">
    <%--네비--%>
    <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="${contextPath}/smartfarm/Main.do">Home</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll"
                    aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarScroll">
                <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">서비스소개</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">과일</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                           aria-expanded="false">
                            야채
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">시금치</a></li>
                            <li><a class="dropdown-item" href="#">고추</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">토마토</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled">사용자 UI</a>
                    </li>
                </ul>
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
</section>

</body>
</html>
