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
                 컨텐츠 관리
            </div>
            <div class="layout-search-bar layout-card shadow display-flex mgb10 scrollbar">
                <label class="search-bar-item">
                    컨텐츠 명
                    <input class="comm-input" type="text" onkeydown="enterSearch(event, getCodeList)">
                </label>
            </div>
            <div class="mgb10 display-flex flex-end">
                <button class="btn-primary" onclick="goPage('/content/contentDetailPage')">추가</button>
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
                        </colgroup>
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>컨텐츠명</th>
                                <th>생성자</th>
                                <th>생성일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="cur-pointer">
                                <td>1</td>
                                <td>컨텐츠1</td>
                                <td>admin</td>
                                <td>2024-08-30</td>
                            </tr>
                            <tr class="cur-pointer">
                                <td>2</td>
                                <td>컨텐츠2</td>
                                <td>admin</td>
                                <td>2024-08-30</td>
                            </tr>
                            <tr class="cur-pointer">
                                <td>3</td>
                                <td>컨텐츠3</td>
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