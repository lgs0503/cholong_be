<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>로그인</title>
        <link rel="stylesheet" href="/resources/static/css/reset.css"/>
        <link rel="stylesheet" href="/resources/static/css/common.css"/>
        <script type="text/javascript" src="/resources/static/js/common.js"></script>
        <script type="text/javascript" src="/resources/static/js/jquery-3.7.1.min.js"></script>
        <script type="text/javascript">
            $(document).ready(() => {

                /** 계정 쿠키 조회 **/
                idCookieChk();
            });

            /**
             * 저장되어있는 계정 쿠키가 있는지 확인
             * **/
            const idCookieChk = () => {
                let userLoginId = getCookie("userLoginId");
                const userIdElement = $("#userId");
                const checkIdElement = $("#checkId");
                userIdElement.val(userLoginId);

                if (userIdElement.val() !== "") {
                    checkIdElement.attr("checked", true);
                }
            }

            /**
             * 아이디저장 체크박스 체인지 이벤트 쿠키저장 및 삭제
             * **/
            const checkIdChange = () => {
                if ($("#checkId").is(":checked")) {
                    let userLoginId = $("#userId").val();
                    setCookie("userLoginId", userLoginId, 30);
                } else {
                    deleteCookie("userLoginId");
                }
            }

            /**
             * userId 키업 이벤트 쿠키 저장
             * **/
            const userIdKeyup = () => {
                if ($("#checkId").is(":checked")) {
                    let userLoginId = $("#userId").val();
                    setCookie("userLoginId", userLoginId, 30);
                }
            }

            /**
             * 로그인
             * **/
            const login = () => {

                const param = {
                    userId : $("#userId").val(),
                    password : $("#password").val()
                }

                jqueryAjax("/common/user/login", "POST", (result) => {

                    if (result) {
                        sessionStorage.setItem("loginId", param.userId);
                        goPage( "/common/main/mainPage?loginId=" + param.userId);
                    } else {
                        alert("아이디 및 비밀번호를 확인해주세요.");
                        $("#password").focus();
                    }
                }, param);
            }
        </script>
    </head>
    <body>
        <div class="login-form">
            <h1 class="login-title">로그인</h1>
            <fieldset>
                <input type="text" id="userId" class="comm-input" placeholder="아이디" onkeyup="userIdKeyup()" onkeydown="enterSearch(event, login)">
                <input type="password" id="password" class="comm-input" placeholder="비밀번호" onkeydown="enterSearch(event, login)">
                <button class="btn-primary" onclick="login()">로그인</button>
                <label class="checkbox_label">
                    <input type="checkbox" id="checkId" class="comm-checkbox" onchange="checkIdChange()"/>
                    <span class="checkbox_icon"></span>
                    <span class="checkbox_text">아이디저장</span>
                </label>
            </fieldset>

            <aside id="login-info">
                <div>
                    <a href="/common/user/findIdPasswordPage">아이디 비밀번호 찾기</a>
                    <b>|</b>
                    <a href="/common/user/registerPage">회원 가입</a>
                </div>
            </aside>
        </div>
    </body>
</html>