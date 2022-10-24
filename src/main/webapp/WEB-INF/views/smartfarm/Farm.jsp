<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-10-05
  Time: 오후 2:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>


<html>
<head>
    <title>Farm</title>

    <!-- 스타일시트 연결 -->
    <script src="http://code.jquery.com/jquery-latest.js"></script>

    <%-- 폰트 --%>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
    </style>

    <script src="${contextPath}/resources/JSON/Farm.json"></script>

    <script>
        function fn_clcik(number) {

            var display = document.getElementById("Information");

            if(display.style.display == "none"){
                display.style.display = "block";
            }
            else {
                 display.style.display = "none";
            }

            $.ajax({
                url : "${contextPath}/resources/JSON/Farm.json",
                dataType : "json",
                success : function(data){
                    if(data.length > 0){
                        // for(var i in data){
                        //     var $name = data[i].name;
                        //     var $price = data[i].price;
                        //     var $rating = data[i].rating;
                        //     var $content = data[i].content;
                        // }
                        document.getElementById("content1").innerHTML = data[number].name+"<br/>"+
                            "<img src=\"${contextPath}/resources/image/method/Fruit"+(number+1)+".jpg\" width=\"300px\" height=\"300px\" >"+"<br/>"
                            +data[number].content;
                        document.getElementById("content2").innerHTML = "재배 난이도 : "+data[number].rating;
                        document.getElementById("content3").innerHTML = "현재 시세 : "+data[number].price;
                    }
                },
                error : function(data,status){
                },
                complete : function(data,status){
                }
            }); // ajax end
        }


    </script>

    <style>
        #Information {
            margin: 10px;
            border-radius: 10px;
            border: 5px solid #04AA6D;
        }

        button {
            border : none;
            background: none;
        }

        .InfoBox {
            margin-top: 10px;
            margin-bottom: 20px;
        }

    </style>

</head>
<body>

<%--몸통--%>
<section>
    <article>
        <div id="Main_Box" align="center">
            <h1> 과일/채소.GG 입니다. </h1>

            <div class="d-flex justify-content-center" style="margin-bottom: 50px">
                <c:forEach var="i" begin="0" end="5">
                    <button id="Fbtn" onclick="fn_clcik(${i})">
                        <img src="${contextPath}/resources/image/과일/과일${i+1}.jpg" alt="과일${i+1}" width="100" height="100" class="rounded-circle">
                    </button>
                </c:forEach>
            </div>

            <div id="Information" style="display: none">
                <div class="InfoBox">
                    <h1 id="title"> 과일 정보 </h1>
                    <div id="content1">
                    </div>
                </div>
                <div class="InfoBox">
                    <h1 id="body1"> 과일 재배 방법 </h1>
                    <div id="content2">

                    </div>
                </div>
                <div class="InfoBox">
                    <h1 id="body2"> 과일 시세 </h1>
                    <div id="content3">
                    </div>
                </div>
            </div>

        </div>
    </article>
</section>

</body>
</html>
