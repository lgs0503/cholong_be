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
                 게시판 관리
            </div>
            <div class="layout-search-bar layout-card shadow display-flex mgb10">
                <label class="search-bar-item">
                    게시판명
                    <input class="comm-input" type="text" id="code" onkeydown="enterSearch(event, getCodeList)">
                </label>
                <label class="search-bar-item">
                    사용여부
                    <select class="comm-select">
                        <option>선택</option>
                        <option>사용</option>
                        <option>미사용</option>
                    </select>
                </label>
            </div>
            <div class="mgb10 display-flex flex-end">
                <button class="btn-primary" onclick="goPage('/board/boardDetailPage')">추가</button>
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
                                <th>게시판 명</th>
                                <th>타입</th>
                                <th>생성일</th>
                                <th>생성자</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="cur-pointer">
                                <td>1</td>
                                <td>공지사항</td>
                                <td>일반</td>
                                <td>2024-08-30</td>
                                <td>admin</td>
                            </tr>
                            <tr class="cur-pointer">
                                <td>2</td>
                                <td>그림게시판</td>
                                <td>사진</td>
                                <td>2024-08-30</td>
                                <td>admin</td>
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