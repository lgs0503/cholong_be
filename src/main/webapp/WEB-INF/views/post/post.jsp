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
                 게시글 관리
            </div>
            <div class="layout-search-bar layout-card shadow display-flex mgb10">
                <label class="search-bar-item">
                    제목
                    <input class="comm-input" type="text" onkeydown="enterSearch(event, getCodeList)">
                </label>
                <label class="search-bar-item">
                    글쓴이
                    <input class="comm-input" type="text" onkeydown="enterSearch(event, getCodeList)">
                </label>
                <label class="search-bar-item">
                    카테고리
                    <select class="comm-select">
                        <option>선택</option>
                        <option>공지사항</option>
                        <option>사진</option>
                    </select>
                </label>
            </div>
            <div class="mgb10 display-flex flex-end">
                <button class="btn-primary" onclick="goPage('/post/postDetailPage')">추가</button>
                <button class="btn-primary mgl10" onclick="">조회</button>
            </div>
            <div class="layout-card shadow">
                <div class="layout-table">
                    <table>
                        <colgroup>
                            <col style="width:10px">
                            <col style="">
                            <col style="width:200px">
                            <col style="width:200px">
                            <col style="width:200px">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>제목</th>
                                <th>글쓴이</th>
                                <th>작성일</th>
                                <th>게시판</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="cur-pointer">
                                <td>1</td>
                                <td>java 공부 입니다.</td>
                                <td>admin</td>
                                <td>2024-08-30</td>
                                <td>java 공부 게시판</td>
                            </tr>
                            <tr class="cur-pointer">
                                <td>2</td>
                                <td>오라클 공부 입니다.</td>
                                <td>admin</td>
                                <td>2024-08-30</td>
                                <td>오라클 게시판</td>
                            </tr>
                            <tr class="cur-pointer">
                                <td>3</td>
                                <td>공지사항 입니다.</td>
                                <td>admin</td>
                                <td>2024-08-30</td>
                                <td>공지사항</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
</div>
<jsp:include page="../layouts/footer.jsp"/>
</body>