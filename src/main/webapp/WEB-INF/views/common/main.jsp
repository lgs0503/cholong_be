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
            <div class="display-flex gap10 mgb10 flex-column">
                <div class="layout-card layout-content-item width50p shadow">
                    <h2>메모</h2>
                    <button>수정</button>
                    <div>Welcome Cho Long Admin</div>
                </div>
                <div class="layout-card layout-content-item width50p shadow">
                    <h2>최근활동</h2>
                    <ul>
                        <li class="layout-card mgb10">게시글1<button class="float-right">바로가기</button></li>
                        <li class="layout-card mgb10">댓글<button class="float-right">바로가기</button></li>
                        <li class="layout-card mgb10">게시글1<button class="float-right">바로가기</button></li>
                        <li class="layout-card mgb10">댓글<button class="float-right">바로가기</button></li>
                    </ul>
                </div>
            </div>
            <div class="display-flex gap10 flex-column">
                <div class="layout-card layout-content-item shadow width50p">
                    <h2>자주찾는메뉴</h2>
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
                    <h2>통계</h2>
                    <div>
                        <h3>최근 접속자수(user)</h3>
                        <div>
                            <label>Today</label>
                            <div>300명</div>
                        </div>
                        <div>
                            <label>Month</label>
                            <div>1000명</div>
                        </div>
                        <div>
                            <label>ALL</label>
                            <div>30000명</div>
                        </div>
                    </div>
                    <div>
                        <h3>최근 접속자수(admin)</h3>
                        <div>
                            <label>Today</label>
                            <div>10명</div>
                        </div>
                        <div>
                            <label>Month</label>
                            <div>30명</div>
                        </div>
                        <div>
                            <label>ALL</label>
                            <div>3000명</div>
                        </div>
                    </div>
                    <div>
                        <h3>접속 메뉴 순위(차트 예정)</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<jsp:include page="../layouts/footer.jsp"/>
</body>