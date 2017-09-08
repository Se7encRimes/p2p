<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2017/9/7
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>申请详情</title>
</head>
<body>
<link rel="stylesheet"
      href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
        src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
        src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
    img{
        height: 200px;
        width: 200px;
    }
</style>
<form class="adminItem" id="adminItem" name="adminItem" method="post">
    <table align="center" valign="middle">
        <tr>
            <td>姓名:</td>
            <td>${custom.username}</td>
            <td>身份证号:</td>
            <td>${custom.card}</td>
            <td>手机号码:</td>
            <td>${custom.phone}</td>
        </tr>
        <tr>
            <td>申请金额:</td>
            <td>${custom.money}</td>
            <td>订单状态:</td>
            <td><c:choose>
                <c:when test="${custom.state == 0}">
                    未审核
                </c:when>
                <c:when test="${custom.state==1}">
                    审核通过
                </c:when>
                <c:when test="${custom.state==2}">
                    审核未通过
                </c:when>
                <c:when test="${custom.state==3}">
                    还款中
                </c:when>
                <c:when test="${custom.state==4}">
                    还款完成
                </c:when>
            </c:choose></td>
            <td>借款用途:</td>
            <td>${custom.purpose}</td>
        </tr>
        <tr>
            <td>还款方式:</td>
            <td>${custom.returnway}</td>
            <td>家庭住址:</td>
            <td>${custom.address}</td>
            <td>借款时间:</td>
            <td>${custom.gettime}</td>
        </tr>
        <tr>
            <td>第二联系人姓名:</td>
            <td>${custom.othername}</td>
            <td>第二联系人电话:</td>
            <td>${custom.otherphone}</td>
            <td>第二联系人住址:</td>
            <td>${custom.otheraddress}</td>
        </tr>
        <tr>
            <td>银行卡卡号:</td>
            <td>${custom.bankcard}</td>
            <td>车牌号:</td>
            <td>${custom.carnumber}</td>
            <td>申请时间:</td>
            <td><f:formatDate value="${custom.applydate}" pattern="yyyy年MM月dd日"></f:formatDate></td>
        </tr>
        <tr>
            <td>车辆照片:</td>
            <td><img src="${pageContext.request.contextPath}/my_files/${custom.carimg}"></td>
            <td>车辆抵押证明:</td>
            <td><img src="${pageContext.request.contextPath}/my_files/${custom.pledgeimg}"></td>
            <td>房产证:</td>
            <td><img src="${pageContext.request.contextPath}/my_files/${custom.house}"></td>
        </tr>

        <tr>
            <td>银行流水:</td>
            <td><img src="${pageContext.request.contextPath}/my_files/${custom.bank}"></td>
            <td>社保:</td>
            <td><img src="${pageContext.request.contextPath}/my_files/${custom.social}"></td>
            <td>家属照片:</td>
            <td><img src="${pageContext.request.contextPath}/my_files/${custom.relation}"></td>
        </tr>
    </table>
    <br>
    <table align="center" valign="middle" width="50%">
        <tr>
            <td>
                <input class="btn" type="button" id="pass_" value="审核通过">
            </td>
            <td>
                <input class="btn" type="button" id="refuse_" value="拒绝">
            </td>
            <td>
                <input class="btn" type="button" id="back_" value="返回">
            </td>
        </tr>
    </table>
</form>
<script>
        $("#pass_").click(function(){
            alert("审核通过");
        });
        $("#refuse_").click(function(){
            alert("拒绝");
        });
        $("#back_").click(function(){
            alert("返回");
        });



</script>
</body>
</html>
