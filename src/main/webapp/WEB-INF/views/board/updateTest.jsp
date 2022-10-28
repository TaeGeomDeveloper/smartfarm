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
    <title>Main</title>

    <!-- 스타일시트 연결 -->
    <link rel="stylesheet" href="../CSS/List.css" type="text/css">
    <link rel="stylesheet" href="../CSS/Main2.css" type="text/css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" type="text/css">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    <%-- 폰트 --%>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
    </style>

    <script>
        function fn_sendPerson(){
            var SendPerson = document.SendPerson;

            SendPerson.method = "post";
            SendPerson.action = "updateBoard.do";
            SendPerson.submit();
        }
    </script>

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
                <a href="Register.do">
                    <button class="button"> 회원가입</button>
                </a>
            </li>
            <li>
                <a href="Login.do">
                    <button class="button"> 로그인</button>
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

        <div id="Main_Box" align="center">
            <h1> 회원가입 </h1>
            <form name="SendPerson" enctype="multipart/form-data">
                <table>
                    <tr>
                        <th>제목</th>
                        <td><input type="text" name="title"></td>
                        <td><input type="hidden" name="cb_seq" value="${cb_seq}"></td>
                    </tr>
                    <tr>
                        <th>내용</th> <td><input type="text" name="cb_content"></td>
                    </tr>
                    <tr>
                        <th>첨부파일</th> <td><input type="file" name="cb_attachedFile"></td>
                    </tr>
                </table>
                <button class="button2" onclick="fn_sendPerson()">수정하기</button>
            </form>
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
