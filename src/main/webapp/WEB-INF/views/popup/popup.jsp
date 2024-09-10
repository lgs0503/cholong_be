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
                 팝업 관리
            </div>
            <div class="layout-search-bar layout-card shadow display-flex mgb10 scrollbar">
                <label class="search-bar-item">
                    팝업명
                    <input class="comm-input" type="text" onkeydown="enterSearch(event, getCodeList)">
                </label>
                <label class="search-bar-item">
                    타입
                    <select class="comm-select">
                        <option>선택</option>
                        <option>IMAGE</option>
                        <option>HTML</option>
                    </select>
                </label>
                <label class="search-bar-item">
                    시작일
                    <input class="comm-input" type="date" onkeydown="enterSearch(event, getCodeList)">
                </label>
                <label class="search-bar-item">
                    종료일
                    <input class="comm-input" type="date" onkeydown="enterSearch(event, getCodeList)">
                </label>
            </div>
            <div class="mgb10 display-flex flex-end">
                <button class="btn-primary" onclick="goPage('/popup/popupDetailPage')">추가</button>
                <button class="btn-primary mgl10" onclick="">조회</button>
            </div>
            <div class="layout-card shadow">
                <div class="layout-table scrollbar">
                    <table>
                        <colgroup>
                            <col style="width:10px">
                            <col style="">
                            <col style="width:200px">
                            <col style="width:200px">
                            <col style="width:200px">
                            <col style="width:200px">
                            <col style="width:200px">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>팝업 명</th>
                                <th>타입</th>
                                <th>시작일</th>
                                <th>종료일</th>
                                <th>생성자</th>
                                <th>생성일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="cur-pointer">
                                <td>1</td>
                                <td>팝업1</td>
                                <td>HTML</td>
                                <td>2024-08-30</td>
                                <td>2024-08-40</td>
                                <td>admin</td>
                                <td>2024-08-30</td>
                            </tr>
                            <tr class="cur-pointer">
                                <td>1</td>
                                <td>팝업2</td>
                                <td>IMAGE</td>
                                <td>2024-08-30</td>
                                <td>2024-08-40</td>
                                <td>admin</td>
                                <td>2024-08-30</td>
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