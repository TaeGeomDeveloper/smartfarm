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
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>

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

    <script>
        $(document).ready(function (){
            //console.log('in');
            $('#idCheck').on('click',function (event){
                //alert(event.target.id);
                let memberId = $('#memberId').val();
                //alert(memberId);
                $.ajax({
                    type : 'get',
                    dataType : 'text',
                    url : "/tp/smartfarm/idCheck.do",
                    data : {mi_id : memberId},
                    success : function (data, status) {
                        //alert(data);
                        if(data=='true'){
                            $('#msg').html("중복된 아이디 입니다.")
                            $('#memberId').val("");
                            $('#memberId').focus();
                        }else{
                            $('#msg').html("사용할 수 있는 아이디 입니다.")
                            $('#isIdCheck').val('true');
                        }
                    },
                    error : function (data, status){
                        alert('error'+status);
                    },
                    complete : function (xhr, status){
                        //alert(xhr.status);
                    }
                });
            });

            // $('#validate').on('click', function (event){
            //     let temp = $('#isIdCheck').val();
            //     if(temp!=null){
            //         alert('ID 중복체크를 해주세요');
            //         event.preventDefault();
            //     }else{
            //         $('#frm').action = '/smartfarm/Main.do';
            //         $('#frm').submit();
            //         alert('환영합니다^^');
            //     }
            // });
        });
    </script>

    <script>
        $(document).focusout(function () {
            var pwd1 = $("#password_1").val();
            var pwd2 = $("#password_2").val();

            if ( pwd1 != '' && pwd2 == '' ) {
                null;
            } else if (pwd1 != "" || pwd2 != "") {
                if (pwd1 == pwd2) {
                    $("#success").css('display', 'inline-block');
                    $('#success').html("비밀번호가 일치합니다");
                    $("#fail").css('display', 'none');
                } else {
                    $("#success").css('display', 'none');
                    $("#fail").css('display', 'inline-block');
                    $('#fail').html("비밀번호가 일치하지 않습니다. 비밀번호를 재확인 해주세요.")
                }
            }
        });
    </script>

    <script>
        $(function (){
            $("#sendSMS").click(function (){
                const submitPop = document.getElementById("submitPop");
                submitPop.style.display = 'inline-block';
                let phoneNum = $("#mi_phone").val();
                let phoneNum1 = $("#mi_phone1").val();
                let phoneNum2 = $("#mi_phone2").val();
                var sendNumber = phoneNum+phoneNum1+phoneNum2;
                $.ajax({
                    type: "POST",
                    url: "./sendSMS.do",
                    data: {to : sendNumber},
                    cache: false,
                    success: function (data){
                        if(data=="error"){
                            alert("휴대폰 번호가 올바르지 않습니다.");
                        }else{
                            //alert("전송 완료");
                            code2 = data;
                        }
                    }
                });
            });

            $("#checkQualifiedNumber").click(function (){
                const validate = document.getElementById("validate")
                if($("#authNum").val()==code2){
                    alert("인증 성공");
                    validate.style.display = 'inline-block';
                }else{
                    alert("인증 실패");

                }
            })
        })
    </script>

</head>
<body>

<%--몸통--%>
<section>
    <article>

        <div id="Main_Box" align="center" style="margin-top: 50px;">
            <h1> 회원가입 </h1>
            <form name="SendPerson">
                <input type="hidden" name="" id="isIdCheck" value="false">
                <table>
                    <tr>
                        <th>ID</th>
                        <td>
                            <input type="text" name="mi_id" id="memberId">
                            <input type="button" class="button" name="id_check" value="중복확인" id="idCheck">
                            <span id="msg" style="color:green"></span>
                        </td>
                    </tr>
                    <tr>
                        <th>PWD</th>
                        <td><input type="password" name="mi_password" id="password_1"></td>
                    </tr>
                    <tr>
                        <th>비밀번호 확인</th>
                        <td>
                            <input type="password" id="password_2" >
                            <span id="success" style="display: none;"></span>
                            <span id="fail" style="display: none; color: red"></span>
                        </td>
                    </tr>
                    <tr>
                        <th>이름</th>
                        <td><input type="text" name="mi_name"></td>
                    </tr>
                    <tr>
                        <th>주민등록번호</th>
                        <td><input type="text" name="mi_regidentRegNumber" maxlength="6"> -
                            <input type="password" name="mi_regidentRegNumber" maxlength="7">
                        </td>
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
                            <select name="mi_phone"  id="mi_phone">
                                <option value="010" selected="selected">010</option>
                            </select>-
                            <input type="text" name="mi_phone" id="mi_phone1" maxlength="4"/> -
                            <input type="text" name="mi_phone" id="mi_phone2" maxlength="4"/>
                            <input type="button"
                                   id="sendSMS"
                                   class="button"
                                   value="인증번호 받기"/>
                        </td>
                    </tr>
                    <tr>
                        <th></th>
                        <td>
                            <span id="submitPop" style="display: none; color: lightgray">
                                인증번호 발송이 완료되었습니다. 혹시 인증번호가 오지 않는다면 재발송 해주십시오.
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <th>인증 번호</th>
                        <td><input type="text" id="authNum" placeholder="인증 번호를 입력하세요">
                            <input type="button" value="확인" class="button" id="checkQualifiedNumber">
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <th>일반전화</th>
                        <td>
                            <select name="mi_wireline">
                                <option value="기본값" selected="selected">--선택--</option>
                                <option value="031">031</option>
                                <option value="032">032</option>
                                <option value="033">033</option>
                                <option value="041">041</option>
                                <option value="042">042</option>
                                <option value="043">043</option>
                                <option value="044">044</option>
                                <option value="051">051</option>
                                <option value="052">052</option>
                                <option value="053">053</option>
                                <option value="054">054</option>
                                <option value="055">055</option>
                                <option value="061">061</option>
                                <option value="062">062</option>
                                <option value="063">063</option>
                                <option value="064">064</option>
                            </select> -
                            <input type="text" name="mi_wireline" maxlength="3"/> -
                            <input type="text" name="mi_wireline" maxlength="4"/>
                        </td>
                    </tr>
                    <tr>
                        <th>이메일주소</th>
                        <td>
                            <input type="text" name="mi_email"> @
                            <select name="mi_email">
                                <option value="기본값" selected="selected">--선택--</option>
                                <option value="@naver.com">naver.com</option>
                                <option value="@daum.net">daum.net</option>
                                <option value="@gmail.com">gmail.com</option>
                                <option value="@nate.com">nate.com</option>
                                <option value="직접입력" id="inputText">직접입력</option>
                            </select>

                        </td>
                    </tr>
                    <tr>
                        <th></th>
                        <td><input type="hidden" name="mi_joinDate"></td>
                    </tr>
                </table>
                <button class="button2" onclick="fn_sendPerson()" id="validate" style="display: none">가입 하기</button>
            </form>
        </div>

    </article>
</section>

</body>
</html>
