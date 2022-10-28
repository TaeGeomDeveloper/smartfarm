<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-10-05
  Time: 오후 2:38
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Main</title>

    <!-- 스타일시트 연결 -->
    <link rel="stylesheet" href="../CSS/List.css" type="text/css">
    <link rel="stylesheet" href="../CSS/Main2.css" type="text/css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
          type="text/css">

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
                    <button class="button"> 회원가입</button>
                </a>
            </li>
            <li>
                <a href="./Login.jsp">
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

<%--몸통--%>
<section>
    <article>
        <div id="Main_Box" align="center">
            <h1> Test 페이지 입니다. </h1>
            <table id="list_table">
                <tr>
                    <th>글번호</th>
                    <th id="title">제목</th>
                    <th>내용</th>
                    <th>아이디</th>
                    <th>조회수</th>
                    <th>작성일</th>
                    <th>첨부파일</th>
                    <th>다운로드 횟수</th>
                    <th>수정하기</th>
                </tr>
                    <tr>
                        <td>${board.cb_seq}</td>
                        <td>${board.cb_title}</td>
                        <td>${board.cb_content}</td>
                        <td>${board.mi_id}</td>
                        <td>${board.cb_viewCount}</td>
                        <td>${board.cb_regDate}</td>
                        <td>
                            <a href="download.do?seq=${board.cb_seq}&attachName=${board.cb_attachedFile}&token=on">
                                ${board.cb_attachedFile}
                            </a>
                        </td>
                        <td>${board.cb_downloadCount}</td>
                        <td><a href="viewUpdatePage.do?seq=${board.cb_seq}"><button>수정하기</button></a></td>
                    </tr>
            </table>

            <table>
                <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
                    <c:forEach var="reply" items="${replyList}">
                        <tr>
                            <td>${reply.cbr_seq}</td>
                            <td>${reply.cbr_replyId}</td>
                            <td style="background-color:lightgrey;">${reply.cbr_content}</td>
                            <td><a href="viewWriteReReply.do?cbSeq=${board.cb_seq}&cbrBundleSeq=${reply.cbr_bundleSeq}&cbr_currentSeq=${reply.cbr_currentSeq}">${reply.cbrBundleSeq}</a></td>
                            <td>${reply.cbr_currentSeq}</td>
                            <td>${reply.cbr_regDate}</td>
                            <td><button><a href="viewUpdateReply.do?cbSeq=${reply.cb_seq}&cbrSeq=${reply.cbr_seq}">수정하기</a></button></td>
                            <td><button><a href="deleteReply.do?cbSeq=${reply.cb_seq}&cbrSeq=${reply.cbr_seq}">삭제하기</a></button></td>
                        </tr>
                    </c:forEach>
            </table>

            <form action="writeReply.do?cbSeq=${board.cb_seq}" method="post">
                <table>
                    <tr>
                        <td>아이디 : <input type="text" name="cbr_replyId" /></td>
                    </tr>
                    <tr>
                        <td>댓글 : <textarea rows="6" cols="50" name="cbr_content"></textarea></td>
                        <td><input type="submit" value="댓글등록"></td>
                    </tr>
                </table>
            </form>
        </div>
    </article>
</section>

<main class="main">

</main>

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
