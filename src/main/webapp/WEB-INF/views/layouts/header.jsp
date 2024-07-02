<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header>
    <link rel="stylesheet" href="/resources/static/css/reset.css"/>
    <link rel="stylesheet" href="/resources/static/css/common.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script type="text/javascript" src="/resources/static/js/common.js"></script>
    <script type="text/javascript" src="/resources/static/js/jquery-3.7.1.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</header>
<script>
    $(document).ready(() => {

        /** 로그인 세션 체크후 없으면 로그인 페이지로 **/
        if (isEmpty(sessionStorage.getItem("loginId"))) {
            alert("세션이 끊어졌습니다. 로그인페이지로 이동합니다.");
            location.href = "/common/user/loginPage";
        }
    });

    /**
     * user 프로픽 클릭시 팝업오픈
     * **/
    const userInfoPopupOpen = () => {

        const popupElement = $(".layout-header-userinfo-popup");

        if (popupElement.is(':visible') === true) {
            popupElement.hide();
        } else {
            popupElement.show();
        }
    }

    /**
     * 좌측 메뉴 toggle
     * **/
    const leftMenuToggle = () => {

        const leftMenuElement = $(".layout-left-menu");
        const contentElement = $(".layout-container > section");

        if (leftMenuElement.css("width") !== "0px") {
            leftMenuElement.css("width", "0px");
            contentElement.css("width", "100%");
        } else {
            leftMenuElement.css("width", "200px");
            contentElement.css("width", "calc( 100% - 200px);");
        }
    }

    /**
     * 로그아웃
     * **/
    const logout = () => {
        sessionStorage.removeItem("loginId");
        goPage("/common/user/logout");
    }
</script>
<header class="layout-header">
    <div class="layout-header-left">
        <div class="layout-header-title" onclick="goPage('/common/main/mainPage');">Admin</div>
        <div class="layout-header-menu-open" onclick="leftMenuToggle();">
            <i class="fa-solid fa-bars"></i>
        </div>
    </div>
    <div class="layout-header-right">
        <div class="layout-header-userinfo" onclick="userInfoPopupOpen();">
            <img src="/resources/static/image/userimage.jpg"/>
        </div>
    </div>
</header>
<div class="layout-header-userinfo-popup">
    <ul>
        <li onclick="goPage('/common/main/myPage');">내정보</li>
        <li onclick="logout();">로그아웃</li>
    </ul>
</div>
