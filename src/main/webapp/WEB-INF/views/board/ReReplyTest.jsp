<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-10-05
  Time: 오후 2:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert</title>

<%--    <input type="submit" value="댓글쓰기" onclick="goPage(1,document.frm)">--%>
<%--    <script>--%>
<%--        function goPage(type,frm){--%>
<%--            if(type==0){--%>
<%--                frm.action = "viewUpdateBook.do";--%>
<%--            } else {--%>
<%--                frm.action = "writeReply.do";--%>
<%--            }--%>
<%--            frm.submit();--%>
<%--        }--%>
<%--    </script>--%>

    <script>
        function fn_sendPerson(){

            var SendPerson = document.SendPerson;

            SendPerson.method = "post";
            SendPerson.action = "Join.do";
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
    사원정보 관리 입력
</header>

<%--네비--%>
<ul>
    <li><a class="active" href="#home">Home</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#about">About</a></li>
</ul>

<%--몸통--%>
<section>
<form action="writeReReply.do" method="post">
<table>
	<tr><td>아이디</td><td><input type="text" name="cbr_replyId"/></td><td></td><td></td></tr>
	<tr><td>내용</td><td><textarea rows="6" cols="50" name="cbr_content"></textarea></td><td></td><td></td></tr>
	<tr><td><input type="submit" value="test"/></td><td></td><td></td><td></td></tr>
</table>
</form>
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
