<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/9/7
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <!--[if lt IE 9]>
  <script src="/js/html5shiv.js"></script>
  <![endif]-->
  <meta name="keywords" content="网贷平台,网络借贷，网络赚钱项目,理财产品">
  <meta name="description" content="爱钱帮网贷平台为您提供网络赚钱项目；为此相继推出了许多新的理财产品，在为您创造高收益的同时也优化了理财产品模式。网络借贷，就选爱钱帮。">
  <meta charset="UTF-8">
  <link  rel="Shortcut  Icon"  href="images/minilogo.png">
  <link rel="stylesheet" href="css/m2-commonNew.css?20160520">
  <link rel="stylesheet" href="css/m2-common.css?20160520">
  <link rel="Shortcut  Icon" href="images/minilogo.png?20160520">
  <link rel="stylesheet" href="css/userCenter.css?20160520">
  <script type="text/javascript" src="js/jquery.min.js?20160520"></script>
  <script type="text/javascript" src="js/common.js?20160520"></script>
  <script type="text/javascript" src="js/esl.js?20160520"></script>
  <link rel="stylesheet" href="css/jquery.datetimepicker.css?20160520" />
  <script type="text/javascript" src="js/jquery.datetimepicker.js?20160520"></script>
</head>
<title>投资记录--爱钱帮</title>



<!-- headerStart -->
<div class="m2-commonTop-con">
  <div class="m2-commonTop">
    <div class="m2-commonTop-left">
      <div class="m2-commonTop-tel"><i></i>4006&nbsp;-&nbsp;777&nbsp;-&nbsp;518</div>
      <div class="m2-commonTop-service"><i></i><span>客服：<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2522274059&amp;site=qq&amp;menu=yes" title="客服">2522274059</a></span></div>
      <div class="m2-commonEwm">
        <span class="m2-commonEwm-tit">关注我们：</span>
        <div class="m2-commonEwmwx">
          <i class="m2-commonEwmicon"></i>
          <div class="m2-commonEwmhid">
            <em class="m2-commonEwmhid-arr"></em>
            <em class="m2-commonEwmhid-arrBg"></em>
            <b></b>
            <span>扫一扫<br>关注爱钱帮订阅号</span>
          </div>
        </div>
        <div class="m2-commonEwmwb">
          <i class="m2-commonEwmicon" onclick='window.open("http://weibo.com/iqianbang");'></i>
        </div>
      </div>
    </div>
    <div class="m2-commonTop-right">
      <c:choose>
        <c:when test="${sessionScope.user==null}">
          <div class="m2-commonTop-link">
            <ul>
              <li class="m2-commonTop-btn"><a href="register" target="_blank">注册</a></li>
              <li class="m2-commonTop-btn"><a href="login" target="_blank" style="border-right:none;">登录</a></li>
            </ul>
          </div>
        </c:when>
        <c:otherwise>
          <div class="m2-commonTop-right">
            <div class="m2-commonTop-link">
              <ul>
                <li class="m2-commonTop-loged">
                  <span class="m2-commonTop-userName"><a href="usercenter">您好,${sessionScope.user.phone}</a></span>
                </li>
                <li class="m2-commonTop-btn"><a href="UQuit" style="border-right:none;">退出</a></li>
              </ul>
            </div>
          </div>
        </c:otherwise>
      </c:choose>
    </div>
  </div>
</div>
<script type="text/javascript">
  $(function () {
    $('#bbslogin').click(function(){
      var w = window.open();
      $.ajax({
        type:"GET",
        url :"/api-bbslogin",
        success:function(msg){
          var obj = eval('('+msg+')');
          var obj = eval(obj);
          if (obj.status == 1){
            w.location = obj.message;
          }
        }
      });
    });
    var _uid = Number(305497);
    var _all_uid = Array(5277,320,25893,77960,70760,4762,36256,59960,126250,75980,4039,68689,133118,185);
    function in_array(uid,array){
      for(var i in array){
        if(array[i] == uid){
          $("#bbs").attr("style","display:block");
        }
      }
    }
    in_array(_uid,_all_uid);
  });
</script>
</div>
<div class="m2-commonNav-con">
  <div class="m2-commonNav-box">
    <div class="m2-commonLogo">
      <a href="index.html"><img src="images/m2-logo.png" title="爱钱帮官网" alt="爱钱帮_logo"></a>
    </div>
    <div class="m2-commonNav">
      <ul class="m2-commonNavul-fir" data_page='threepage'>
        <li class="m2-commonNav-fir"><a href="index" id="onepage">首页</a></li>
        <li class="m2-commonNav-fir"><a href="borrowaction" id="jieqian">我要借钱</a></li>
        <li class="m2-commonNav-fir"><a href="touzi?pageNo=1" id="twopage">我要投资</a></li>
        <li class="m2-commonNav-fir"><a href="membermall" id="sevenpage">会员商城</a></li>
        <li class="m2-commonNav-fir"><a href="usercenter" id="threepage">我的账户</a></li>
        <!--                <li class="m2-commonNav-fir"><a href="anquanlicai_baozhang.html" id="fourpage">安全保障</a></li>-->
        <li class="m2-commonNav-fir"><a href="guanyu_aiqianbang" id="fivepage">关于我们</a></li>
        <li class="m2-commonNav-fir"><a href="adminlogin" id="houtai">后台管理</a></li>
        <!--                <li class="m2-commonNav-fir"><a href="licaiwang_zhuantihuodong.html" id="sixpage">活动专区</a></li>-->
      </ul>
    </div>
  </div>
