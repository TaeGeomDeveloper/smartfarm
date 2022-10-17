<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-10-05
  Time: 오후 2:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<html>
<head>
    <title>Login</title>

    <!-- 스타일시트 연결 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
          type="text/css">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    <%-- 폰트 --%>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
    </style>

    <script>
        function fn_sendPerson() {
            var SendPerson = document.SendPerson;

            SendPerson.method = "post";
            SendPerson.action = "./loginProcess.do";
            SendPerson.submit();
        }
    </script>

</head>

<body>
<%--몸통--%>
<section>
    <article>

        <div id="Main_Box" align="center">
            <form name="SendPerson">
                <table class="c" align="center">
                    <h1> 로그인 </h1>
                    <tr>
                    </tr>
                    <tr>
                        <td class="form-floating w-80" align="center">
                            <input type="text" class="form-control" id="floatingInput" placeholder="아이디" name="id">
                            <label for="floatingInput"></label>
                        </td>
                    </tr>
                    <tr>
                        <td class="form-floating w-80" align="center">
                            <input type="password" class="form-control" id="floatingPassword" placeholder="비밀번호" name="pwd">
                            <label for="floatingPassword"></label>
                        </td>
                    </tr>
                    <tr>
                        <td class="checkbox mb-3">
                            <input type="checkbox" value="remember-me"> 기억하기
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <button class="button w-100" type="submit" onclick="fn_sendPerson()">로그인</button>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <a href="deleteMember.do?id=${member.id}"> <button class="button2">ID 또는 PW 찾기</button></a>
                        </td>
                    </tr>
                    <td class="mt-5 mb-3 text-muted">&copy; 2022 기가막히조</td>
                    </tr>
                </table>
            </form>
        </div>

    </article>
</section>

</body>
</html>
