<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.3.12/themes/default/style.min.css" />

<body>
<jsp:include page="../../layouts/header.jsp"/>
<script>
    $(document).ready(() => {
    });

</script>
<div class="layout-container">
    <jsp:include page="../../layouts/leftMenu.jsp"/>
    <section>
        <div class="layout-content">
            <div class="layout-content-title">
                메뉴 관리
            </div>
            <div class="layout-search-bar layout-card shadow display-flex mgb10">
                <div class="search-bar-item4">
                    <label class="search-bar-item">
                        메뉴 명
                        <input type="text" id="codeName" onkeydown="enterSearch(event, null)">
                    </label>
                </div>
            </div>
            <div class="display-flex">
                <div class="layout-card shadow width25p mgr10">
                    <div id="jstree"></div>
                </div>
                <div class="layout-card shadow width100p">

                </div>
            </div>
        </div>
    </section>
</div>
<jsp:include page="../../layouts/footer.jsp"/>
</body>