</div>
</header>

<style>
  .vIVR{display:none}
</style>
<script>
  var page=$(".m2-commonNavul-fir").attr("data_page");
  $("#"+page).parent().css("borderBottom","2px solid #ff6666");
  var queuename = '30017180006';
  function callback() {
    $('#tel').val($('#phonenumber').val());
    call();
  }
  setCallResponse = function (json) {
    var obj = eval('(' + json + ')');
    if (obj['description']) {
      $('#callBack-codeErr').css('display', 'block');
      $('#ivrSecurityCode').val('');
      getCode();
      setTimeout(function () {
        $('#callBack-codeErr').css('display', 'none');
      }, 3000);
    }
  }
</script>
<!-- headerEnd -->

<div class="m2-userCentermain">
  <div class="m2-userCentermain-aside">
    <ul>
      <li class="m2-asideListitem">
        <a class="m2-aside-item" href="usercenter"><i class="m2-asideIcon1"></i>我的账户</a>
      </li>
      <li class="m2-asideListitem">
        <a class="m2-aside-item" href="usercenter-growth-index"><i class="m2-asideIcon-vip"></i>成长值中心</a>
      </li>
      <li class="m2-asideListitem">
        <a class="m2-aside-item m2-aside-toggle" href="usercenter-investcontrol-investrecord"><i class="m2-asideIcon2"></i>投资记录</a>
      </li>

      <li class="m2-asideListitem">
        <a class="m2-aside-item" href="usercenter-invitefriends">
          <i class="m2-asideIcon-invit"></i>
          <b class="m2-asideIcon-prize"></b>
          邀请好友
        </a>
      </li>

      <li class="m2-asideListitem">
        <a class="m2-aside-item m2-aside-toggle" ><i class="m2-asideIcon5"></i>消息管理 </a>
        <ul class="m2-aside-secItem" style="display:none">
          <li>
            <a class="m2-aside-secLink-item" href="usercenter-messagecontrol-sitemsg">站内消息</a>
          </li>
          <li>
            <a class="m2-aside-secLink-item" href="usercenter-messagecontrol-set_message">通知设置</a>
          </li>
        </ul>
      </li>
      <li class="m2-asideListitem">
        <a class="m2-aside-item m2-aside-toggle" ><i class="m2-asideIcon6"></i>账户管理</a>
      </li>
    </ul>
  </div>
  <script>
    // 		$(document).ready(function(){
    var href = window.location.href;
    var search = window.location.search;
    $('.m2-asideListitem ul a').each(function () {
      if ($(this).prop('href') + search == href) {
        if ($(this).prop('href') == "/usercenter-wangbaoqiang" || $(this).prop('href') == "/usercenter-sirendingqi") {
        } else {
          $(this).parent().parent('ul').show();
          $(this).parent().parent('ul').prev('a').removeClass('m2-aside-item');
          $(this).parent().parent('ul').prev('a').addClass('m2-aside-cur');
          $(this).css('text-decoration', 'underline');
          $(this).css('color', '#0996CC');
        }
      }
    });
    $('.m2-asideListitem a:not(.m2-asideListitem ul a)').each(function () {
      if ($(this).prop('href') + search == href) {
        if ($(this).prop('href').search("usercenter-wangbaoqiang") > -1) {
          $(this).removeClass('m2-aside-wbq');
          $(this).addClass('m2-aside-cur');
        } else if ($(this).prop('href').search("usercenter-sirendingqi") > -1) {
          $(this).removeClass('m2-aside-wbq');
          $(this).addClass('m2-aside-cur');
        } else {
          $(this).removeClass('m2-aside-item');
          $(this).addClass('m2-aside-cur');
        }
      }
    });
    $('.m2-asideListitem a:not(.m2-asideListitem ul a)').click(function () {
      if ($(this).prop('href') == '') {
        $(this).siblings('ul').slideToggle();
        $(this).parent().siblings('.m2-asideListitem').children('.m2-aside-secItem').slideUp();
      }
    });
    // 		});
  </script>
  <div style="width:100%; height:100%; position:fixed; z-index:100; top:0; display:none; left:0;" id="allP" >
    <div style="width:100%; height:100%; position:absolute; top:0; left:0; background:#000; opacity:0.5;"></div>
    <div style="width:404px; height:154px; background:#fff; position:absolute; top:50%; left:50%; margin-left:-252px; margin-top:-100px; border:2px solid #666;">
      <p style="color: #666666;font-size: 16px;position: absolute;line-height:170px;text-align: center; font-family: Microsoft YaHei;;">该项目已还清，为保护企业隐私，不再公示项目信息</p>
      <div style="width: 30px;height: 30px;position: absolute;top: 11px;right: 0px;color: #666;font-size: 20px;cursor: pointer;" id="close">X</div>
    </div>

  </div>
  <div class="m2-userCentermanage-con">
    <div class="m2-manage-search">
      <div class="m2-manage-search-head">
        <h3><i></i>投资记录</h3>
      </div>
      <div class="m2-manage-search-selector">
        <ul class="m2-manageSearchsel-time m2-manageSearchsel-time1" style="margin-bottom:15px">
          <li>时间范围：</li>
          <li class="m2-manageSearchsel-link m2-manageSearchsel-link1"><span class="m2-manSealink-sel" id="getItems">全部</span></li>
          <li class="m2-manageSearchsel-link m2-manageSearchsel-link1"><span class="m2-manSealink-unsel" >最近7天</span></li>
          <li class="m2-manageSearchsel-link m2-manageSearchsel-link1"><span class="m2-manSealink-unsel" >一个月</span></li>
          <li class="m2-manageSearchsel-link m2-manageSearchsel-link1"><span class="m2-manSealink-unsel" >三个月</span></li>
          <%--<li>从<input id="m2-manSeadate-start" type="text"></li>
          <li>到<input id="m2-manSeadate-end" type="text"></li>--%>
        </ul>
        <ul class="m2-manageSearchsel-time m2-manageSearchsel-time2" style="margin-bottom:15px">
          <li>回款状态：</li>
          <li class="m2-manageSearchsel-link m2-manageSearchsel-link2"><span class="m2-manSealink-sel" >全部</span></li>
          <li class="m2-manageSearchsel-link m2-manageSearchsel-link2"><span class="m2-manSealink-unsel" >还款中</span></li>
          <li class="m2-manageSearchsel-link m2-manageSearchsel-link2"><span class="m2-manSealink-unsel" >已结清</span></li>
        </ul>
        <%--<ul class="m2-manageSearchsel-time m2-manageSearchsel-time3" style="margin-bottom:15px">
          <li>投资方式：</li>
          <li class="m2-manageSearchsel-link m2-manageSearchsel-link3"><span class="m2-manSealink-sel" >全部</span></li>
          <li class="m2-manageSearchsel-link m2-manageSearchsel-link3"><span class="m2-manSealink-unsel" >自动投标</span></li>
          <li class="m2-manageSearchsel-link m2-manageSearchsel-link3"><span class="m2-manSealink-unsel" >手动投标</span></li>
        </ul>--%>
        <table class="m2-userInvest-table" id="touziRecord" cellpadding="0" cellspacing="0" >
          <tr class="m2-userInevst-head" >
            <th style="width:140px;">项目ID</th>
            <th style="width:120px;">投资金额</th>
            <th style="width:60px;">收益率</th>
            <th style="width:120px;">计息日</th>
            <th style="width:120px;">还款日</th>
            <th style="width:168px;"></th>
          </tr>
          <tr class="m2-userTable-noData"><td>暂无数据</td>
            <td colspan="5"></td>
          </tr>
        </table>
      </div>
    </div>
  </div>
