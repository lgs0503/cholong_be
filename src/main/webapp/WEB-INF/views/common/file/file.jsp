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
                파일 관리
            </div>
            <div class="layout-search-bar layout-card shadow display-flex mgb10">
                <div class="search-bar-item4">
                    <label class="search-bar-item">
                        파일명
                        <input type="text" id="code" onkeydown="enterSearch(event, getCodeList)">
                    </label>
                    <label class="search-bar-item">
                        매핑타입
                        <select>
                            <option>게시글</option>
                            <option>프로팔사진</option>
                            <option>기타</option>
                        </select>
                    </label>
                </div>
            </div>
            <div class="mgb10 display-flex flex-end">
                <button class="mgl10" onclick="">조회</button>
            </div>
            <div class="layout-card shadow">
                <div class="layout-table">
                    <table>
                        <colgroup>
                            <col style="width:10px">
                            <col style="">
                            <col style="width:200px">
                            <col style="width:100px">
                            <col style="">
                            <col style="width:200px">
                            <col style="width:200px">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>파일명</th>
                                <th>파일사이즈</th>
                                <th>매핑타입</th>
                                <th>비고(매핑되어있는 게시글 혹은 계정정보)</th>
                                <th>생성일</th>
                                <th>생성자</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>파일명</td>
                                <td>파일사이즈</td>
                                <td>매핑타입</td>
                                <td>비고(매핑되어있는 게시글 혹은 계정정보)</td>
                                <td>생성일</td>
                                <td>생성자</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>파일명</td>
                                <td>파일사이즈</td>
                                <td>매핑타입</td>
                                <td>비고(매핑되어있는 게시글 혹은 계정정보)</td>
                                <td>생성일</td>
                                <td>생성자</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>파일명</td>
                                <td>파일사이즈</td>
                                <td>매핑타입</td>
                                <td>비고(매핑되어있는 게시글 혹은 계정정보)</td>
                                <td>생성일</td>
                                <td>생성자</td>
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