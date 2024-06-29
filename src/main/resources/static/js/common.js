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