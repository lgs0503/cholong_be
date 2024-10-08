<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<body>
<jsp:include page="../layouts/header.jsp"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css" />
<script>

    $(document).ready(() => {

        var jsonData = [
            { "id" : "test1", "parent" : "#", "text" : "One Directory" },
            { "id" : "test2", "parent" : "#", "text" : "Node Directory" },
            { "id" : "test3", "parent" : "test2", "text" : "Child 1" },
            { "id" : "test4", "parent" : "test2", "text" : "Child 2" },
            { "id" : "test3", "parent" : "test2", "text" : "Child 1" },
            { "id" : "test4", "parent" : "test2", "text" : "Child 2" },
            { "id" : "test3", "parent" : "test2", "text" : "Child 1" },
            { "id" : "test4", "parent" : "test2", "text" : "Child 2" },
            { "id" : "test3", "parent" : "test2", "text" : "Child 1" },
            { "id" : "test4", "parent" : "test2", "text" : "Child 2" },
            { "id" : "test3", "parent" : "test2", "text" : "Child 1" },
            { "id" : "test4", "parent" : "test2", "text" : "Child 2" },
            { "id" : "test3", "parent" : "test2", "text" : "Child 1" },
            { "id" : "test4", "parent" : "test2", "text" : "Child 2" },
            { "id" : "test3", "parent" : "test2", "text" : "Child 1" },
            { "id" : "test4", "parent" : "test2", "text" : "Child 2" },
            { "id" : "test3", "parent" : "test2", "text" : "Child 1" },
            { "id" : "test4", "parent" : "test2", "text" : "Child 2" },
            { "id" : "test1", "parent" : "#", "text" : "One Directory" },
            { "id" : "test1", "parent" : "#", "text" : "One Directory" },
        ];

        $("#menu").jstree({
            'core' : {
                data : jsonData,
                "check_callback" : true,
                'themes' : {
                    "theme" : "default",
                    "dots" : false,
                    "icons" : false
                }
            },
            'types' : {
                "root" : {
                    "icon" : { "image" : "http://static.jstree.com/v.1.0rc/_docs/_drive.png" }
                }
            },
            'plugins' : [
                'dnd', 'search', 'types', 'themes'
            ]
        }).on('loaded.jstree', function(event, data){
            $("#menu").jstree('open_all');
        });
    });
</script>
<div class="layout-container">
    <jsp:include page="../layouts/leftMenu.jsp"/>
    <section>
        <div class="layout-content">
            <div class="display-flex flex-space-between">
                <div class="layout-content-title">
                    메뉴 관리(개인 블로그 메뉴)
                </div>
                <div class="mgb10 display-flex flex-end mgt20">
                    <button class="btn-primary" onclick="">추가</button>
                    <button class="btn-primary mgl10" onclick="">저장</button>
                    <button class="btn-primary mgl10" onclick="">삭제</button>
                </div>
            </div>
            <div class="menu-container">
                <div class="layout-card shadow menu-master mgr10">
                    <div id="menu"></div>
                </div>
                <div class="layout-card shadow menu-detail">
                    <div class="sub-title mgb10">
                        상세 메뉴
                    </div>
                    <div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">메뉴명</label>
                            <div class="layout-col"></div>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">영어메뉴명</label>
                            <div class="layout-col"></div>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">부모메뉴명</label>
                            <div class="layout-col"></div>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">설명</label>
                            <div class="layout-col"></div>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">타입</label>
                            <div class="layout-col"></div>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">URL</label>
                            <div class="layout-col"></div>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">맵핑 인덱스</label>
                            <div class="layout-col"></div>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">정렬순서</label>
                            <div class="layout-col"></div>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">사용여부</label>
                            <div class="layout-col"></div>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">생성일</label>
                            <div class="layout-col width25p" id="createDateDt"></div>
                            <label class="layout-col layout-col-head">생성자</label>
                            <div class="layout-col width25p" id="createUserDt"></div>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">수정일</label>
                            <div class="layout-col width25p" id="updateDateDt"></div>
                            <label class="layout-col layout-col-head">수정자</label>
                            <div class="layout-col width25p" id="updateUserDt"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<jsp:include page="../layouts/footer.jsp"/>
</body>