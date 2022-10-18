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

    <script>
        function fn_sendPerson(){
            var SendPerson = document.SendPerson;

            SendPerson.method = "post";
            SendPerson.action = "./registProcess.do";
            SendPerson.submit();
        }
    </script>

</head>
<body>

<%--몸통--%>
<section>
    <article>

        <div id="Main_Box" align="center" style="margin-top: 50px">
            <h1> 회원가입 </h1>
            <form name="SendPerson">
                <table>
                    <tr>
                        <th>ID</th>
                        <td><input type="text" name="id"><button class="button" name="idCheck">ID중복체크</button></td>
                    </tr>
                    <tr>
                        <th>PWD</th> <td><input type="password" name="pwd"></td>
                    </tr>
                    <tr>
                        <th>이름</th> <td><input type="text" name="name"></td>
                    </tr>
                    <tr>
                        <th>주민등록번호</th><td><input type="text" name="r_num"></td>
                    </tr>
                    <tr>
                        <th>우편번호</th><td><input type="text" name="postal_code"></td>
                    </tr>
                    <tr>
                        <th>주소</th>
                        <td><input type="text" name="address"><button class="button" name="">주소검색</button></td>
                    </tr>
                    <tr>
                        <th>상세주소</th><td><input type="text" name="d_address"></td>
                    </tr>
                    <tr>
                        <th>휴대전화</th>
                        <td>
                            <select name="phone">
                                <option value="010" selected="selected">010</option>
                            </select>
                            <input type="text" name="phone" /> -
                            <input type="text" name="phone" />
                        </td>
                    <tr>
                        <th>일반전화</th>
                        <td>
                            <select name="l_phone">
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
                            <input type="text" name="l_phone" /> -
                            <input type="text" name="l_phone" />
                        </td>
                    </tr>
                    <tr>
                        <th>이메일주소</th>
                        <td>
                            <input type="text" name="email"> @
                            <select name="email">
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
                        <th>사업자번호</th><td><input type="text" placeholder=" '-'하이픈 입력" name="b_num"></td>
                    </tr>
                    <tr>
                        <th>업체명</th> <td><input type="text" name="business"></td>
                    </tr>
                    <tr>
                        <th>회원유형</th>
                        <td>
                            구매자 <input type="radio" name="member_type" value="consumer"/>
                            판매자 <input type="radio" name="member_type" value="seller"/>
                        </td>
                    </tr>
                    <tr>
                        <th></th><td><input type="hidden" name="join_date"></td>
                    </tr>
                </table>
                <button class="button2" onclick="fn_sendPerson()">가입 하기</button>
            </form>
        </div>

    </article>
</section>

</body>
</html>
