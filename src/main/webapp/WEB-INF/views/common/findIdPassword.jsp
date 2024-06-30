<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>비밀번호 찾기</title>
        <link rel="stylesheet" href="/resources/static/css/reset.css"/>
        <link rel="stylesheet" href="/resources/static/css/common.css"/>
        <script type="text/javascript" src="/resources/static/js/common.js"></script>
        <script type="text/javascript" src="/resources/static/js/jquery-3.7.1.min.js"></script>
        <script type="text/javascript">
            /**
             * 아아디 or 비밀번호 찾기 선택
             * **/
            const selectIdOrPassword = (type) => {

                if (type === "ID") {
                    $("#selectItem").hide();
                    $("#findId").show();
                    $("#findPw").hide();
                } else if (type === "PASSWORD") {
                    $("#selectItem").hide();
                    $("#findId").hide();
                    $("#findPw").show();
                } else {
                    $("#selectItem").show();
                    $("#findId").hide();
                    $("#findPw").hide();
                    $("#findIdResult").hide();
                    $("#findPwResult").hide();
                }
            }

            /**
             * 아아디 찾기
             * **/
            const findId = () => {

                const korName = $("#korNameFindId").val();
                const email = $("#emailFindId").val();

                if (!korName) {
                    alert("이름을 입력해주세요.");
                    return;
                }

                if (!email) {
                    alert("이메일을 입력해주세요.");
                    return;
                }

                const param = {
                    korName: korName,
                    email: email
                }

                jqueryAjax("/common/user/getId", "POST", (result) => {
                    if (isEmpty(result)) {
                        alert("존재하지 않는 정보입니다. 이름 및 이메일을 확인해주세요.");
                    } else {
                        $("#findId").hide();
                        $("#findIdResultText").html(korName + "님의 계정은 (" + result + ") 입니다.");
                        $("#findIdResult").show();
                    }
                }, param);
            }

            /**
             * 비밀번호 찾기
             * **/
            const findPassword = () => {

                const userId = $("#userIdFindPw").val();
                const korName = $("#korNameFindPw").val();
                const email = $("#emailFindPw").val();

                if (!userId) {
                    alert("아이디를 입력해주세요.");
                    return;
                }

                if (!korName) {
                    alert("이름을 입력해주세요.");
                    return;
                }

                if (!email) {
                    alert("이메일을 입력해주세요.");
                    return;
                }

                const param = {
                    userId : userId,
                    korName: korName,
                    email: email
                }

                jqueryAjax("/common/user/getPassword", "POST", (result) => {
                    if (result === "not found user") {
                        alert("존재하지 않는 정보입니다. 아이디, 이름, 이메일을 확인해주세요.");
                    } else {
                        $("#findPw").hide();
                        $("#findPwResultText").html(email + "</br>에 임시비밀번호를 발송하였습니다.</br> 메일 확인 후 비밀번호 변경 부탁드립니다.");
                        $("#findPwResult").show();
                    }
                }, param);
            }
        </script>
    </head>
    <body>
        <div class="find-id-pw-form">
            <h1 class="find-id-pw-title">아이디 / 비밀번호 찾기</h1>
            <fieldset id="selectItem">
                <button onclick="selectIdOrPassword('ID')">아이디 찾기</button>
                <button onclick="selectIdOrPassword('PASSWORD')">비밀번호 찾기</button>
            </fieldset>
            <fieldset id="findId" class="display-none">
                <input type="text" id="korNameFindId" placeholder="이름">
                <input type="text" id="emailFindId" placeholder="이메일">
                <button onclick="findId()">아이디 찾기</button>
                <button onclick="selectIdOrPassword('BACK')">뒤로가기</button>
            </fieldset>

            <fieldset id="findIdResult" class="display-none">
                <div class="find-result-text" id="findIdResultText"></div>
                <button onclick="selectIdOrPassword('BACK')">뒤로가기</button>
            </fieldset>

            <fieldset id="findPw"  class="display-none">
                <input type="text" id="userIdFindPw" placeholder="아이디">
                <input type="text" id="korNameFindPw" placeholder="이름">
                <input type="text" id="emailFindPw" placeholder="이메일">
                <button onclick="findPassword()">비밀번호 찾기</button>
                <button onclick="selectIdOrPassword('BACK')">뒤로가기</button>
            </fieldset>

            <fieldset id="findPwResult" class="display-none">
                <div class="find-result-text" id="findPwResultText"></div>
                <button onclick="selectIdOrPassword('BACK')">뒤로가기</button>
            </fieldset>

            <aside id="login-info">
                <div>
                    <a href="/common/user/loginPage">로그인</a>
                    <b>|</b>
                    <a href="/common/user/registerPage">회원 가입</a>
                </div>
            </aside>
        </div>
    </body>
</html>