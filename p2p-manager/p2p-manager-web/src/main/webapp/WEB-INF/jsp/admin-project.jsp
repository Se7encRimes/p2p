<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2017/9/9
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>投资项目管理</title>
</head>
<body>
<table id="_projects"></table>
<div id="toolbar">
  <button onclick="edit()" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑</button>
  <button onclick="down()" class="easyui-linkbutton" data-options="iconCls:'icon-down',plain:true">下架</button>
  <button onclick="up()" class="easyui-linkbutton" data-options="iconCls:'icon-up',plain:true">上架</button>
</div>
<script>
  $('#_projects').datagrid({
    //这里使用的是RESTful的URL，动态获取使用的是items
    url: 'listProjects',
    //默认是post类型的请求
    method:"get",
    toolbar: '#toolbar',
    pagination: true,
    rownumbers: true,
    fit: true,
    pageSize: 20,
    multiSort:true,
    columns: [[
      {field: 'ck', checkbox:true },
      {field: 'id', title: '项目编号'},
      {field: 'rate', title: '利率'},
      {field: 'money', title: '申请金额'},
      {field: 'guarantee', title: '担保措施'},
      {field: 'endtime', title: '融资到期时间'},
      {field: 'projectstate', title: '项目状态',sortable:true,formatter:function(value,row,index){
        switch (value){
          case 0:
            return '项目未上线';
            break;
          case 1:
            return '项目已上线';
            break;
        }
      }},
      {field: 'gaiyao', title: '项目概要'},
      {field: 'state', title: '融资状态',sortable:true,formatter:function(value,row,index){
        switch (value){
          case 0:
            return '融资未完成';
            break;
          case 1:
            return '融资完成';
            break;
        }
      }},
      {field: 'createdate', title: '项目创建时间',sortable:true,formatter:function(value,row,index){
        return moment(value).format("dddd, MMMM Do YYYY,h:mm:ss a")
      }}

    ]],
  });
  function edit(){
    var rows = $('#_projects').datagrid('getSelections');
    //未选中任何记录时
    if(rows.length == 0){
      $.messager.alert('消息','未选中任何记录','info');
      return;
    }
    if(rows.length > 1){
      $.messager.alert('消息','只能选择一个进行编辑','info');
      return;
    }
    console.log('项目'+rows[0].id);
    p2p.add_Tab("项目资料设置","adminProjectById",rows[0].id);
  };
  function up(){
    var rows = $('#_projects').datagrid('getSelections');
    //未选中任何记录时
    if(rows.length == 0){
      $.messager.alert('消息','未选中任何记录','info');
      return;
    }
    $.messager.confirm('确认','是否确定上线项目？',function(r){
      if (r){
        var ids = [];
        for(var i=0;i<rows.length;i++){
          ids.push(rows[i].id);
        }
        $.post(
                "items/batch",
                {"ids[]":ids},
                function(data){
                  $('#table').datagrid('reload');
                },
                "json"
        );
      }
    });
  };
  function down(){
    var rows = $('#_projects').datagrid('getSelections');
    //未选中任何记录时
    if(rows.length == 0){
      $.messager.alert('消息','未选中任何记录','info');
      return;
    }
  }



</script>
</body>
</html>
