<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<jsp:include page="../../layouts/header.jsp"/>
<script>

    const mode = "${mode}";

    $(document).ready(()=> {
        if (mode === "update") {

            jqueryAjax("/common/role/getRole?idx=${idx}", "GET", (result) => {
                if (result) {
                    $("#idx").val(result.idx);
                    $("#roleName").val(result.roleName);
                    $("#description").val(result.description);
                }
            });

        }
    });


    /**
     * 권한 저장
     * **/
    const saveRole = () => {

        if (confirm("저장하시겠습니까?")) {

          const validationResult = validationCheck();

          if (validationResult === "success") {

              let params = {
                  roleName : $("#roleName").val(),
                  description : $("#description").val()
              }

              const loginUser =  sessionStorage.getItem("loginId");

              if (mode === "add") {
                  params.createUser = loginUser;
              } else  if (mode === "update") {
                  params.idx = "${idx}";
                  params.updateUser = loginUser;
              }

              let url = "";

              if (mode === "add") {
                  url = "/common/role/addRole";
              } else if (mode === "update") {
                  url = "/common/role/updateRole";
              }

              jqueryAjax(url, "POST", (result) => {
                  if (result === 1) {
                      alert("저장되었습니다.");
                      goPage("/common/role/roleMgrPage");
                  }
              }, params);
          } else {
              alert(validationResult);
          }
        }
    }

    /**
     * 유효성 체크
     * **/
    const validationCheck = () => {

        if (isEmpty($("#roleName").val())) {
            return "권한명을 입력해주세요.";
        }

        return "success";
    }
</script>
<div class="layout-container">
    <jsp:include page="../../layouts/leftMenu.jsp"/>
    <section>
        <div class="layout-content">
            <div class="mgt10">
                <button class="btn-primary float-right mgl10" onclick="goPage('/common/role/roleMgrPage')">뒤로가기</button>
                <button class="btn-primary float-right" onclick="saveRole();">저장</button>
            </div>
            <div class="layout-content-title">
                권한 추가
            </div>
            <div class="layout-card">
                <input id="idx" type="hidden" />
                <div class="layout-row">
                    <label class="layout-col layout-col-head">권한명</label>
                    <input id="roleName" class="comm-input width210" type="text" maxlength="25"/>
                </div>
                <div class="layout-row">
                    <label class="layout-col layout-col-head">설명</label>
                    <input id="description" class="comm-input width210" type="text" maxlength="100"/>
                </div>
            </div>
        </div>
    </section>
</div>
<jsp:include page="../../layouts/footer.jsp"/>


<jsp:include page="roleModal.jsp"/>
</body>
