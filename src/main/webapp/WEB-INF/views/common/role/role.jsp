<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<body>
<jsp:include page="../../layouts/header.jsp"/>
<script>
    $(document).ready(() => {
        getRoleList();
    });

    /**
     * 권한 리스트 조회
     * ***/
    const getRoleList = () => {

        jqueryAjax("/common/role/getRoleList?roleName=" + $("#roleName").val(),
            "GET",
            (result) => {

                $("#roleList").html("");

                if (result.length === 0) {

                    let trTag = $("<tr>");
                    let tdTagEmpty = $("<td>", {colspan: 4, text: "데이터가 존재하지 않습니다."});

                    trTag.append(tdTagEmpty);
                    $("#roleList").append(trTag);

                } else {

                    result.forEach((value, index) => {

                        const trTag = $("<tr>", {class: "cur-pointer"});

                        trTag.append($("<td>", {text: index + 1}));
                        trTag.append($("<td>", {text: value.roleName}));
                        trTag.append($("<td>", {text: value.createUser}));
                        trTag.append($("<td>", {text: value.createDate}));

                        trTag.click(() => {
                            goPage("/common/role/roleDetailPage?idx=" + value.idx);
                        });

                        $("#roleList").append(trTag);
                    });
                }
            });
    }


</script>
<div class="layout-container">
    <jsp:include page="../../layouts/leftMenu.jsp"/>
    <section>
    <div class="layout-content">
            <div class="layout-content-title">
                권한 관리
            </div>
            <div class="layout-search-bar layout-card shadow display-flex mgb10">
                <label class="search-bar-item">
                    권한명
                    <input id="roleName" class="comm-input" type="text" onkeydown="enterSearch(event, getRoleList)">
                </label>
            </div>
            <div class="mgb10 display-flex flex-end">
                <button class="btn-primary" onclick="goPage('/common/role/roleSavePage?mode=add')">추가</button>
                <button class="btn-primary mgl10" onclick="getRoleList();">조회</button>
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
                                <th>등록자</th>
                                <th>등록일</th>
                            </tr>
                        </thead>
                        <tbody id="roleList">
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
</div>
<jsp:include page="../../layouts/footer.jsp"/>
</body>