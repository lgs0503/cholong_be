<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <header>
        <script type="text/javascript" src="/js/common.js"></script>
        <script type="text/javascript" src="/js/jquery-3.7.1.min.js"></script>
        <script type="text/javascript">
            $(document).ready(() => {

                jqueryAjax("/sample/getSampleList?col1=2", "GET", (result)=> {
                    alert(JSON.stringify(result));
                });
            });
        </script>
    </header>
    <body>
        <div>
            jsp 테스트 페이지
        </div>
    </body>
</html>