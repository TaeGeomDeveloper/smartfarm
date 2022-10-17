<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-10-05
  Time: 오후 3:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>UpdatePage</title>

    <script>
        function fn_sendPerson(){

            var SendPerson = document.SendPerson;

            SendPerson.method = "post";
            SendPerson.action = "UpdateInfo.do";
            SendPerson.submit();
        }
    </script>

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
    사원정보 변경
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
            <form name="SendPerson">
                <table id="list_table">
                    <tr>
                        <th>사원 번호</th> <td><input type="text" name="Num" value="${person.num}" readonly="readonly"></td>
                    </tr>
                    <tr>
                        <th>사원 이름</th> <td><input type="text" name="Name" value="${person.name}"></td>
                    </tr>
                    <tr>
                        <th>주민등록번호</th><td><input type="text" name="rNum" value="${person.rNum}"></td>
                    </tr>
                    <tr>
                        <th>주소</th><td><input type="text" name="address" value="${person.address}"></td>
                    </tr>
                    <tr>
                        <th>연락처</th><td><input type="text" name="ph" value="${person.ph}"></td>
                    </tr>
                    <tr>
                        <th>근무형태</th>
                        <td>정규직<input type="radio" name="work_type" value="Y">
                            계약직<input type="radio" name="work_type" value="N"></td>
                    </tr>
                    <tr>
                        <th>직책</th><td><input type="text" name="duty" value="${emp.duty}"></td>
                    </tr>
                    <tr>
                        <th>부서</th><td><input type="text" name="dpt" value="${emp.dpt}"></td>
                    </tr>
                    <tr>
                        <th>담당 업무</th><td><input type="text" name="task" value="${emp.task}"></td>
                    </tr>
                    <tr>
                        <th>월급</th><td><input type="text" name="sal" value="${emp.sal}"></td>
                    </tr>
                    <tr>
                        <th>내/외국인</th>
                        <td>내국인<input type="radio" name="loc" value="Y">
                            외국인<input type="radio" name="loc" value="N"></td>
                    </tr>
                    <tr>
                        <th>입사일</th><td><input type="text" name="" value="${emp.joinDate}"></td>
                    </tr>
                    <tr>
                        <th>퇴사일</th><td><input type="text" name="" value="${emp.outDate}"></td>
                    </tr>
                </table>

                <button class="button2" onclick="fn_sendPerson()">수정 하기</button>
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
