<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>회원가입</title>
        <link rel="stylesheet" href="/resources/static/css/reset.css"/>
        <link rel="stylesheet" href="/resources/static/css/common.css"/>
        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <script type="text/javascript" src="/resources/static/js/common.js"></script>
        <script type="text/javascript" src="/resources/static/js/jquery-3.7.1.min.js"></script>
        <script type="text/javascript">
            $(document).ready(() => {

                /** 약관 json 조회 **/
                jqueryGetJson("/resources/static/json/register.json", (data) => {
                    $("#terms1").val(data.terms1);
                    $("#terms2").val(data.terms2);
                });
            });

            /**
             *  회원가입
             *  **/
            const register = () => {
                if (confirm("회원가입 하시겠습니까?")) {

                    if (validationCheck()) {

                        const param = {
                            userId : $("#userId").val(),
                            password : $("#password").val(),
                            korName : $("#korName").val(),
                            nickName : $("#nickName").val(),
                            zipCode : $("#zipCode").val(),
                            address : $("#address").val(),
                            addressDtl : $("#addressDtl").val(),
                            gender : $("#gender").val(),
                            birthday : $("#birthday").val(),
                            phoneNum : $("#phoneNum1").val() + $("#phoneNum2").val() + $("#phoneNum3").val(),
                            email : $("#email1").val() + "@" + $("#email2").val(),
                            smsYn : $("#smsYn").is(":checked") ? "Y" : "N",
                            mailYn : $("#mailYn").is(":checked") ? "Y" : "N"
                        };

                        jqueryAjax("/common/user/addUser", "POST", (result) => {
                            if (result === 1) {
                                alert("회원가입 완료했습니다.");
                                location.href = "/common/user/loginPage";
                            }
                        }, param);
                    }
                }
            }

            /**
             * 약관 모두 체크
             * **/
            const registerAllCheck = () => {
                const checked = $("#regiAllChk").is(":checked");
                const chkList = $("input[name=regiChkList]");

                if (checked) {
                    chkList.prop("checked", true);
                } else {
                    chkList.prop("checked", false);
                }
            }

            /**
             *  유효성체크
             *  **/
            const validationCheck = () => {

                const checked1 = $("#regiChk1").is(":checked");
                const checked2 = $("#regiChk2").is(":checked");

                if (checked1 === false || checked2 === false) {
                    alert("약관동의를 모두 진행하셔야합니다.");
                    return false;
                }

                const checkList = [
                    {
                        id: "userId",
                        msg: "아이디를 입력해주세요.",
                    },
                    {
                        id: "password",
                        msg: "비밀번호를 입력해주세요."
                    },
                    {
                        id: "korName",
                        msg: "이름을 입력해주세요."
                    },
                    {
                        id: "nickName",
                        msg: "닉네임을 입력해주세요."
                    },
                    {
                        id: "address",
                        msg: "주소를 입력해주세요."
                    },
                    {
                        id: "addressDtl",
                        msg: "상세주소를 입력해주세요."
                    },
                    {
                        id: "birthday",
                        msg: "생년월일을 입력해주세요."
                    },
                    {
                        id: "phoneNum2",
                        msg: "연락처를 입력해주세요."
                    },
                    {
                        id: "phoneNum3",
                        msg: "연락처를 입력해주세요."
                    },
                    {
                        id: "email1",
                        msg: "이메일울 입력해주세요."
                    },
                    {
                        id: "email2",
                        msg: "이메일을 입력해주세요."
                    },
                ];

                for (const item in checkList) {
                    if (validationCheckItem(checkList[item].id, checkList[item].msg) === false) {
                        return false;
                    }
                }

                return true;
            }

            /**
             *  유효성체크 (한개씩 체크)
             *  **/
            const validationCheckItem = (id, msg) => {

                const element = $("#" + id);

                /** 필수 입력 유효성 체크 **/
                if (isEmpty(element.val())) {
                    alert(msg);
                    element.focus();
                    return false;
                } else {
                    /** 그외 유효성 체크 **/
                    if (id === "userId") {
                        /** 아이디 영문, 숫자 4~15자리 정규식  **/
                        const pattern = /^[A-Za-z0-9]{4,15}$/
                        if ((!/[ㄱ-ㅎㅏ-ㅣ가-힣]/.test(element.val()) && pattern.test(element.val())) === false) {
                            alert("유효하지 않는 아이디 입니다. 영문, 숫자 (4자리 ~ 15자리)");
                            return false;
                        }

                        /** 아이디 DB 중복체크(PK) **/
                        if (userIdCheck() === false) {
                            alert("중복된 아이디가 존재합니다.");
                            $("#userId").focus();
                            return false;
                        }

                    } else if (id === "password") {

                        /** 비밀번호 영문 + 숫자 + 특수문자 + 8자리 이상 정규식 **/
                        const pattern = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[~@#$!%*?&])[a-zA-Z\d~@#$!%*?&]{8,}$/
                        if ((!/[ㄱ-ㅎㅏ-ㅣ가-힣]/.test(element.val()) && pattern.test(element.val())) === false) {
                            alert("유효하지 않는 비밀번호 입니다. 영문 + 숫자 + 특수문자 (8자리 이상)");
                            element.focus();
                            return false;
                        }

                        const passwordChkEle = $("#passwordChk");

                        /** 비밀번호 동일하게 입력했는지 확인 **/
                        if (passwordChkEle.val() !== element.val()) {
                            alert("비밀번호가 일치하지 않습니다. 비밀번호를 확인해주세요.");
                            passwordChkEle.focus();
                            return false;
                        }
                    }
                }

                return true;
            }

            /**
             *  다음 주소검색 api 팝업오픈
             *  **/
            const openAddressPopup = () => {

                new daum.Postcode({
                    oncomplete: function (data) {
                        $("#zipCode").val(data.zonecode);
                        $("#address").val(data.address);
                    }
                }).open();
            }

            /**
             *  이메일 드랍다운 체인지 이벤트
             *  **/
            const emailSelectChange = (element) => {
                const emailElement = $("#email2");

                if (element.value === "input") {
                    emailElement.attr("readonly", false);
                    emailElement.val("");
                    emailElement.focus();
                } else {
                    emailElement.attr("readonly", true);
                    emailElement.val(element.value);
                    emailElement.focus();
                }
            }

            /**
             *  연락처 본인인증 (미구현)
             *  **/
            const openPhoneCheckPopup = () => {

            }

            /**
             *  아이디 중복체크
             *  **/
            const userIdCheck = () => {
                let checkResult = true;

                jqueryAjaxSync("/common/user/userIdDuplicateChk?userId=" +$("#userId").val(), "GET", (result) => {
                    if (result > 0) {
                        checkResult = false;
                    }
                });

                return checkResult;
            }

            /**
             *  로그인페이지
             *  **/
            const goLoginPage = () => {
                location.href = "/common/user/loginPage";
            }
        </script>
    </head>
    <body>
        <div class="register-form">
            <h1 class="register-title">회원가입</h1>
            <fieldset>
                <section>
                    <h2 class="register-sub-title">· 약관동의</h2>
                    <div>
                        <div class="register-row">
                            <label>회원가입 약관에 모두 동의합니다</label>
                            <label class="checkbox_label float-right">
                                <input id="regiAllChk" type="checkbox" onchange="registerAllCheck()"/>
                                <span class="checkbox_icon"></span>
                            </label>
                        </div>
                        <div class="register-row">
                            <label for="regiChk2">이용약관 동의 <strong>(필수)</strong></label>
                            <label class="checkbox_label float-right">
                                <input id="regiChk1" type="checkbox" name="regiChkList"/>
                                <span class="checkbox_icon"></span>
                            </label>
                        </div>
                        <div class="register-row">
                            <textarea id="terms1" readonly></textarea>
                        </div>
                        <div class="register-row">
                            <label for="regiChk2">개인정보 수집 및 이용 동의 <strong>(필수)</strong></label>
                            <label class="checkbox_label float-right">
                                <input id="regiChk2" type="checkbox" name="regiChkList"/>
                                <span class="checkbox_icon"></span>
                            </label>
                        </div>
                        <div class="register-row">
                            <textarea id="terms2"  readonly></textarea>
                        </div>
                    </div>
                </section>
                <section>
                    <h2 class="register-sub-title">· 기본정보<span class="float-right"><strong>*</strong>&nbsp;필수입력사항</span></h2>
                    <div>
                        <div class="register-row">
                            <label class="register-input-label"><strong>*</strong>&nbsp;아이디</label>
                            <input id="userId" class="width210" type="text" maxlength="15" placeholder="영문, 숫자 (4자리 ~ 15자리)"/>
                        </div>
                        <div class="register-row">
                            <label class="register-input-label"><strong>*</strong>&nbsp;비밀번호</label>
                            <input id="password" class="width240" maxlength="50" type="password" placeholder="영문 + 숫자 + 특수문자 (8자리 이상)"/>
                        </div>
                        <div class="register-row">
                            <label class="register-input-label"><strong>*</strong>&nbsp;비밀번호 확인</label>
                            <input id="passwordChk" class="width240" maxlength="50" type="password"/>
                        </div>
                        <div class="register-row">
                            <label class="register-input-label"><strong>*</strong>&nbsp;이름</label>
                            <input id="korName" class="width130" maxlength="10" type="text"/>
                        </div>
                        <div class="register-row">
                            <label class="register-input-label"><strong>*</strong>&nbsp;닉네임</label>
                            <input id="nickName"class="width130"  maxlength="15" type="text"/>
                        </div>
                        <div class="register-row">
                            <label class="register-input-label vertical-align-top"><strong>*</strong>&nbsp;주소</label>
                            <div class="regi-address-form">
                                <div class="regi-address-row">
                                    <input id="zipCode" class="width110" maxlength="25" type="text" placeholder="우편번호" readonly/>
                                    <button class="float-right" onclick="openAddressPopup()">주소검색</button>
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
                            <label class="register-input-label"><strong>*</strong>&nbsp;성별</label>
                            <select id="gender">
                                <option value="1">남자</option>
                                <option value="2">여자</option>
                            </select>
                        </div>
                        <div class="register-row">
                            <label class="register-input-label"><strong>*</strong>&nbsp;생년월일</label>
                            <input id="birthday" type="date"/>
                        </div>
                        <div class="register-row">
                            <label class="register-input-label"><strong>*</strong>&nbsp;연락처</label>
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
                            <button class="float-right">본인확인</button>
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
                </section>
                <section>
                    <h2 class="register-sub-title">· 수신여부</h2>
                    <div>
                        <div class="register-row">
                            <label class="register-input-label">SMS 수신동의</label>
                            <label class="checkbox_label">
                                <input id="smsYn" type="checkbox" checked/>
                                <span class="checkbox_icon"></span>
                                <span class="checkbox_text">동의함</span>
                            </label>
                        </div>
                        <div class="register-row">
                            <label class="register-input-label">메일 수신동의</label>
                            <label class="checkbox_label">
                                <input id="mailYn" type="checkbox" checked/>
                                <span class="checkbox_icon"></span>
                                <span class="checkbox_text">동의함</span>
                            </label>
                        </div>
                    </div>
                </section>
            </fieldset>
            <aside class="float-right">
                <button onclick="register()">회원가입</button>
                <button onclick="goLoginPage();">취소</button>
            </aside>
        </div>
    </body>
</html>