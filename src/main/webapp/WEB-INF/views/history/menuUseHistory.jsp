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
                 메뉴 사용 이력
            </div>
            <div class="layout-search-bar layout-card shadow display-flex mgb10 scrollbar">
                <label class="search-bar-item">
                    메뉴 명
                    <input class="comm-input" type="text" onkeydown="enterSearch(event, getCodeList)">
                </label>
                <label class="search-bar-item">
                    아이디
                    <input class="comm-input" type="text" onkeydown="enterSearch(event, getCodeList)">
                </label>
                <label class="search-bar-item">
                    시작일
                    <input class="comm-input" type="date" onkeydown="enterSearch(event, getCodeList)">
                </label>
                <label class="search-bar-item">
                    종료일
                    <input class="comm-input" type="date"  onkeydown="enterSearch(event, getCodeList)">
                </label>
            </div>
            <div class="mgb10 display-flex flex-end">
                <button class="btn-primary mgl10" onclick="">조회</button>
            </div>
            <div class="layout-card shadow">
                <div class="layout-table scrollbar">
                    <table>
                        <colgroup>
                            <col style="width:10px">
                            <col style="width:200px">
                            <col style="">
                            <col style="width:200px">
                            <col style="">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>메뉴명</th>
                                <th>아이디</th>
                                <th>이름</th>
                                <th>시간</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>파일관리</td>
                                <td>admin</td>
                                <td>이광석</td>
                                <td>2024-08-40 15:20:22</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>코드관리</td>
                                <td>admin</td>
                                <td>이광석</td>
                                <td>2024-08-40 17:20:22</td>
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