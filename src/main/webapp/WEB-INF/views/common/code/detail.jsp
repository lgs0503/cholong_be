<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<jsp:include page="../../layouts/header.jsp"/>
<script>
    const mode = "${mode}";
    const idx = "${idx}";
    const upperCode = "${upperCode}";
    const upperIdx = "${upperIdx}";

    $(document).ready(() => {
        getCode();
    });

    /**
     * 상세/수정 모드 일경우 idx로 코드정보를 조회한다.
     * **/
    const getCode = () => {
        if (mode !== "add") {
            jqueryAjaxSync("/common/code/getCode?idx=" + idx, "GET", (result) => {
                if (result) {
                    if (mode === "detail" || mode === "subDetail") {
                        $("#codeDt").text(result.code);
                        $("#codeNameDt").text(result.codeName);
                        $("#descriptionDt").text(result.description);
                        $("#ref1Dt").text(result.ref1);
                        $("#ref2Dt").text(result.ref2);
                        $("#ref3Dt").text(result.ref3);
                        $("#createDateDt").text(result.createDate);
                        $("#createUserDt").text(result.createUser);
                        $("#updateDateDt").text(result.updateDate);
                        $("#updateUserDt").text(result.updateUser);
                        $("#sortDt").text(result.sort);


                        if (mode === "detail") {
                            getSubCodeList(result.code);
                        } else {
                            $("#upperCodeDt").text(result.upperCode);
                        }

                    } else {
                        $("#code").val(result.code);
                        $("#code").prop( "disabled", true );
                        $("#codeName").val(result.codeName);
                        $("#description").val(result.description);
                        $("#ref1").val(result.ref1);
                        $("#ref2").val(result.ref2);
                        $("#re4").val(result.ref3);
                    }
                }
            });
        }
    }

    /**
     * 하위 코드 리스트를 조회한다.
     * **/
    const getSubCodeList = (upperCode) => {
        jqueryAjaxSync("/common/code/getCodeList?upperCode=" + upperCode, "GET", (result) => {
            $("#subCodeList").html("");

            if (result.length === 0) {

                let trTag = $("<tr>");
                let tdTagEmpty = $("<td>", {colspan: 6, text: "데이터가 존재하지 않습니다."});

                trTag.append(tdTagEmpty);
                $("#subCodeList").append(trTag);

            } else {
                result.forEach((value, index) => {

                    let trTag = $("<tr>", {class: "cur-pointer"});

                    trTag.click(() => {
                        goPage("/common/code/codeDetailPage?mode=subDetail&idx=" + value.idx + "&upperIdx=" + idx);
                    });

                    let tdTagIndex = $("<td>", {text: index + 1});
                    let tdTagCode = $("<td>", {text: value.code, class: "tal"});
                    let tdTagCodeName = $("<td>", {text: value.codeName, class: "tal"});
                    let tdTagCreateDate = $("<td>", {text: value.createDate});
                    let tdTagCreateUser = $("<td>", {text: value.createUser});
                    let tdTagSort = $("<td>", {text: value.sort});

                    trTag.append(tdTagIndex);
                    trTag.append(tdTagCode);
                    trTag.append(tdTagCodeName);
                    trTag.append(tdTagCreateDate);
                    trTag.append(tdTagCreateUser);
                    trTag.append(tdTagSort);

                    $("#subCodeList").append(trTag);
                });
            }
        });
    }

    /**
     * 코드 저장
     * **/
    const saveCode = () => {
        commonConfirm("저장 하시겠습니까?", () => {
            if (validationCheck()) {
                const param = {
                    code: $("#code").val(),
                    codeName: $("#codeName").val(),
                    description: $("#description").val(),
                    ref1: $("#ref1").val(),
                    ref2: $("#ref2").val(),
                    ref3: $("#ref3").val(),
                    sort: $("#sort").val()
                }

                let url = "";
                let redirectUrl = "";

                if (mode === "add") {
                    url = "/common/code/addCode";
                    param.createUser = sessionStorage.getItem("loginId");

                    /** 하위 코드 저장 용 부모 코드 ID**/
                    if (!isEmpty(upperCode)) {
                        param.upperCode = upperCode;
                        redirectUrl = "/common/code/codeDetailPage?mode=detail&idx=" + upperIdx;
                    } else {
                        redirectUrl = "/common/code/codeMgrPage";
                    }

                } else {
                    param.idx = idx;
                    param.updateUser = sessionStorage.getItem("loginId");
                    url = "/common/code/updateCode";
                    if (!isEmpty(upperIdx)) {
                        redirectUrl = "/common/code/codeDetailPage?mode=detail&idx=" + upperIdx;
                    } else {
                        redirectUrl = "/common/code/codeDetailPage?mode=detail&idx=" + idx;
                    }
                }

                jqueryAjax(url, "POST", (result) => {
                    if (result === 1) {
                        commonAlert("저장되었습니다.", () => {
                            goPage(redirectUrl);
                        });
                    }
                }, param);
            }
        });
    }

    /**
     * 유효성 체크 (필수값, 중복체크)
     * **/
    const validationCheck = () => {

        if (isEmpty($("#code").val())) {
            commonAlert("코드를 입력해주세요.");
            return false;
        }

        /** 코드 중복 체크 추가 일때만 체크 동기**/
        if (mode === "add") {
            let codeChk = 0;
            jqueryAjaxSync("/common/code/codeDuplicateChk?code=" + $("#code").val(), "GET", (result) => {
                codeChk = result;
            });

            if (codeChk > 0) {
                commonAlert("중복된 코드가 존재합니다.");
                return false;
            }
        }

        if (isEmpty($("#codeName").val())) {
            commonAlert("코드명을 입력해주세요.");
            return false;
        }

        if (isEmpty($("#description").val())) {
            commonAlert("설명을 입력해주세요.");
            return false;
        }

        return true;
    }

    /**
     * 코드 삭제
     * **/
    const deleteCode = () => {
        commonConfirm("삭제 하시겠습니까?", () => {
            jqueryAjax("/common/code/deleteCode", "POST", (result) => {
                if (result === 1) {
                    commonAlert("삭제되었습니다.");

                    if (isEmpty(upperIdx)) {
                        goPage("/common/code/codeMgrPage");
                    } else {
                        goPage("/common/code/codeDetailPage?mode=detail&idx=" + upperIdx);
                    }
                }
            }, [idx]);
        });
    }

    const goAddSubCodePage = () => {
        goPage('/common/code/codeDetailPage?mode=add&upperCode=' + $("#codeDt").text() + "&upperIdx=" + idx);
    }

