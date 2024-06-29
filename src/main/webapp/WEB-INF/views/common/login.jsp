<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <header>
        <script type="text/javascript" src="/js/common.js"></script>
        <script type="text/javascript" src="/js/jquery-3.7.1.min.js"></script>
        <script type="text/javascript">
            $(document).ready(() => {


            });
        </script>
    </header>
    <body>
        <div>
            <div id="mb_login" class="mbskin">
                <h1>로그인</h1>
                <fieldset id="login_fs">
                    <legend>회원로그인</legend>
                    <input type="text" placeholder="아이디">
                    <input type="password" placeholder="비밀번호">
                    <button>로그인</button>
                    <input type="checkbox" id="login_auto_login">
                    <label for="login_auto_login">자동로그인</label>
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