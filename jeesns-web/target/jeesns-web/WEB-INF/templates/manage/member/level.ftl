<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>设置会员VIP等级 - ${SITE_NAME} - AggregationNews后台管理系统</title>
    <meta name="keywords" content="${SITE_KEYS}"/>
    <meta name="description" content="${SITE_DESCRIPTION}"/>
    <meta name="author" content="Lina"/>
    <link href="${basePath}/res/common/css/bootstrap.min.css" rel="stylesheet">
    <link href="${basePath}/res/common/css/font-awesome.min.css" rel="stylesheet">
    <link href="${basePath}/res/manage/css/AdminLTE.css" rel="stylesheet">
    <link href="${basePath}/res/manage/css/skins/_all-skins.css" rel="stylesheet">
    <link href="${basePath}/res/plugins/layer/skin/layer.css" rel="stylesheet">
    <link href="${basePath}/res/plugins/iCheck/all.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="${basePath}/res/common/js/html5shiv.js"></script>
    <script src="${basePath}/res/common/js/respond.min.js"></script>
    <![endif]-->
    <script src="${basePath}/res/common/js/jquery-2.1.1.min.js"></script>
    <script src="${basePath}/res/common/js/jquery.form.js"></script>
    <script src="${basePath}/res/common/js/bootstrap.min.js"></script>
    <script src="${basePath}/res/manage/js/app.js"></script>
    <script src="${basePath}/res/plugins/layer/layer.js"></script>
    <script src="${basePath}/res/common/js/jeesns.js?v1.4"></script>
    <script src="${basePath}/res/plugins/My97DatePicker/WdatePicker.js"></script>
    <script src="${basePath}/res/plugins/iCheck/icheck.js"></script>
</head>
<body class="hold-transition">
<div class="wrapper">
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <form class="form-horizontal jeesns_form" role="form" action="${managePath}/member/setLevel" method="post" callback="parentReload">
                    <input type="hidden" name="id" value="${member.id}">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">会员用户名</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="name" name="name" data-type="require" value="${member.name}" disabled>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">会员VIP等级</label>
                        <div class="col-sm-8">
                            <select class="form-control" name="memberLevelId" data-type="selected">
                                <#list memberLevelList as memberLevel>
                                    <option value="${memberLevel.id}" <#if memberLevel.id==member.memberLevelId>selected</#if>>${memberLevel.name}</option>
                                </#list>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-1 col-sm-10">
                            <button type="submit" class="btn btn-info jeesns-submit">保存</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
</div>
</body>
</html>