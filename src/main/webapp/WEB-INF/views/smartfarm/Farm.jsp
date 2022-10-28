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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>



    <%-- 폰트 --%>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
    </style>

    <script src="${contextPath}/resources/JSON/Farm2.json"></script>

    <script>
        $(document).ready(function () {
            $("#flip").click(function () {
                $("#window").slideToggle("slow");
            });
        });
    </script>

    <script>
        function PDF_popup(){
            var pop = window.open("${contextPath}/resources/PDF/Pdf1.jsp", "pop", "width=600,height=800, scrollbars=yes, resizable=yes");
        }

        function fn_click(number) {

            $(document).ready(function () {
                $("#Information").slideToggle("slow");

                $("#menu1").click(function () {
                    $("#Info_menu1").slideDown("slow");
                    $("#Info_menu2").slideUp("slow");
                    $("#Info_menu3").slideUp("slow");
                    $("#Info_menu4").slideUp("slow");
                    $("#Info_menu5").slideUp("slow");
                });
                $("#menu2").click(function () {
                    $("#Info_menu1").slideUp("slow");
                    $("#Info_menu2").slideDown("slow");
                    $("#Info_menu3").slideUp("slow");
                    $("#Info_menu4").slideUp("slow");
                    $("#Info_menu5").slideUp("slow");
                });
                $("#menu3").click(function () {
                    $("#Info_menu1").slideUp("slow");
                    $("#Info_menu2").slideUp("slow");
                    $("#Info_menu3").slideDown("slow");
                    $("#Info_menu4").slideUp("slow");
                    $("#Info_menu5").slideUp("slow");
                });
                $("#menu4").click(function () {
                    $("#Info_menu1").slideUp("slow");
                    $("#Info_menu2").slideUp("slow");
                    $("#Info_menu3").slideUp("slow");
                    $("#Info_menu4").slideDown("slow");
                    $("#Info_menu5").slideUp("slow");
                });
                $("#menu5").click(function () {
                    $("#Info_menu1").slideUp("slow");
                    $("#Info_menu2").slideUp("slow");
                    $("#Info_menu3").slideUp("slow");
                    $("#Info_menu4").slideUp("slow");
                    $("#Info_menu5").slideDown("slow");
                });

                $.ajax({
                    url: "${contextPath}/resources/JSON/Farm2.json",
                    dataType: "json",
                    success: function (data) {
                        if (data.length > 0) {

                            // 기본 정보
                            document.getElementById("Fruit_Title").innerHTML = data[number].name;
                            document.getElementById("content1").innerHTML =  data[number].content;
                            document.getElementById("FruitPic").innerHTML = "<img src=\"${contextPath}/resources/image/과일/과일" + (number + 1) + ".jpg\" width=\"300px\" height=\"300px\" style=\"border-radius: 20px\" >";
                            document.getElementById("SmallInfo").innerHTML = data[number].SmallInfo;

                            // 재배 기술
                            document.getElementById("FruitPic2").innerHTML = "<img src=\"${contextPath}/resources/image/method/Fruit" + (number + 1) + ".jpg\" width=\"300px\" height=\"300px\" style=\"border-radius: 20px\" >";
                            document.getElementById("level").innerHTML = "재배 난이도 : " + data[number].rating + "<br/>";

                            document.getElementById("content2").innerHTML = data[number].content2 + "<br/>";
                            document.getElementById("content3").innerHTML = "현재 시세 : " + data[number].price;
                        }
                    },
                    error: function (data, status) {
                    },
                    complete: function (data, status) {
                    }
                }); // ajax end
            });
        }


        function fn_clcik2(number) {
            var display = document.getElementById("Information2");

            if (display.style.display == "none") {
                display.style.display = "block";
            } else {
                display.style.display = "none";
            }

            $.ajax({
                url: "${contextPath}/resources/JSON/Farm2.json",
                dataType: "json",
                success: function (data) {
                    if (data.length > 0) {
                        document.getElementById("content4").innerHTML = data[number].name + "<br/>"
                            + data[number].content;
                        document.getElementById("FruitPic").innerHTML = "<img src=\"${contextPath}/resources/image/과일/과일" + (number + 1) + ".jpg\" width=\"300px\" height=\"300px\" style=\"border-radius: 20px\" >";
                        document.getElementById("FruitPic2").innerHTML = "<img src=\"${contextPath}/resources/image/method/Fruit" + (number + 1) + ".jpg\" width=\"300px\" height=\"300px\" style=\"border-radius: 20px\" >";

                        document.getElementById("content5").innerHTML = "재배 난이도 : " + data[number].rating + "<br/>";
                        document.getElementById("content6").innerHTML = "현재 시세 : " + data[number].price;
                    }
                },
                error: function (data, status) {
                },
                complete: function (data, status) {
                }
            }); // ajax end
        }
    </script>

    <style>
        .pdfobject-container { height: 30rem; border: 1rem solid rgba(0,0,0,.1); }

        .b-example-divider {
            height: 3rem;
            background-color: rgba(0, 0, 0, .1);
            border: solid rgba(0, 0, 0, .15);
            border-width: 1px 0;
            box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
        }

        #Information {
            margin: 10px;
            border-radius: 10px;
            border: 5px solid #04AA6D;
        }

        #Information2 {
            margin: 10px;
            border-radius: 10px;
            border: 5px solid #04AA6D;
        }

        button {
            border: none;
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
        <main>
            <%--            <h1 style="text-align: center; margin-top: 30px"> 작물 선택 </h1>--%>

            <div class="p-5 mb-4 bg-light rounded-3">
                <div class="container-fluid py-5">
                    <h1 class="display-5 fw-bold">작물 선택</h1>
                    <p class="col-md-8 fs-4"> 자신의 여건과 적성, 기술수준, 자본능력 등에 적합한 작물을 신중하게 선택해야 합니다. <br/>
                        지역 특산물을 우선 (지역의 자금 지원,기술 지원)<br/>
                        지역 환경 고려<br/>
                        귀농에 따른 생각에 따라 달라질수 있다.<br/>
                        교육 기관에서 어떤 작목을 배웠느냐도 결정요소가 된다.
                    </p>

                    <form>
                        <div style="width: 20%">
                            지역
                            <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                                <option selected>전체</option>
                                <option value="1">경상북도</option>
                                <option value="2">경상남도</option>
                                <option value="3">전라도</option>
                            </select>
                            기술수준
                            <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                                <option selected>없음</option>
                                <option value="1">초보자</option>
                                <option value="2">중수</option>
                                <option value="3">고수</option>
                            </select>
                        </div>
                    </form>

                    <button class="btn btn-primary btn-lg" type="button" id="flip">작물 골라보기</button>
                </div>
            </div>

            <div id="window" style="display: none">

                <div id="Main_Box" align="center">
                    <div class="d-flex justify-content-center" style="margin-bottom: 30px">
                        <c:forEach var="i" begin="0" end="6">
                            <button id="Fbtn" onclick="fn_click(${i})">
                                <img src="${contextPath}/resources/image/과일/과일${i+1}.jpg" alt="과일${i+1}" width="100" height="100" class="rounded-circle" >
                            </button>
                        </c:forEach>
                    </div>

                    <div id="Information" style="display: none; background: lavender">

                        <div style="margin-top: 16px">
                            <button type="button" class="btn btn-outline-primary" id="menu1">기본 정보</button>
                            <button type="button" class="btn btn-outline-success" id="menu2">재배 기술</button>
                            <button type="button" class="btn btn-outline-secondary" id="menu3">시세 정보</button>
                            <button type="button" class="btn btn-outline-danger" id="menu4">유투브 영상</button>
                            <button type="button" class="btn btn-outline-warning" id="menu5">작물 게시판</button>
                        </div>

                        <!-- START THE FEATURETTES -->
                        <hr class="featurette-divider">

                        <div id="Info_menu1" style="display: none">
                            <h1> 과일 정보 </h1>
                            <div class="row featurette">
                                <div class="col-md-7">
                                    <h2 class="featurette-heading fw-normal lh-1" id="Fruit_Title"> 제목 A </h2>
                                    <p class="lead" id="SmallInfo"> 부가 설명 입니다. </p>
                                    <div class="InfoBox">
                                        <div id="content1"></div>
                                    </div>
                                </div>
                                <div class="col-md-5">
                                    <div id="FruitPic"></div>
                                </div>
                            </div>

                            <hr class="featurette-divider">
                            <h1> 종류 </h1>
                            <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">

                            <div class="carousel-inner">
                                <div class="carousel-item">
                                    <svg class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="800" height="400" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: First slide" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title>

                                        <rect width="100%" height="100%" fill="#777"></rect>

                                    </svg>

                                </div>

                                <div class="carousel-item active">
                                    <svg class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="800" height="400" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Second slide" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title>

                                        <rect width="100%" height="100%" fill="#666"></rect>
                                    </svg>

                                </div>

                                <div class="carousel-item">
                                    <svg class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="800" height="400" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Third slide" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title>

                                        <rect width="100%" height="100%" fill="#555"></rect>
                                    </svg>

                                </div>
                            </div>

                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>

                            <hr class="featurette-divider">
                            <h1> 품종 </h1>

                            <div class="d-flex justify-content-center">
                                <div class="card">
                                    <svg
                                            class="bd-placeholder-img card-img-top"
                                            width="100%"
                                            height="180"
                                            xmlns="http://www.w3.org/2000/svg"
                                            role="img"
                                            aria-label="Placeholder: Image cap"
                                            preserveAspectRatio="xMidYMid slice"
                                            focusable="false"
                                    >
                                        <title>Placeholder</title>
                                        <!-- <rect width="100%" height="100%" fill="#868e96"></rect> -->
                                    </svg>

                                    <div class="card-body">
                                        <h5 class="card-title">Card 제목</h5>
                                        <p class="card-text">내용.</p>
                                    </div>
                                </div>
                                <div class="card">
                                    <svg
                                            class="bd-placeholder-img card-img-top"
                                            width="100%"
                                            height="180"
                                            xmlns="http://www.w3.org/2000/svg"
                                            role="img"
                                            aria-label="Placeholder: Image cap"
                                            preserveAspectRatio="xMidYMid slice"
                                            focusable="false"
                                    >
                                        <title>Placeholder</title>
                                        <!-- <rect width="100%" height="100%" fill="#868e96"></rect> -->
                                    </svg>

                                    <div class="card-body">
                                        <h5 class="card-title">Card 제목</h5>
                                        <p class="card-text">내용.</p>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div id="Info_menu2" style="display: none">
                            <h1> 생산 기술 </h1>
                            <div class="row featurette">
                                <div class="col-md-7 order-md-2">
                                    <h2 class="featurette-heading fw-normal lh-1" id="level"> 제목 B </h2>
                                    <p class="lead"> 부가 설명 입니다. </p>
                                    <div class="InfoBox">
                                        <div id="content2"></div>
                                    </div>
                                </div>
                                <div class="col-md-5 order-md-1">
                                    <div id="FruitPic2" onclick="PDF_popup()"></div>
                                </div>
                            </div>
                        </div>

                        <div id="Info_menu3" style="display: none">
                            <h1> 과일 시세 </h1>
                            <div class="row featurette">
                                <div class="col-md-7">
                                    <h2 class="featurette-heading fw-normal lh-1"> 제목 C </h2>
                                    <p class="lead"> 부가 설명 입니다. </p>
                                    <div class="InfoBox">
                                        <div id="content3"></div>
                                    </div>
                                </div>
                                <div class="col-md-5">
                                    <%--<img src="${contextPath}/resources/image/농기계.jpg" alt="promo1" width="500" height="500">--%>
                                </div>
                            </div>
                        </div>

                        <div id="Info_menu4" style="display: none">
                            <h1> 유투브 영상 </h1>
                        </div>

                        <div id="Info_menu5" style="display: none">
                            <h1> 작물 게시판 </h1>
                        </div>

                        <hr class="featurette-divider">
                        <!-- /END THE FEATURETTES -->
                        <div class="form-floating">
                            <h2>운영 팁</h2>
                            <div class="d-flex">
                                <div class="p-2 w-100">
                                    <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea>
<%--                                    <label for="floatingTextarea2">Comments</label>--%>
                                </div>
                                <div class="p-2 flex-shrink-0">
                                    <button class="button2">등록</button>
                                </div>
                            </div>
                        </div>
                        <table class="table table-sm">
                            <tr class="table-secondary">
                                <td class="table-secondary">
                                    댓글
                                </td>
                            </tr>
                            <tr class="table-secondary">
                                <td class="table-secondary">
                                    댓글
                                </td>
                            </tr>
                            <tr class="table-secondary">
                                <td class="table-secondary">
                                    댓글
                                </td>
                            </tr>
                            <tr class="table-secondary">
                                <td class="table-secondary">
                                    댓글
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>

                <div id="Main_Box2" align="center" style="margin-bottom: 30px">
                    <div class="d-flex justify-content-center" style="margin-bottom: 30px; margin-top: 30px">
                        <c:forEach var="i" begin="0" end="5">
                            <button id="Fbtn" onclick="fn_clcik2(${i})">
                                <img src="${contextPath}/resources/image/채소/채소${i+1}.jpg" alt="과일${i+1}" width="100" height="100" class="rounded-circle">
                            </button>
                        </c:forEach>
                    </div>

                </div>
            </div>

            <div class="b-example-divider"></div>

        </main>
    </article>
</section>

</body>
</html>
