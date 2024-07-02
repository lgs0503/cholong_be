<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<body>
<jsp:include page="../layouts/header.jsp"/>
<div class="layout-container">
    <jsp:include page="../layouts/leftMenu.jsp"/>
    <section>
        <div class="layout-content">
            <div class="layout-content-title">
                My Page
            </div>
            <div class="layout-card shadow">
                <div>
                    <div class="register-row">
                        <img src="#"/>
                    </div>
                    <div class="register-row">
                        <label class="register-input-label">아이디</label>
                        <input id="userId" class="width210" type="text" maxlength="15" placeholder="영문, 숫자 (4자리 ~ 15자리)"/>
                    </div>
                    <div class="register-row">
                        <label class="register-input-label">이름</label>
                        <input id="korName" class="width130" maxlength="10" type="text"/>
                    </div>
                    <div class="register-row">
                        <label class="register-input-label">닉네임</label>
                        <input id="nickName"class="width130"  maxlength="15" type="text"/>
                    </div>
                    <div class="register-row">
                        <label class="register-input-label vertical-align-top">주소</label>
                        <div class="regi-address-form">
                            <div class="regi-address-row">
                                <input id="zipCode" class="width110" maxlength="25" type="text" placeholder="우편번호" readonly/>
                            </div>
                            <div class="regi-address-row">
                                <input id="address" class="width100p" maxlength="150" type="text" placeholder="기본주소" readonly/>
                            </div>
                            <div class="regi-address-row">
                                <input id="addressDtl" class="width100p"  maxlength="500" type="text" placeholder="상세주소"/>
                            </div>
                        </div>
                    </div>
                    <div class="register-row">
                        <label class="register-input-label">성별</label>
                        <select id="gender">
                            <option value="1">남자</option>
                            <option value="2">여자</option>
                        </select>
                    </div>
                    <div class="register-row">
                        <label class="register-input-label">생년월일</label>
                        <input id="birthday" type="date"/>
                    </div>
                    <div class="register-row">
                        <label class="register-input-label">연락처</label>
                        <select id="phoneNum1" class="width70">
                            <option value="010">010</option>
                            <option value="011">011</option>
                            <option value="016">016</option>
                            <option value="017">017</option>
                            <option value="018">018</option>
                            <option value="019">019</option>
                        </select>
                        <b>-</b>
                        <input id="phoneNum2" type="text" maxlength="4" class="width80"
                               oninput="onlyNumberInput(this)"/>
                        <b>-</b>
                        <input id="phoneNum3" type="text" maxlength="4" class="width80"
                               oninput="onlyNumberInput(this)"/>
                    </div>
                    <div class="register-row">
                        <label class="register-input-label"><strong>*</strong>&nbsp;이메일</label>
                        <input id="email1" type="text" class="width100">
                        <b>@</b>
                        <input id="email2" type="text" readonly class="width120">
                        <select id="email3" onchange="emailSelectChange(this)">
                            <option value="">선택하세요</option>
                            <option value="input">직접입력</option>
                            <option value="naver.com">naver.com</option>
                            <option value="daum.net">daum.net</option>
                            <option value="nate.com">nate.com</option>
                            <option value="gmail.com">gmail.com</option>
                            <option value="hanmail.com">hanmail.com</option>
                            <option value="hotmail.com">hotmail.com</option>
                            <option value="yahoo.com">yahoo.com</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<jsp:include page="../layouts/footer.jsp"/>
</body>