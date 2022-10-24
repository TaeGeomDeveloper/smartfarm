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
    <script src="http://code.jquery.com/jquery-latest.js"></script>

    <%-- 폰트 --%>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
    </style>
    <!-- 스타일시트 연결 -->
    <link rel="stylesheet" href="../${contextPath}/resources/CSS/addrlinkSample.css" type="text/css"/>

    <script>
        function fn_sendPerson() {
            var SendPerson = document.SendPerson;

            SendPerson.method = "post";
            SendPerson.action = "./registProcess.do";
            SendPerson.submit();
        }
    </script>

    <script language="javascript">
        function goPopup() {
            // 주소검색을 수행할 팝업 페이지를 호출합니다.
            // 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://business.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
            var pop = window.open("../${contextPath}/resources/jusoPopup.jsp", "pop", "width=570,height=420, scrollbars=yes, resizable=yes");

            // 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://business.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
            //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes");
        }

        function jusoCallBack(roadFullAddr,mi_address,mi_addressDetail,roadAddrPart2,engAddr, jibunAddr, mi_addressCode){
            // 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
            document.SendPerson.roadFullAddr.value = roadFullAddr;
            document.SendPerson.mi_address.value = mi_address;
            document.SendPerson.roadAddrPart2.value = roadAddrPart2;
            document.SendPerson.mi_addressDetail.value = mi_addressDetail;
            document.SendPerson.engAddr.value = engAddr;
            document.SendPerson.jibunAddr.value = jibunAddr;
            document.SendPerson.mi_addressCode.value = mi_addressCode;
        }
    </script>


</head>
<body>

<%--몸통--%>
<section>
    <article>

        <div id="Main_Box" align="center" style="margin-top: 50px;">
            <h1> 회원가입 </h1>
            <form name="SendPerson" id="form" method="post">
                <table>
                    <tr>
                        <th>ID</th>
                        <td><input type="text" name="mi_id" id="memberId">
                            <button class="button" name="idCheck">ID중복체크</button>
                        </td>
                    </tr>
                    <tr>
                        <th>PWD</th>
                        <td><input type="password" name="mi_password"></td>
                    </tr>
                    <tr>
                        <th>이름</th>
                        <td><input type="text" name="mi_name"></td>
                    </tr>
                    <tr>
                        <th>주민등록번호</th>
                        <td><input type="text" name="mi_regidentRegNumber"></td>
                    </tr>
                    <div id="callBackDiv">
                        <input type="hidden"  style="width:500px;" id="roadFullAddr"  name="roadFullAddr" />
                        <tr><th>도로명주소   </th><td><input type="text"  style="width:500px;" id="mi_address"  name="mi_address" /><button class="button" onClick="goPopup();">주소 찾기</button></td></tr>
                        <tr><th>상세주소     </th><td><input type="text"  style="width:500px;" id="mi_addressDetail"  name="mi_addressDetail" /></td></tr>
                        <input type="hidden"  style="width:500px;" id="roadAddrPart2"  name="roadAddrPart2" />
                        <input type="hidden"  style="width:500px;" id="engAddr"  name="engAddr" />
                        <input type="hidden"  style="width:500px;" id="jibunAddr"  name="jibunAddr" />
                        <tr><th>우편번호     </th><td><input type="text"  style="width:100px;" id="mi_addressCode"  name="mi_addressCode" /></td></tr>
                    </div>
                    <tr>
                        <th>휴대전화</th>
                        <td>
                            <select name="mi_phone">
                                <option value="010" selected="selected">010</option>
                            </select>
                            <input type="text" name="mi_phone"/> -
                            <input type="text" name="mi_phone"/>
                        </td>
                    <tr>
                        <th>일반전화</th>
                        <td>
                            <select name="mi_wireline">
                                <option value="기본값" selected="selected">--선택--</option>
                                <option value="경기">031</option>
                                <option value="인천">032</option>
                                <option value="강원도">033</option>
                                <option value="충청남도">041</option>
                                <option value="대전">042</option>
                                <option value="충청북도">043</option>
                                <option value="세종시">044</option>
                                <option value="부산">051</option>
                                <option value="울산">052</option>
                                <option value="대구">053</option>
                                <option value="경상북도">054</option>
                                <option value="경상남도">055</option>
                                <option value="전라남도">061</option>
                                <option value="광주">062</option>
                                <option value="전라북도">063</option>
                                <option value="제주도">064</option>
                            </select> -
                            <input type="text" name="mi_wireline"/> -
                            <input type="text" name="mi_wireline"/>
                        </td>
                    </tr>
                    <tr>
                        <th>이메일주소</th>
                        <td>
                            <input type="text" name="mi_email"> @
                            <select name="mi_email">
                                <option value="기본값" selected="selected">--선택--</option>
                                <option value="네이버">naver.com</option>
                                <option value="다음">daum.net</option>
                                <option value="지메일">gmail.com</option>
                                <option value="네이트">nate.com</option>
                                <option value="직접입력">직접입력</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th></th>
                        <td><input type="hidden" name="mi_joinDate"></td>
                    </tr>
                </table>
                <button class="button2" onclick="fn_sendPerson()">가입 하기</button>
            </form>
        </div>

    </article>
</section>

</body>
</html>
