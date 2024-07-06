<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<jsp:include page="../../layouts/header.jsp"/>
<script>
    const mode = "${mode}";
    const idx = "${idx}";

    $(document).ready(() => {
        getCode();
    });

    /**
     * 상세/수정 모드 일경우 idx로 코드정보를 조회한다.
     * **/
    const getCode = () => {
        if (mode !== "add") {
            jqueryAjax("/common/code/getCode?idx=" + idx, "GET", (result) => {
                if (result) {
                    if (mode === "detail") {
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
     * 코드 저장
     * **/
    const saveCode = () => {
        if (confirm("저장 하시겠습니까?")) {
            if (validationCheck()) {
                const param = {
                    code: $("#code").val(),
                    codeName: $("#codeName").val(),
                    description: $("#description").val(),
                    ref1: $("#ref1").val(),
                    ref2: $("#ref2").val(),
                    ref3: $("#ref3").val()
                }

                let url = "";
                let redirectUrl = "";

                if (mode === "add") {
                    url = "/common/code/addCode";
                    redirectUrl = "/common/code/codeMgrPage";
                } else {
                    param.idx = idx;
                    param.updateUser = sessionStorage.getItem("loginId");
                    url = "/common/code/updateCode";
                    redirectUrl = "/common/code/codeDetailPage?mode=detail&idx=" + idx;
                }

                jqueryAjax(url, "POST", (result) => {
                    if (result === 1) {
                        alert("저장되었습니다.");
                        goPage(redirectUrl);
                    }
                }, param);
            }
        }
    }

    /**
     * 유효성 체크 (필수값, 중복체크)
     * **/
    const validationCheck = () => {

        if (isEmpty($("#code").val())) {
            alert("코드를 입력해주세요.");
            return false;
        }

        /** 코드 중복 체크 추가 일때만 체크 동기**/
        if (mode === "add") {
            let codeChk = 0;
            jqueryAjaxSync("/common/code/codeDuplicateChk?code=" + $("#code").val(), "GET", (result) => {
                codeChk = result;
            });

            if (codeChk > 0) {
                alert("중복된 코드가 존재합니다.");
                return false;
            }
        }

        if (isEmpty($("#codeName").val())) {
            alert("코드명을 입력해주세요.");
            return false;
        }

        if (isEmpty($("#description").val())) {
            alert("설명을 입력해주세요.");
            return false;
        }

        return true;
    }

    /**
     * 코드 삭제
     * **/
    const deleteCode = () => {
        if (confirm("삭제 하시겠습니까?")) {
            jqueryAjax("/common/code/deleteCode", "POST", (result) => {
                if (result === 1) {
                    alert("삭제되었습니다..");
                    goPage("/common/code/codeMgrPage");
                }
            }, [idx]);
        }
    }
</script>
<div class="layout-container">
    <jsp:include page="../../layouts/leftMenu.jsp"/>
    <section>
        <div class="layout-content">
            <div class="mgt10">
                <button class="float-right mgl10" onclick="goPage(document.referrer);">취소</button>
                <c:if test="${mode eq 'detail'}">
                    <button class="float-right mgl10" onclick="deleteCode()">삭제</button>
                    <button class="float-right" onclick="goPage('/common/code/codeDetailPage?mode=update&idx=${idx}')">수정</button>
                </c:if>
                <c:if test="${mode eq 'add' || mode eq 'update'}">
                    <button class="float-right" onclick="saveCode()">저장</button>
                </c:if>
            </div>
            <div class="layout-content-title">
                <c:if test="${mode eq 'add'}">
                    코드 추가
                </c:if>
                <c:if test="${mode eq 'update'}">
                    코드 수정
                </c:if>
                <c:if test="${mode eq 'detail'}">
                    코드 상세
                </c:if>
            </div>
            <c:if test="${mode eq 'add' || mode eq 'update'}">
                <div class="layout-card">
                    <input id="idx" type="hidden"/>
                    <div class="layout-row">
                        <label class="layout-col layout-col-head"><strong>*</strong> 코드</label>
                        <input id="code" class="width210" type="text" maxlength="25"/>
                    </div>
                    <div class="layout-row">
                        <label class="layout-col layout-col-head"><strong>*</strong> 코드명</label>
                        <input id="codeName" class="width210" type="text" maxlength="25"/>
                    </div>
                    <div class="layout-row">
                        <label class="layout-col layout-col-head"><strong>*</strong> 설명</label>
                        <input id="description" class="width210" type="text" maxlength="100"/>
                    </div>
                    <div class="layout-row">
                        <label class="layout-col layout-col-head">참조1</label>
                        <input id="ref1" class="width210" type="text" maxlength="25"/>
                    </div>
                    <div class="layout-row">
                        <label class="layout-col layout-col-head">참조2</label>
                        <input id="ref2" class="width210" type="text" maxlength="25"/>
                    </div>
                    <div class="layout-row">
                        <label class="layout-col layout-col-head">참조3</label>
                        <input id="ref3" class="width210" type="text" maxlength="25"/>
                    </div>
                </div>
            </c:if>
            <c:if test="${mode eq 'detail'}">
                <div class="layout-card">
                    <div class="layout-row">
                        <label class="layout-col layout-col-head">코드</label>
                        <label class="layout-col width25p" id="codeDt"></label>
                        <label class="layout-col layout-col-head">코드명</label>
                        <label class="layout-col width25p" id="codeNameDt"></label>
                    </div>
                    <div class="layout-row">
                        <label class="layout-col layout-col-head">설명</label>
                        <div class="layout-col" id="descriptionDt"></div>
                    </div>
                    <div class="layout-row">
                        <label class="layout-col layout-col-head">참조1</label>
                        <div class="layout-col width12p" id="ref1Dt"></div>
                        <label class="layout-col layout-col-head">참조2</label>
                        <div class="layout-col width12p" id="ref2Dt"></div>
                        <label class="layout-col layout-col-head">참조3</label>
                        <div class="layout-col width12p" id="ref3Dt"></div>
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
                    <button class="float-right mgl10" onclick="goPage(document.referrer);">추가</button>
                </div>
                <div class="layout-content-title">
                    하위 코드
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
            </c:if>
        </div>
    </section>
</div>
<jsp:include page="../../layouts/footer.jsp"/>
</body>