<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>로그인</title>
        <link rel="stylesheet" href="/resources/static/css/reset.css"/>
        <link rel="stylesheet" href="/resources/static/css/common.css"/>
        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <script type="text/javascript" src="/resources/static/js/common.js"></script>
        <script type="text/javascript" src="/resources/static/js/jquery-3.7.1.min.js"></script>
        <script type="text/javascript">
            $(document).ready(() => {


            });
        </script>
    </head>
    <body>
        <div>
            <div>
                <h1 class="login-title">로그인</h1>
                <fieldset id="login_fs">
                    <legend>회원로그인</legend>
                    <input type="text" placeholder="아이디">
                    <input type="password" placeholder="비밀번호">
                    <button>로그인</button>
                    <label class="checkbox_label">
                        <input id="smsYn" type="checkbox" checked/>
                        <span class="checkbox_icon"></span>
                        <span class="checkbox_text">자동로그인</span>
                    </label>
                </fieldset>

                <aside id="login_info">
                    <div>
                        <a href="#">아이디 비밀번호 찾기</a>
                        <a href="#">회원 가입</a>
                    </div>
                </aside>
            </div>
        </div>
    </body>
</html>