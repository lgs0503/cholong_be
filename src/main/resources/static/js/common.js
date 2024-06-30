/**
 * Jquery Ajax 요청
 * **/
const jqueryAjax = (
    url,
    method,
    callback,
    param = null,
    ) => {

    let ajaxParam = {
        url: url,
        method: method,
        dataType: 'JSON',
        contentType: "application/json",
        success: callback,
        error: function (e) {
            console.log(e);
        }
    };

    if (param) {
        ajaxParam.data = JSON.stringify(param);
    }

    $.ajax(ajaxParam);
}

/**
 * Jquery Ajax 요청 동기
 * **/
const jqueryAjaxSync = (
    url,
    method,
    callback,
    param = null,
) => {

    let ajaxParam = {
        url: url,
        method: method,
        dataType: 'JSON',
        contentType: "application/json",
        success: callback,
        async: false,
        error: function (e) {
            console.log(e);
        }
    };

    if (param) {
        ajaxParam.data = JSON.stringify(param);
    }

    $.ajax(ajaxParam);
}

/**
 * Jquery Json 받아오기
 * **/
const jqueryGetJson = (url, callback) => {
    $.getJSON(url, callback);
}

/**
 * input 태그 onInput 이벤트에 사용하면 숫자만 입력
 * onlyNumberInput(this)
 * **/
const onlyNumberInput = (element) => {
    element.value = element.value.replace(/[^-0-9]/g,'');
}

/**
 * 첫번째 인자가 값이 공백이나 NULL 인경우 두번째 인의 값으로 대체
 * **/
const nvl  = (value, resultValue) => {
    if (value == null || value === "" || value === undefined) {
        value = resultValue;
    }
    return value;
}

/**
 * 값 데이터가 있으면 true 없으면 false
 * **/
const isEmpty  = (value) => {
    return value == null || value === "" || value === undefined;
}