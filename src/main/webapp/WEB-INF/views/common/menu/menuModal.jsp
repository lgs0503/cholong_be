<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
</script>

<div id="menuModal" class="popup-modal width500 z-index300">
    <div class="popup-title">
        <h2>권한조회</h2>
        <button onclick="closeModal('menuModal');">x</button>
    </div>
    <section>
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
                        <th>권한명</th>
                        <th>생성일</th>
                        <th>생성자</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="cur-pointer">
                        <td>1</td>
                        <td>테스트</td>
                        <td>이광석</td>
                        <td>이광석</td>
                    </tr>
                    <tr class="cur-pointer">
                        <td>2</td>
                        <td>테스트</td>
                        <td>이광석</td>
                        <td>이광석</td>
                    </tr>
                    <tr class="cur-pointer">
                        <td>3</td>
                        <td>테스트</td>
                        <td>이광석</td>
                        <td>이광석</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </section>
</div>
<div class="modal-background"></div>