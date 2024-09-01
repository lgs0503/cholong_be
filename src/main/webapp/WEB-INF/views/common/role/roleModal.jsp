<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
</script>

<div id="roleModal" class="popup-modal width600 z-index300">
    <div class="popup-title">
        <h2>회원조회</h2>
        <button class="popup-modal-close" onclick="closeModal('roleModal');">✖</button>
    </div>
    <section>
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
            <button class="btn-primary mgl10" onclick="getUserList();">조회</button>
        </div>
        <div class="layout-table">
            <table>
                <colgroup>
                    <col style="width:10px">
                    <col style="">
                    <col style="">
                </colgroup>
                <thead>
                    <tr>
                        <th>No</th>
                        <th>아이디</th>
                        <th>이름</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="cur-pointer">
                        <td>1</td>
                        <td>테스트</td>
                        <td>이광석</td>
                    </tr>
                    <tr class="cur-pointer">
                        <td>2</td>
                        <td>테스트</td>
                        <td>이광석</td>
                    </tr>
                    <tr class="cur-pointer">
                        <td>3</td>
                        <td>테스트</td>
                        <td>이광석</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </section>
</div>
<div class="modal-background"></div>