<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2017/9/1
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>申请列表</title>
</head>
<body>
<table id="table"></table>


<script>
  $('#table').datagrid({
    //这里使用的是RESTful的URL，动态获取使用的是items
    url: 'borrows',
    //默认是post类型的请求
    method:"get",
    //toolbar:toolbar,
    pagination: true,
    rownumbers: true,
    fit: true,
    pageSize: 20,
    multiSort:true,
    columns: [[
//      {field: 'ck', checkbox:true },
      {field: 'num', title: '申请编号'},
      {field: 'username', title: '姓名'},
      {field: 'money', title: '申请金额'},
      {field: 'state', title: '申请状态',sortable:true,formatter:function(value,row,index){
          switch (value){
            case 0:
              return '未审核';
              break;
            case 1:
              return '审核通过';
              break;
            case 2:
              return '审核未通过';
              break;
            case 3:
              return '还款中';
              break;
            default :
              return '还款完成';
              break;
          }
      }},
      {field: 'applydate', title: '申请日期',sortable:true,formatter:function(value,row,index){
        return moment(value).format("dddd, MMMM Do YYYY,h:mm:ss a")
      }}

    ]],
  });
  $('#table').datagrid({
      onClickRow: function(index,row){
          console.log(row.num);
          p2p.add_Tab("申请详情","admin-item",row.num);
      }
  })
</script>
</body>
</html>
