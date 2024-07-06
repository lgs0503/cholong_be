<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="layout-left-menu">
    <ul>
        <li class="layout-top-menu">
            시스템
            <ul>
                <li class="layout-sub-menu" onclick="goPage('/common/user/userMgrPage')">회원관리</li>
                <li class="layout-sub-menu" onclick="goPage('/common/code/codeMgrPage')">코드관리</li>
                <li class="layout-sub-menu" onclick="goPage('/common/menu/menuMgrPage')">메뉴관리</li>
                <li class="layout-sub-menu" onclick="goPage('/common/role/roleMgrPage')">권한관리</li>
            </ul>
        </li>
        <li class="layout-top-menu">
            컨텐츠
            <ul>
                <li class="layout-sub-menu" onclick="goPage('/board/boardMgrPage')">게시판관리</li>
                <li class="layout-sub-menu" onclick="goPage('/post/postMgrPage')">게시글관리</li>
                <li class="layout-sub-menu" onclick="goPage('/content/contentMgrPage')">컨텐츠관리</li>
                <li class="layout-sub-menu" onclick="goPage('/comment/commentMgrPage')">댓글관리</li>
                <li class="layout-sub-menu" onclick="goPage('/file/fileMgrPage')">파일관리</li>
                <li class="layout-sub-menu" onclick="goPage('/banner/bannerMgrPage')">배너관리</li>
                <li class="layout-sub-menu" onclick="goPage('/popup/popupMgrPage')">팝업관리</li>
            </ul>
        </li>
        <li class="layout-top-menu">
            기타
            <ul>
                <li class="layout-sub-menu" onclick="goPage('/loginHis/loginHisPage')">로그인이력</li>
                <li class="layout-sub-menu" onclick="goPage('/')">통계</li>
            </ul>
        </li>
    </ul>
</nav>