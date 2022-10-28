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
                <h5 align="right">환영합니다. ${user.mi_name}님! </h5>
                <ul>
                    <li>
                        <a href="ReadInfo.do?mi_id=${user.mi_id}&mode=r">
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
                        <a class="nav-link active" aria-current="page" href="${contextPath}/smartfarm/ItemInfo.do">서비스소개</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                           aria-expanded="true">
                            알림 소식
                        </a>
                        <ul class="dropdown-menu gap-1 p-2 rounded-3 mx-0 shadow w-220px">
                            <li><a class="dropdown-item rounded-2 active" href="${contextPath}/smartfarm/Notice.do">공지사항</a></li>
                            <li><a class="dropdown-item rounded-2" href="${contextPath}/smartfarm/Board.do">자유게시판</a></li>
                            <li><a class="dropdown-item rounded-2" href="${contextPath}/smartfarm/News.do">관련 뉴스</a></li>
                            <li><a class="dropdown-item rounded-2" href="${contextPath}/smartfarm/Support.do">농부 지원 사업</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item rounded-2" href="${contextPath}/smartfarm/Reference.do">자료실</a></li>
                        </ul>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                           aria-expanded="true">
                            스마트팜
                        </a>
                        <ul class="dropdown-menu gap-1 p-2 rounded-3 mx-0 shadow w-220px">
                            <li><a class="dropdown-item rounded-2" href="#">스마트팜 이란</a></li>
                            <li><a class="dropdown-item rounded-2" href="#">스마트팜 지원사업</a></li>
                            <li><a class="dropdown-item rounded-2" href="${contextPath}/board/CreateNewBoard.do">Test</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item rounded-2" href="${contextPath}/smartfarm/PotatoSalesList.do">스마트팜 장비</a></li>
                        </ul>
                    </li>

                    <c:choose>
                        <c:when test="${user != null}">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                                   aria-expanded="true">
                                    귀농 지원 서비스
                                </a>

                                <ul class="dropdown-menu gap-1 p-2 rounded-3 mx-0 shadow w-220px">
                                    <li><a class="dropdown-item rounded-2 active" href="${contextPath}/smartfarm/Farm.do">작물 선택</a></li>
                                    <li><a class="dropdown-item rounded-2" href="${contextPath}/smartfarm/HowFarmer.do">귀농 절차</a></li>
                                    <li><a class="dropdown-item rounded-2" href="${contextPath}/smartfarm/Advice.do">전문가 상담/문의</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item rounded-2" href="${contextPath}/smartfarm/AgriculturalSupplies.do">농업 용품</a></li>
                                </ul>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li class="nav-item">
                                <a class="nav-link disabled">귀농 지원 서비스</a>
                            </li>
                        </c:otherwise>
                    </c:choose>
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
