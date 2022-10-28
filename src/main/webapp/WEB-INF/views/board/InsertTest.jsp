<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-10-05
  Time: 오후 2:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>Insert</title>

<!-- Smart editor -->
    <script type="text/javascript" src="//code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="${contextPath}/resources/smarteditor/js/HuskyEZCreator.js"></script>
    <script src="${contextPath}/resources/JS/writeForm.js"></script>
<%--    <script type="text/javascript" charset="utf-8" src="<c:url value="${contextPath}/resources/JS/writeForm.js"/>"></script>--%>
<!-- -->

    <!-- 스타일시트 연결 -->

    <%-- 폰트 --%>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
    </style>

</head>
<body>

<%--몸통--%>
<section>
<form action="createBoard.do" id="frm" method="post" enctype="multipart/form-data">
<table>
	<tr><td>아이디</td><td><input type="text" name="mi_id"/></td><td></td><td></td></tr>
	<tr><td>제목</td><td><input type="text" name="cb_title"/></td><td></td><td></td></tr>
	<tr><td>내용</td><td style="width: 800px"><textarea name="cb_content" id="cb_content" rows="30" cols="100" placeholder="내용을 입력해주세요"></textarea></td><td></td><td></td></tr>
	<tr><td>첨부파일</td><td><input type="file" name="cb_attachedFile"/></td><td></td><td></td></tr>
	<tr><td><input type="submit" id="savebutton" value="test"/></td><td></td><td></td><td></td></tr>
</table>
</form>
</section>

</body>
</html>
