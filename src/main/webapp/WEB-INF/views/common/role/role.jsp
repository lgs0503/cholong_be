<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<body>
<jsp:include page="../../layouts/header.jsp"/>
<script>
</script>
<div class="layout-container">
    <jsp:include page="../../layouts/leftMenu.jsp"/>
    <section>
        <div class="layout-content">
            <div class="layout-content-title">
                권한 관리
            </div>
            <div class="layout-search-bar layout-card shadow display-flex mgb10">
                <div class="search-bar-item4">
                    <label class="search-bar-item">
                        권한명
                        <input type="text">
                    </label>
                </div>
            </div>
            <div class="mgb10 display-flex flex-end">
                <button onclick="goPage('/common/role/roleDetailPage')">추가</button>
                <button class="mgl10" onclick="getCodeList();">조회</button>
            </div>
            <div class="layout-card shadow">
                <div class="layout-table">
                    <table>
                        <colgroup>
                            <col style="width:10px">
                            <col style="">
                            <col style="">
                            <col style="width:200px">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>권한명</th>
                                <th>등록일</th>
                                <th>등록자</th>
                            </tr>
                        </thead>
                        <tbody id="roleList">
                            <tr>
                                <td>1</td>
                                <td>ADMIN</td>
                                <td>2024-08-23</td>
                                <td>ADMIN</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>USER</td>
                                <td>2024-08-23</td>
                                <td>ADMIN</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>MANAGER</td>
                                <td>2024-08-23</td>
                                <td>ADMIN</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
</div>
<jsp:include page="../../layouts/footer.jsp"/>
</body>