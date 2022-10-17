<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-10-05
  Time: 오후 3:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Read</title>

    <!-- 스타일시트 연결 -->
    <link rel="stylesheet" href="../CSS/List.css" type="text/css">
    <link rel="stylesheet" href="../CSS/Main2.css" type="text/css">

    <%-- 폰트 --%>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
    </style>

</head>
<body>

<%--헤더--%>
<header>
    사원정보 읽어오기
</header>

<%--네비--%>
<ul>
    <li><a class="active" href="#home">Home</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#about">About</a></li>
</ul>

<%--몸통--%>
<section>
    <nav2>
        <ul>
            <li>
                <a href="List.do">
                    <button class="button"> 리스트 불러오기 </button>
                </a>
            </li>
            <li>
                <a href="Insert.do">
                    <button class="button"> 신원정보 작성하기 </button>
                </a>
            </li>
            <li>
                <a href="Main.do">
                    <button class="button"> Main </button>
                </a>
            </li>
        </ul>
    </nav2>
    <article>

        <div id="Main_Box">
            <h1> 사원정보 </h1>
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
