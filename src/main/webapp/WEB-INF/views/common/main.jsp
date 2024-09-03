<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<body>
<jsp:include page="../layouts/header.jsp"/>
<script>
    const remarkUpdate = () => {
        $("#remarkText").toggle();
        $("#remarkInput").toggle();

        if ( $("#remarkInput").is(':visible') === true) {
            $("#btnRemarkSave").show();
            $("#btnRemarkUpdate").text("취소");
        } else {
            $("#btnRemarkSave").hide();
            $("#btnRemarkUpdate").text("수정");
        }
    }
</script>
<div class="layout-container">
    <jsp:include page="../layouts/leftMenu.jsp"/>
    <section>
        <div class="layout-content">
            <div class="layout-content-title">
                Dash Board
            </div>
            <div class="display-flex gap10 mgb10 flex-column">
                <div class="layout-card layout-content-item width50p shadow">
                    <div class="display-flex flex-space-between mgb10">
                        <h2 class="dashboard-title">메모</h2>
                        <div>
                            <button id="btnRemarkSave" class="display-none btn-primary">저장</button>
                            <button id="btnRemarkUpdate" onclick="remarkUpdate()" class="btn-primary">수정</button>
                        </div>
                    </div>
                    <div class="overflow-y-auto scrollbar">
                        <p id="remarkText" class="height268 line-height22">
                            Welcome Cho Long Admin
                        </p>
                        <textarea id="remarkInput" class="display-none width100p height268">Welcome Cho Long Admin</textarea>
                    </div>
                </div>
                <div class="layout-card layout-content-item width50p shadow">
                    <h2 class="dashboard-title">최근활동</h2>
                    <div class="scrollbar overflow-y-auto height268">
                        <ul>
                            <li class="layout-card mgb5 pd10 display-flex flex-space-between">
                                <label class="dashboard-content-title">게시글1게시글1게시글1게시글1게시글1게시글1게시글1게시글1게시글1게시글1게시글1</label>
                                <button class="btn-primary pd0 width100">바로가기</button>
                            </li>
                            <li class="layout-card mgb5 pd10 display-flex flex-space-between">
                                <label class="dashboard-content-title">댓글</label>
                                <button class="btn-primary pd0 width100">바로가기</button>
                            </li>
                            <li class="layout-card mgb5 pd10 display-flex flex-space-between">
                                <label class="dashboard-content-title">게시글1</label>
                                <button class="btn-primary pd0 width100">바로가기</button>
                            </li>
                            <li class="layout-card mgb5 pd10 display-flex flex-space-between">
                                <label class="dashboard-content-title">댓글</label>
                                <button class="btn-primary pd0 width100">바로가기</button>
                            </li>
                            <li class="layout-card mgb5 pd10">
                                <label class="dashboard-content-title">게시글1</label>
                                <button class="btn-primary float-right pd0 width100">바로가기</button>
                            </li>
                            <li class="layout-card mgb5 pd10">
                                <label class="dashboard-content-title">댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글</label>
                                <button class="btn-primary float-right pd0 width100">바로가기</button>
                            </li>
                            <li class="layout-card mgb5 pd10">
                                <label class="dashboard-content-title">댓글</label>
                                <button class="btn-primary float-right pd0 width100">바로가기</button>
                            </li>
                            <li class="layout-card mgb5 pd10">
                                <label class="dashboard-content-title">댓글</label>
                                <button class="btn-primary float-right pd0 width100">바로가기</button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="display-flex gap10 flex-column">
                <div class="layout-card layout-content-item shadow width25p">
                    <h2 class="dashboard-title">자주찾는메뉴</h2>
                    <div class="display-flex gap10 mgb10">
                        <button class="btn-primary layout-content-page-go-button height110">공지사항</button>
                        <button class="btn-primary layout-content-page-go-button height110">게시글관리</button>
                    </div>
                    <div class="display-flex gap10">
                        <button class="btn-primary layout-content-page-go-button height110">댓글관리</button>
                        <button class="btn-primary layout-content-page-go-button height110">파일관리</button>
                    </div>
                </div>
                <div class="layout-card layout-content-item shadow width75p">
                    <h2 class="dashboard-title">통계</h2>
                    <div class="display-flex gap20 ">
                        <div class="dashboard-statistics">
                            <h3>최근 접속자수<br>(user)</h3>
                            <div class="dashboard-statistics-row">
                                <label>Today</label>
                                <div>300</div>
                            </div>
                            <div class="dashboard-statistics-row">
                                <label>Month</label>
                                <div>1000</div>
                            </div>
                            <div class="dashboard-statistics-row">
                                <label>ALL</label>
                                <div>30000</div>
                            </div>
                        </div>
                        <div class="dashboard-statistics">
                            <h3>최근 접속자수<br>(admin)</h3>
                            <div class="dashboard-statistics-row">
                                <label>Today</label>
                                <div>10</div>
                            </div>
                            <div class="dashboard-statistics-row">
                                <label>Month</label>
                                <div>30</div>
                            </div>
                            <div class="dashboard-statistics-row">
                                <label>ALL</label>
                                <div>3000</div>
                            </div>
                        </div>
                        <div class="dashboard-statistics">
                            <h3>접속 메뉴 순위(차트 예정)</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<jsp:include page="../layouts/footer.jsp"/>
</body>