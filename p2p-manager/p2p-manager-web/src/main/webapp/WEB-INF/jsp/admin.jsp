<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>P2P-网贷后台管理系统</title>
    <!-- 导入easyui的样式表 -->
    <link rel="stylesheet" href="js/jquery-easyui-1.5/themes/bootstrap/easyui.css">
    <link rel="stylesheet" href="js/jquery-easyui-1.5/themes/icon.css">

    <%--自定义CSS--%>
    <link rel="stylesheet" href="css/common.css">
</head>
<body class="easyui-layout">
<div data-options="region:'north'" style="height:70px;padding-left:10px;">
    <table width="100%">
        <tr>
            <td>
    <h2>P2P-网贷后台管理系统</h2>
            </td>
            <td align="right"><h3><a href="adminquit">退出</a></h3></td>
        </tr>
    </table>
</div>
<div data-options="region:'south'" style="padding:5px;background:#eee;">
    系统版本：V1.0
</div>
<div data-options="region:'west'" style="width:200px;">
    <div id="menu" class="easyui-accordion">
        <div title="商品管理" data-options="selected:true" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'admin-list'}">申请管理</li>
                <li data-options="attributes:{'href':'admin-project'}">投资项目管理</li>
            </ul>
        </div>
        <div title="网站内容管理" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'content-category'}">内容分类管理</li>
                <li data-options="attributes:{'href':'content'}">内容管理</li>
            </ul>
        </div>
        <div title="索引库管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'index-item'}">solr索引库维护</li>
            </ul>
        </div>

    </div>
</div>
<div data-options="region:'center'" style="background:#eee;">
    <div id="tab" class="easyui-tabs" data-options="fit:true">
        <div title="欢迎页面" style="padding:20px;">P2P-网贷后台管理系统欢迎你</div>
    </div>
</div>
<!-- jquery -->
<script src="js/jquery-easyui-1.5/jquery.min.js"></script>
<!-- jquery easyui -->
<script src="js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
<script src="js/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
<!-- 自定义脚本 -->
<script src="js/common1.js"></script>
<script src="js/moment/moment-with-locales.js"></script>
<!-- 自定义js -->
<script>
    p2p.registerMenuEvent();
</script>

</body>
</html>