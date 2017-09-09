<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2017/9/9
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>项目资料设置</title>
</head>
<body>
<form class="admin_project" id="admin_project" name="admin_project" method="post">
  <input type="hidden" name="id" value="${project.id}">
  <table align="center" valign="middle">
    <tr>
      <td>项目编号</td>
      <td>${project.id}</td>
      <td>融资金额</td>
      <td>${project.money}</td>
      <td>项目创建时间</td>
      <td><f:formatDate value="${project.createdate}" pattern="yyyy年MM月dd日"></f:formatDate></td>
    </tr>
    <tr>
      <td>担保措施</td>
      <td><input class="easyui-validatebox" type="text" name="guarantee" data-options="required:true" value="${project.guarantee}"></td>
      <td>融资到期时间</td>
      <td><input class="easyui-datebox" type="text" name="endtime" data-options="required:true"  value="${project.endtime}"></td>
      <td>融资状态</td>
      <td>
        <c:choose>
          <c:when test="${project.state==0}">
            融资中
          </c:when>
          <c:otherwise>
            融资完成
          </c:otherwise>
        </c:choose>
      </td>
    </tr>
    <tr>
      <td>利率</td>
      <td><input class="easyui-validatebox" type="text" name="rate" data-options="required:true" value="${project.rate}"></td>
      <td>项目状态</td>
      <td>
          <c:choose>
            <c:when test="${project.projectstate==0}">
              项目未上线
            </c:when>
            <c:otherwise>
              项目已上线
            </c:otherwise>
          </c:choose>
        </select>
      </td>
      <td></td>
      <td></td>
      </tr>
    <tr>
      <td>项目概要</td>
      <td colspan="5"><input style="width:600px;height:50px" class="easyui-validatebox" type="text" name="gaiyao" data-options="required:true" value="${project.gaiyao}"></td>
    </tr>
  </table>
  <table align="center" valign="middle" width="50%">
    <tr>
      <td>
        <input class="easyui-linkbutton" type="button" id="pass_" value="    保存修改    ">
      </td>
      <td>
        <input class="easyui-linkbutton" type="button" id="refuse_" value="    重置    ">
      </td>
      <td>
        <input class="easyui-linkbutton" type="button" id="back_" value="    返回    ">
      </td>
    </tr>
  </table>
</form>


<script>

//  $("#pass_").click(function(){
//    $("#admin_project").submit();
//  });


//  $("#pass_").click(function(){
//    $.messager.confirm('确认','是否确定修改？',function(r) {
//      if(r){
//        $("#admin_project").form("submit",{
//         // url:"editProjects",
//          success:function(date){
//            if(date>0){
//              $.messager.alert("消息","修改成功");
//              p2p.closeTab( "项目资料设置");
//              $('#_projects').datagrid('reload');
//            }
//          }
//        });
//      }
//    });
//  });

  $("#back_").click(function(){
    p2p.closeTab("项目资料设置");
    $('#_projects').datagrid('reload');
  });

  $("#refuse_").click(function(){
    $('#admin_project').form('reset');
  });



</script>
</body>
</html>
