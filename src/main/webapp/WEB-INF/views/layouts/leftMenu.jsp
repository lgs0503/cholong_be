<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="layout-left-menu">
    <ul>
        <li class="layout-top-menu">
            시스템
            <ul>
                <li class="layout-sub-menu" onclick="goPage('/common/user/userMgrPage')">회원 관리</li>
                <li class="layout-sub-menu" onclick="goPage('/common/code/codeMgrPage')">코드 관리</li>
                <li class="layout-sub-menu" onclick="goPage('/common/menu/menuMgrPage')">시스템 메뉴 관리</li>
                <li class="layout-sub-menu" onclick="goPage('/common/role/roleMgrPage')">권한 관리</li>
                <li class="layout-sub-menu" onclick="goPage('/common/file/fileMgrPage')">파일 관리</li>
            </ul>
        </li>
        <li class="layout-top-menu">
            컨텐츠
            <ul>
                <li class="layout-sub-menu" onclick="goPage('/menu/menuMgrPage')">메뉴 관리</li>
                <li class="layout-sub-menu" onclick="goPage('/board/boardMgrPage')">게시판 관리</li>
                <li class="layout-sub-menu" onclick="goPage('/post/postMgrPage')">게시글 관리</li>
                <li class="layout-sub-menu" onclick="goPage('/content/contentMgrPage')">컨텐츠 관리</li>
                <li class="layout-sub-menu" onclick="goPage('/comment/commentMgrPage')">댓글 관리</li>
                <li class="layout-sub-menu" onclick="goPage('/banner/bannerMgrPage')">배너 관리</li>
                <li class="layout-sub-menu" onclick="goPage('/popup/popupMgrPage')">팝업 관리</li>
            </ul>
        </li>
        <li class="layout-top-menu">
            기타
            <ul>
                <li class="layout-sub-menu" onclick="goPage('/history/loginHisPage')">로그인 이력</li>
                <li class="layout-sub-menu" onclick="goPage('/history/menuUseHisPage')">메뉴 사용 이력</li>
            </ul>
        </li>
    </ul>
</nav>