</script>
<div class="layout-container">
    <jsp:include page="../../layouts/leftMenu.jsp"/>
    <section>
        <div class="layout-content">
            <div class="mgt10">
                <c:if test="${mode eq 'detail'}">
                    <button class="btn-primary float-right mgl10" onclick="goPage('/common/code/codeMgrPage');">뒤로가기</button>
                    <button class="btn-primary float-right mgl10" onclick="deleteCode()">삭제</button>
                    <button class="btn-primary float-right" onclick="goPage('/common/code/codeDetailPage?mode=update&idx=${idx}')">수정</button>
                </c:if>
                <c:if test="${mode eq 'subDetail'}">
                    <button class="btn-primary float-right mgl10" onclick="goPage('/common/code/codeDetailPage?mode=detail&idx=${upperIdx}');">뒤로가기</button>
                    <button class="btn-primary float-right mgl10" onclick="deleteCode()">삭제</button>
                    <button class="btn-primary float-right" onclick="goPage('/common/code/codeDetailPage?mode=update&idx=${idx}&upperIdx=${upperIdx}')">수정</button>
                </c:if>
                <c:if test="${mode eq 'add' || mode eq 'update'}">
                    <button class="btn-primary float-right mgl10" onclick="goPage('/common/code/codeMgrPage');">뒤로가기</button>
                    <button class="btn-primary float-right" onclick="saveCode()">저장</button>
                </c:if>
            </div>
            <div class="layout-content-title">
                <c:if test="${mode eq 'add'}">
                    코드 추가
                </c:if>
                <c:if test="${mode eq 'update'}">
                    코드 수정
                </c:if>
                <c:if test="${mode eq 'detail' || mode eq 'subDetail'}">
                    코드 상세
                </c:if>
            </div>
            <c:if test="${mode eq 'add' || mode eq 'update'}">
                <div class="layout-card">
                    <input id="idx" type="hidden"/>
                    <div class="layout-row">
                        <label class="layout-col layout-col-head"><strong>*</strong> 코드</label>
                        <input id="code" class="comm-input width210" type="text" maxlength="25"/>
                    </div>
                    <div class="layout-row">
                        <label class="layout-col layout-col-head"><strong>*</strong> 코드명</label>
                        <input id="codeName" class="comm-input width210" type="text" maxlength="25"/>
                    </div>
                    <c:if test="${upperCode ne ''}">
                        <div class="layout-row">
                            <label class="layout-col layout-col-head"><strong>*</strong>부모 코드</label>
                            <input id="upperCodeId" class="comm-input width210" type="text" maxlength="25" value="${upperCode}" disabled/>
                        </div>
                    </c:if>
                    <div class="layout-row">
                        <label class="layout-col layout-col-head"><strong>*</strong> 설명</label>
                        <input id="description" class="comm-input width210" type="text" maxlength="100"/>
                    </div>
                    <div class="layout-row">
                        <label class="layout-col layout-col-head">참조1</label>
                        <input id="ref1" class="comm-input width210" type="text" maxlength="25"/>
                    </div>
                    <div class="layout-row">
                        <label class="layout-col layout-col-head">참조2</label>
                        <input id="ref2" class="comm-input width210" type="text" maxlength="25"/>
                    </div>
                    <div class="layout-row">
                        <label class="layout-col layout-col-head">참조3</label>
                        <input id="ref3" class="comm-input width210" type="text" maxlength="25"/>
                    </div>
                    <div class="layout-row">
                        <label class="layout-col layout-col-head">순번</label>
                        <input id="sort" class="comm-input width210" type="text" maxlength="25" oninput="onlyNumberInput(this)"/>
                    </div>
                </div>
            </c:if>
            <c:if test="${mode eq 'detail' || mode eq 'subDetail'}">
                <div class="layout-card">
                    <div class="layout-row">
                        <c:if test="${mode eq 'detail'}">
                            <label class="layout-col layout-col-head">코드</label>
                            <label class="layout-col width25p" id="codeDt"></label>
                            <label class="layout-col layout-col-head">코드명</label>
                            <label class="layout-col width25p" id="codeNameDt"></label>
                        </c:if>
                        <c:if test="${mode eq 'subDetail'}">
                            <label class="layout-col layout-col-head">코드</label>
                            <label class="layout-col width12p" id="codeDt"></label>
                            <label class="layout-col layout-col-head">코드명</label>
                            <label class="layout-col width12p" id="codeNameDt"></label>
                            <label class="layout-col layout-col-head">부모코드</label>
                            <label class="layout-col width12p" id="upperCodeDt"></label>
                        </c:if>
                    </div>
                    <div class="layout-row">
                        <label class="layout-col layout-col-head">설명</label>
                        <div class="layout-col" id="descriptionDt"></div>
                    </div>
                    <div class="layout-row">
                        <label class="layout-col layout-col-head">참조1</label>
                        <div class="layout-col width25p" id="ref1Dt"></div>
                        <label class="layout-col layout-col-head">참조2</label>
                        <div class="layout-col width25p" id="ref2Dt"></div>
                    </div>
                    <div class="layout-row">
                        <label class="layout-col layout-col-head">참조3</label>
                        <div class="layout-col width25p" id="ref3Dt"></div>
                        <label class="layout-col layout-col-head">순번</label>
                        <div class="layout-col width25p" id="sortDt"></div>
                    </div>
                    <div class="layout-row">
                        <label class="layout-col layout-col-head">생성일</label>
                        <div class="layout-col width25p" id="createDateDt"></div>
                        <label class="layout-col layout-col-head">생성자</label>
                        <div class="layout-col width25p" id="createUserDt"></div>
                    </div>
                    <div class="layout-row">
                        <label class="layout-col layout-col-head">수정일</label>
                        <div class="layout-col width25p" id="updateDateDt"></div>
                        <label class="layout-col layout-col-head">수정자</label>
                        <div class="layout-col width25p" id="updateUserDt"></div>
                    </div>
                </div>
            </c:if>

            <c:if test="${mode eq 'detail'}">
                <div class="mgt20">
                    <button class="btn-primary float-right mgl10" onclick="goAddSubCodePage();">추가</button>
                </div>
                <div class="layout-content-title">
                    하위 코드
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
                                <col style="width:100px">
                            </colgroup>
                            <thead>
                            <tr>
                                <th>No</th>
                                <th>코드</th>
                                <th>코드명</th>
                                <th>등록일</th>
                                <th>등록자</th>
                                <th>순번</th>
                            </tr>
                            </thead>
                            <tbody id="subCodeList">
                            </tbody>
                        </table>
                    </div>
                </div>
            </c:if>
        </div>
    </section>
</div>
<jsp:include page="../../layouts/footer.jsp"/>
</body>