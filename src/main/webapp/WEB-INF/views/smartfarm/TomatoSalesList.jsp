<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"   isELIgnored="false"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
    request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sales List</title>

    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <!-- 스타일시트 연결 -->

    <%-- 폰트 --%>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
    </style>

    <style>
        .Item_Information {
            border-radius: 10px;
            border: 5px solid #04AA6D;
            margin-left: auto;
            margin-right: auto;
            padding: 10px;
        }
    </style>

</head>
<body>
<%--몸통--%>
<section>
    <article>
        <div id="Main_Box" align="center">
            <h1> 건조기 / 탈곡기 </h1>

            <div class=front style="display: flex; margin-top: 50px" >
                <div class="Image_Box" style="border-radius: 10px">
                    <img src="${contextPath}/resources/image/농업용건조기.jpg" alt="promo1" width="500" height="500">
                </div>
                <div class="Item_Information">
                    <h3> 건조기 </h3>
                    <table>
                        <tr>
                            <th>
                                제목 1
                            </th>
                            <td>
                                <input type="text" name=""  value="">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                제목 2
                            </th>
                            <td>
                                <input type="text" name=""  value="">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                특징
                            </th>
                            <td>
                                <input type="text" name=""  value="">
                            </td>
                        </tr>
                    </table>
                </div>
            </div>

            <div class=front style="display: flex">
                <div class="Image_Box" style="border-radius: 10px">
                    <img src="${contextPath}/resources/image/탈곡기.jpg" alt="promo1" width="500" height="500">
                </div>
                <div class="Item_Information">
                    <h3> 탈곡기 </h3>
                    <table>
                        <tr>
                            <th>
                                제목 1
                            </th>
                            <td>
                                <input type="text" name=""  value="">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                제목 2
                            </th>
                            <td>
                                <input type="text" name=""  value="">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                특징
                            </th>
                            <td>
                                <input type="text" name=""  value="">
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>


    </article>
</section>

<main class="main">
    <div class="album py-5 bg-light">
        <div class="container">

            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">

                <div class="col">
                    <div class="card shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="1"
                             xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail"
                             preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title>
<%--                            <rect width="100%" height="100%" fill="#55595c"/>--%>
                            <img src="${contextPath}/resources/image/신일종합건조기.jpg" alt="promo1" width="100%" height="100%">
                            <%--                            <text x="50%" y="50%" fill="#eceeef" dy=".3em" al>Thumbnail</text>--%>
                        </svg>

                        <div class="card-body">
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                                additional content. This content is a little bit longer.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                </div>
                                <small class="text-muted">9 mins</small>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="1"
                             xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail"
                             preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title>
<%--                            <rect width="100%" height="100%" fill="#55595c"/>--%>
                            <img src="${contextPath}/resources/image/성보탈곡기.jpg" alt="promo1" width="100%" height="100%">
                        </svg>

                        <div class="card-body">
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                                additional content. This content is a little bit longer.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                </div>
                                <small class="text-muted">9 mins</small>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="1"
                             xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail"
                             preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title>
<%--                            <rect width="100%" height="100%" fill="#55595c"/>--%>
                            <img src="${contextPath}/resources/image/곡물탈곡기.jpg" alt="promo1" width="100%" height="100%">
                        </svg>

                        <div class="card-body">
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                                additional content. This content is a little bit longer.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                </div>
                                <small class="text-muted">9 mins</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
</body>
</html>