<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<body>
<jsp:include page="../layouts/header.jsp"/>
<div class="layout-container">
    <jsp:include page="../layouts/leftMenu.jsp"/>
    <section>
        <div class="layout-content">
            <div class="layout-content-title">
                Dash Board
            </div>
            <div class="display-flex gap10 mgb10">
                <div class="layout-card layout-content-item width50p shadow">
                    <h1>Welcome Cho Long Admin</h1>
                    <button>수정</button>
                    <p>
                        메모
                    </p>
                </div>
                <div class="layout-card layout-content-item width50p shadow">
                    <ul>
                        <li class="layout-card mgb10">게시글1<button class="float-right">바로가기</button></li>
                        <li class="layout-card mgb10">댓글<button class="float-right">바로가기</button></li>
                        <li class="layout-card mgb10">게시글1<button class="float-right">바로가기</button></li>
                        <li class="layout-card mgb10">댓글<button class="float-right">바로가기</button></li>
                    </ul>
                </div>
            </div>
            <div class="display-flex gap10">
                <div class="layout-card layout-content-item shadow width50p">
                    <div class="display-flex gap10 mgb10">
                        <button class="layout-content-page-go-button">공지사항</button>
                        <button class="layout-content-page-go-button">게시글관리</button>
                    </div>
                    <div class="display-flex gap10">
                        <button class="layout-content-page-go-button">댓글관리</button>
                        <button class="layout-content-page-go-button">파일관리</button>
                    </div>
                </div>
                <div class="layout-card layout-content-item shadow width50p">
                    차트
                </div>
            </div>
        </div>
    </section>
</div>
<jsp:include page="../layouts/footer.jsp"/>
</body>