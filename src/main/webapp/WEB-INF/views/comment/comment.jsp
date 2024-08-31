<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<body>
<jsp:include page="../layouts/header.jsp"/>
<script>
</script>
<div class="layout-container">
    <jsp:include page="../layouts/leftMenu.jsp"/>
    <section>
        <div class="layout-content">
            <div class="layout-content-title">
                 댓글 관리
            </div>
            <div class="layout-search-bar layout-card shadow display-flex mgb10">
                <label class="search-bar-item">
                    내용
                    <input type="text" onkeydown="enterSearch(event, getCodeList)">
                </label>
                <label class="search-bar-item">
                    작성 자
                    <input type="text" onkeydown="enterSearch(event, getCodeList)">
                </label>
                <label class="search-bar-item">
                    게시물 제목
                    <input type="text" onkeydown="enterSearch(event, getCodeList)">
                </label>
            </div>
            <div class="mgb10 display-flex flex-end">
                <button class="mgl10" onclick="">조회</button>
            </div>

            <div class="layout-card shadow overflow-y-auto">
                <div class="comment-scroll-height">
                    <div class="post-comment">
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">게시물 제목</label>
                            <div class="layout-col width25p"></div>
                            <label class="layout-col layout-col-head">작성자</label>
                            <div class="layout-col width25p"></div>
                            <label class="layout-col layout-col-head">작성일</label>
                            <div class="layout-col width25p"></div>
                        </div>
                        <div class="post-comment-content">
                            <p>
                                대댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1
                            </p>
                        </div>
                        <button class="pos-ab r20 t80" onclick="commentInputToggle(this)">답글</button>
                        <button class="pos-ab r20 t115">삭제</button>
                        <div class="post-comment-input display-none">
                            <input type="text"/>
                            <button>저장</button>
                        </div>
                    </div>
                    <div class="post-comment">
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">게시물 제목</label>
                            <div class="layout-col width25p"></div>
                            <label class="layout-col layout-col-head">작성자</label>
                            <div class="layout-col width25p"></div>
                            <label class="layout-col layout-col-head">작성일</label>
                            <div class="layout-col width25p"></div>
                        </div>
                        <div class="post-comment-content">
                            <p>
                                대댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1
                            </p>
                        </div>
                        <button class="pos-ab r20 t80" onclick="commentInputToggle(this)">답글</button>
                        <button class="pos-ab r20 t115">삭제</button>
                        <div class="post-comment-input display-none">
                            <input type="text"/>
                            <button>저장</button>
                        </div>
                    </div>
                    <div class="post-comment">
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">게시물 제목</label>
                            <div class="layout-col width25p"></div>
                            <label class="layout-col layout-col-head">작성자</label>
                            <div class="layout-col width25p"></div>
                            <label class="layout-col layout-col-head">작성일</label>
                            <div class="layout-col width25p"></div>
                        </div>
                        <div class="post-comment-content">
                            <p>
                                대댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1
                            </p>
                        </div>
                        <button class="pos-ab r20 t80" onclick="commentInputToggle(this)">답글</button>
                        <button class="pos-ab r20 t115">삭제</button>
                        <div class="post-comment-input display-none">
                            <input type="text"/>
                            <button>저장</button>
                        </div>
                    </div>
                    <div class="post-comment">
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">게시물 제목</label>
                            <div class="layout-col width25p"></div>
                            <label class="layout-col layout-col-head">작성자</label>
                            <div class="layout-col width25p"></div>
                            <label class="layout-col layout-col-head">작성일</label>
                            <div class="layout-col width25p"></div>
                        </div>
                        <div class="post-comment-content">
                            <p>
                                대댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1댓글 내용1
                            </p>
                        </div>
                        <button class="pos-ab r20 t80" onclick="commentInputToggle(this)">답글</button>
                        <button class="pos-ab r20 t115">삭제</button>
                        <div class="post-comment-input display-none">
                            <input type="text"/>
                            <button>저장</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<jsp:include page="../layouts/footer.jsp"/>
</body>