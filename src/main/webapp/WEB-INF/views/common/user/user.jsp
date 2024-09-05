<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<body>
<jsp:include page="../../layouts/header.jsp"/>
<script>
    $(document).ready(() => {
        getUserList();
        console.log("test");
    });

    const getUserList = () => {
        const userId = $("#userId").val();
        const korName= $("#korName").val();

        $("#userList").html("");

        jqueryAjax("/common/user/getUserList?userId=" + userId + "&korName=" + korName, "GET", (result)=> {
            if (result.length === 0) {

                let trTag = $("<tr>");
                let tdTagEmpty = $("<td>", {colspan: 5, text: "데이터가 존재하지 않습니다."});

                trTag.append(tdTagEmpty);
                $("#userList").append(trTag);

            } else {
                result.forEach((value, index) => {
                    let trTag = $("<tr>", {class: "cur-pointer"});

                    trTag.click(() => {
                        goPage("/common/user/userDetailPage");
                    });

                    let tdTagIndex = $("<td>", {text: index + 1});
                    let tdTagUserId = $("<td>", {text: value.userId});
                    let tdTagKorName = $("<td>", {text: value.korName});
                    let tdTagGender = $("<td>", {text: value.gender});
                    let tdTagCreateDate = $("<td>", {text: value.createDate});

                    trTag.append(tdTagIndex);
                    trTag.append(tdTagUserId);
                    trTag.append(tdTagKorName);
                    trTag.append(tdTagGender);
                    trTag.append(tdTagCreateDate);

                    $("#userList").append(trTag);
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
                회원 관리
            </div>
            <div class="layout-search-bar layout-card shadow display-flex mgb10">
                <label class="search-bar-item">
                    아이디
                    <input class="comm-input" type="text" id="userId" onkeydown="enterSearch(event, getUserList)">
                </label>
                <label class="search-bar-item">
                    이름
                    <input class="comm-input" type="text" id="korName" onkeydown="enterSearch(event, getUserList)">
                </label>
            </div>
            <div class="mgb10 display-flex flex-end">
                <button class="btn-primary" onclick="goPage('/common/user/userDetailPage')">추가</button>
                <button class="btn-primary mgl10" onclick="getUserList();">조회</button>
            </div>
            <div class="layout-card shadow">
                <div class="layout-table">
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
                            <th>아이디</th>
                            <th>이름</th>
                            <th>성별</th>
                            <th>등록일</th>
                        </tr>
                        </thead>
                        <tbody id="userList">
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>

</div>

<jsp:include page="../../layouts/footer.jsp"/>
</body>