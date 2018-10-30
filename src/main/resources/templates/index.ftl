<!DOCTYPE html>
<html lang="en">
<head>
    <#import "spring.ftl" as spring>
    <#assign arg = ["AAA","张三"]>
    <title><@spring.messageArgs "title" ,arg /></title>
    <meta charset="UTF-8">
</head>
<body>
<br/>
<a class="changeLang" href="javascript:void(0);">english</a><br/>
<a class="changeLang" href="javascript:void(0);">中文</a><br/>
<@spring.message code="user.loginname"/><br/>
</body>
<script src="${request.contextPath}/static/jquery.js"></script>
<script>
    $(".changeLang").on("click", function () {
        switch ($(this).text()) {
            case "中文": {
                window.location.href = "index?_lang=zh_CN";
                break;
            }
            case "english": {
                window.location.href = "index?_lang=en_US";
                break;
            }
        }
    })
</script>
</html>