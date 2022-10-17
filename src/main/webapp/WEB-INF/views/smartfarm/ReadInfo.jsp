<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-10-05
  Time: 오후 2:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ReadInfo</title>

    <!-- 스타일시트 연결 -->
    <link rel="stylesheet" href="../CSS/List.css" type="text/css">
    <link rel="stylesheet" href="../CSS/Main2.css" type="text/css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" type="text/css">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
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
        <ul>
            <li>
                <a href="./Register.jsp">
                    <button class="button"> 회원가입 </button>
                </a>
            </li>
            <li>
                <a href="./Login.jsp">
                    <button class="button"> 로그인 </button>
                </a>
            </li>
        </ul>
    </nav>

</section>

<section class="nav">
    <%--네비--%>
    <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="Main.do">Home</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
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
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            야채
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">시금치</a></li>
                            <li><a class="dropdown-item" href="#">고추</a></li>
                            <li><hr class="dropdown-divider"></li>
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

<%--몸통--%>
<section>
    <article>

        <div id="Main_Box">
            <h1> 회원정보 </h1>
            <table id="list_table">
                <tr>
                    <th>사원 번호</th>
                    <th id="title">이름</th>
                    <th id="content">주민번호</th>
                    <th>주소</th>
                    <th>연략처</th>
                </tr>
                <tr>
                    <td>
                        ${person.num}
                    </td>
                    <td>
                        ${person.name}
                    </td>
                    <td>
                        ${person.rNum}
                    </td>
                    <td>
                        ${person.address}
                    </td>
                    <td>
                        ${person.ph}
                    </td>
                </tr>

                <tr>
                    <th>근무형태</th>
                    <th>직급</th>
                    <th>부서</th>
                    <th>업무</th>
                    <th>월급</th>
                </tr>

                <tr>
                    <td>
                        ${emp.work_type}
                    </td>
                    <td>
                        ${emp.duty}
                    </td>
                    <td>
                        ${emp.dpt}
                    </td>
                    <td>
                        ${emp.task}
                    </td>
                    <td>
                        ${emp.sal}
                    </td>
                </tr>

                <tr>
                    <th>내/외국인</th>
                    <th>입사일</th>
                    <th>퇴사일</th>
                    <th>근속기간</th>
                </tr>

                <tr>
                    <td>
                        ${emp.loc}
                    </td>
                    <td>
                        ${emp.joinDate}
                    </td>
                    <td>
                        ${emp.outDate}
                    </td>
                    <td>
                        ${emp.serveTime}
                    </td>
                </tr>
            </table>
        </div>

    </article>
</section>

<%--푸터--%>
<div class="container">
    <footer class="py-3 my-4">
        <ul class="nav justify-content-center border-bottom pb-3 mb-3">
            <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Home</a></li>
            <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Features</a></li>
            <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Pricing</a></li>
            <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">FAQs</a></li>
            <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">About</a></li>
        </ul>
        <p class="text-center text-muted">&copy; 2022 기가막히조</p>
    </footer>
</div>

</body>
</html>
