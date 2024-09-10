<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<body>
<jsp:include page="../../layouts/header.jsp"/>
<script>
    $(document).ready(() => {

        /** 코드 조회 **/
        getCodeList();
    });

    /**
     *
     * **/
    const getCodeList = () => {
        const code = $("#code").val();
        const codeName= $("#codeName").val();

        jqueryAjax("/common/code/getCodeList?code=" + code + "&codeName=" + codeName, "GET", (result)=> {

            $("#codeList").html("");

            if (result.length === 0) {

                let trTag = $("<tr>");
                let tdTagEmpty = $("<td>", {colspan: 5, text: "데이터가 존재하지 않습니다."});

                trTag.append(tdTagEmpty);
                $("#codeList").append(trTag);

            } else {
                result.forEach((value, index) => {

                    let trTag = $("<tr>", {class: "cur-pointer"});

                    trTag.click(() => {
                        goPage("/common/code/codeDetailPage?mode=detail&idx=" + value.idx);
                    });

                    let tdTagIndex = $("<td>", {text: index + 1});
                    let tdTagCode = $("<td>", {text: value.code, class: "tal"});
                    let tdTagCodeName = $("<td>", {text: value.codeName, class: "tal"});
                    let tdTagCreateDate = $("<td>", {text: value.createDate});
                    let tdTagCreateUser = $("<td>", {text: value.createUser});

                    trTag.append(tdTagIndex);
                    trTag.append(tdTagCode);
                    trTag.append(tdTagCodeName);
                    trTag.append(tdTagCreateDate);
                    trTag.append(tdTagCreateUser);

                    $("#codeList").append(trTag);
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
                코드 관리
            </div>
            <div class="layout-search-bar layout-card shadow display-flex mgb10 scrollbar">
                <label class="search-bar-item">
                    코드
                    <input class="comm-input" type="text" id="code" onkeydown="enterSearch(event, getCodeList)">
                </label>
                <label class="search-bar-item">
                    코드 명
                    <input class="comm-input" type="text" id="codeName" onkeydown="enterSearch(event, getCodeList)">
                </label>
            </div>
            <div class="mgb10 display-flex flex-end">
                <button class="btn-primary" onclick="goPage('/common/code/codeDetailPage?mode=add')">추가</button>
                <button class="btn-primary mgl10" onclick="getCodeList();">조회</button>
            </div>
            <div class="layout-card shadow">
                <div class="layout-table scrollbar">
                    <table>
                        <colgroup>
                            <col style="width:10px">
                            <col style="">
                            <col style="">
                            <col style="width:200px">
                            <col style="width:200px">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>코드</th>
                                <th>코드명</th>
                                <th>등록일</th>
                                <th>등록자</th>
                            </tr>
                        </thead>
                        <tbody id="codeList">
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
</div>
<jsp:include page="../../layouts/footer.jsp"/>
</body>