</div>

<script>

  var oP=document.getElementById('allP');
  var oClose=document.getElementById('close');
  //oP.style.display='none';
  oClose.onclick=function(){
    oP.style.display='none';
  };
  var investdata=new Array(0,0,0);
  var capitalprogress=new Array();

  /**
   * 已结束的项目不允许查看合同
   */
  function linkContractContract(that){
    var bid=that.getAttribute('bid');
    var status = that.getAttribute('status');
    if(status==7||status==11){
      oP.style.display='block';
    } else {
      window.open("member-contract-investor.shtml?id="+bid,"_blank");
    }
  }
  /**
   * 已结束的项目不允许查看合同
   */
  function linkContracttransContract(that){
    var bid=that.getAttribute('bid');
    var status = that.getAttribute('status');
    if(status==7||status==11){
      oP.style.display='block';
    } else {
      window.open("member-contracttrans-investor.shtml?id="+bid,"_blank");
    }
  }
  /**
   * 已结束的项目不允许下载合同
   */
  function linkDownload(that){
    var bid=that.getAttribute('bid');
    var status = that.getAttribute('status');
    if(status==7||status==11){
      oP.style.display='block';
    } else {
      window.open("Member-Contract-createAndSendPdfbyid?id="+bid,"_blank");
    }
  }
</script>

<script type="text/javascript" src="js/m2-userCenter-invest.js"></script>

</body>
</html>

</body>
</html>
