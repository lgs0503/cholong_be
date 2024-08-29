<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
</script>

<div id="myPageModal" class="popup-modal width300 z-index300">
    <div class="popup-title">
        <h2>비밀번호 변경</h2>
    </div>
    <section class="mgb10">
        <input class="width100p mgb10" type="password" placeholder="현재 비밀번호"/>
        <input class="width100p mgb10" type="password" placeholder="수정 비밀번호"/>
        <input class="width100p mgb10" type="password" placeholder="수정 비밀번호 확인"/>
        <div class="width100p mgb10">
            <button class="float-right mgl10" onclick="closeModal('myPageModal');">취소</button>
            <button class="float-right">변경</button>
        </div>
    </section>
</div>
<div class="modal-background"></div>