<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="/resources/static/css/reset.css"/>
<link rel="stylesheet" href="/resources/static/css/common.css"/>
<script type="text/javascript" src="/resources/static/js/common.js"></script>
<script type="text/javascript" src="/resources/static/js/jquery-3.7.1.min.js"></script>
<script>
    $(document).ready(() => {

        if (isEmpty(sessionStorage.getItem("loginId"))) {
            alert("세션이 끊어졌습니다. 로그인페이지로 이동합니다.");
            location.href = "/common/user/loginPage";
        }
    });
</script>
<header class="layout-header">
    <div class="layout-header-title">Admin</div>
    <div>Menu</div>
    <div>
        <input type="text"/>
    </div>
    <div>logout</div>
    <div>User</div>
</header>
