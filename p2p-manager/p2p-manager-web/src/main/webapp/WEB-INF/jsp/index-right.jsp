<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2017/9/12
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<![endif]-->
<link  rel="Shortcut  Icon"  href="images/minilogo.png">
<link rel="stylesheet" href="css/m2-commonNew.css?20160520">
<link rel="stylesheet" href="css/m2-main.css?20160520">
<link rel="stylesheet" href="css/m2-common.css?20160520">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/common.js?20160520"></script>


<link rel="stylesheet" href="css/m2-main.css?20160520">
<script type="text/javascript" src="js/jquery.knob.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.js"></script>
<!--右侧悬浮条-->
<div id="fixbar">
  <!-- 右侧边栏顶部 -->
  <!--右侧上边栏start -->
  <div class="m2-commonRight2"  id="m2-commonRight">
    <ul class="m2-comRiglist myclick">
      <li class="m2-comRigli m2-comRigli-ewm m2-comRigli_new" style="border-top:1px solid #fff;" data="#fixnavbar_one">
        <div></div>
        <img src="images/fixed-r1.png" alt="我的账户">
        <div class="toAbs">
          <div><img src="images/fixedl-1_v2.png" alt="我的账户"></div>
          <div></div>
        </div>
      </li>
    </ul>
  </div>
  <!-- 右边侧栏顶部右边弹出 -->
  <div class="fixbox_bar">
    <div class="fixnavbar" id="fixnavbar_one">
      <div class="sumtop">
        <div class="top" style="margin: 18px;text-align: center;font-size: 20px;position: relative;"><span style="position: absolute;top: 0;left:-18px">&gt;&gt;</span>我的账户</div>
        <div class="bottom">
          <img src="images/user-head.png" alt="我的账户">
          <div>
            <p id ="right_name_info"></p>
            <button id="right_recharge">充值</button>
          </div>
        </div>
      </div>
      <hr style="margin:0 10px;"/>
      <div class="summiddle">
        <ul>
          <li style="border-top-left-radius:10px;">
            <p><span id="right_account_money"></span>元</p>
            <span>可用资金</span>
          </li>
          <li style="border-top-right-radius:10px;">
            <p><span id="right_reward_money"></span>元</p>
            <span>可用奖励金</span>
          </li>
        </ul>
        <div class="content">
          <p>待收本金：<span id="right_total_capital"></span>元</p>
          <p>待收收益：<span id="right_total_wait_interest"></span>元</p>
        </div>
        <p class="lastcontent">资产总计：<span id="right_total_asset"></span>元</p>
        <ul style="margin-top:30px;">
          <li style="border-top-left-radius:10px;border-bottom-left-radius:10px;">
            <p><span id="right_today_earn"></span>元</p>
            <span>今日赚取</span>
          </li>
          <li style="border-top-right-radius:10px;border-bottom-right-radius:10px;">
            <p><span id="right_total_reward_normal_interest"></span>元</p>
            <span>累计收益</span>
          </li>
        </ul>
      </div>
      <div class="sumbottom" id ="accountCommon_right">查看更多>></div>
    </div>

  </div>

  <!-- 右侧边栏底部 -->
  <div class="m2-commonRight">
    <ul class="m2-comRiglist">
      <li class="m2-comRigli m2-comRigli-ewm"  style="border-top:1px solid #fff;">
        <i class="m2-comRigli-icon"></i>
        <span class="m2-comRigli-hov">关注<br>微信</span>
        <div class="m2-comRighide m2-comRighide-ewm"><i></i></div>
      </li>
      <li class="m2-comRigli m2-comRigli-tel">
        <i class="m2-comRigli-icon"></i>
        <span class="m2-comRigli-hov">联系<br>我们</span>
        <div class="m2-comRighide m2-comRighide-tel">
          <div class="m2-comRighide-telSpace"></div>
          <b class="m2-comRighide-telBorder"></b>
          <div class="m2-comRigtel-lef">
            <div class="m2-comRigtel-lefTop">
              <input type="text" placeholder="请输入您的手机号"  id='phonenumber'>
            </div>
            <div class="m2-comRigtel-lefBot">
              <input type="text" placeholder="验证码" id="ivrSecurityCode">
              <img id="ivrSecurityCodeImg" onclick="getCode()" src="Index-VerifyCode.png" alt="验证码" title="点击更新验证码">
            </div>
          </div>
          <div class="m2-comRigtel-rig">
            <span  onclick='callback()'>免费<br>拨打</span>
          </div>
        </div>
      </li>
      <li class="m2-comRigli m2-comRigli-qq" style="position:relative;">

        <div id="BizQQWPA" style="width:50px;height:50px;position:absolute;top:0;left:0;z-index:150;">

        </div>	                <i class="m2-comRigli-icon" style="z-index:100;"></i>
        <span class="m2-comRigli-hov" style="z-index:100;">在线<br>客服</span>
      </li>
      <li class="m2-comRigli m2-comRigli-sug" style="border-bottom: 1px solid #fff;">
        <i class="m2-comRigli-icon"></i>
        <span class="m2-comRigli-hov"><a href="guide.html" style="color:#fff;">帮助<br>中心</a></span>
      </li>

      <li class="m2-comRigli m2-comRigli-top">
        <i class="m2-comRigli-icon"></i>
        <span class="m2-comRigli-hov">返回<br>顶部</span>
      </li>
    </ul>
  </div>
</div>


<script type="text/javascript">
  $(function(){
    $(".fixbox_bar").click(function(event){
      event.stopPropagation();
    });
    $("#fixbar .myclick li").click(function(event){
      var select=$(this).attr("data");
      $(".fixnavbar").css("display","none");
      $(select).css("display","block");
      $('#fixbar').animate({ right: '300'}, "slow");
      $("#fixbar .fixbox_bar").animate({ right: '-18'}, "slow");

      // 阻止事件冒泡
      event.stopPropagation();
      if(select=="#fixnavbar_one"){
        $.ajax({
          type:'POST',
          url:"/Home-RightHomePage-account_right_new",
          success:function(msg){
            var obj = eval('('+msg+')');
            $("#right_today_earn").text(obj.today_earn);
            $("#right_total_capital").text(obj.total_capital);
            $("#right_account_money").text(obj.account_money);
            $("#right_reward_money").text(obj.reward_money);
            $("#right_total_asset").text(obj.total_asset);
            $("#right_total_wait_interest").text(obj.total_wait_interest);
            $("#right_name_info").text(obj.real_name);
            $("#right_total_reward_normal_interest").text(obj.total_reward_normal_interest);
          }
        });
      }
    });
    // 点击页面其他地方框消失
    $("body").click(function(){
      $('#fixbar').animate({ right: '0'}, "slow");
      $("#fixbar .fixbox_bar").animate({ right: '-318'}, "slow");
    });
  })
</script>
<!-- 右侧上边栏start -->

<!-- 首页右侧提示悬浮窗、账户、红包、加息券 -->
<script type="text/javascript">
  $(function(){
    $('#account,#redbag,#percentage,#message,#m2-commonRight').click(function(){
      $('html, body').animate({scrollTop:0}, 'slow');
      $("#user_name").focus();
    })
  })
</script>
<!-- 首页右侧提示悬浮窗、账户、红包、加息券 -->
<script>
  var flag="";
  var aNum=$('.num1');
  for(var i=0;i<aNum.length;i++){
    var iNum=parseInt(aNum[i].innerHTML);
    if(iNum>=100){
      aNum[i].innerHTML='···';
    }
  }
  //右侧悬浮框
  var aLi=$('.m2-comRigli_new');
  for(var i=0;i<aLi.length;i++){
    (function(index){
      aLi[index].onmouseover=function(){
        var oDiv=aLi[index].children[2];
        var aDiv=oDiv.children;
        oDiv.style.display='block';
        if(flag==1){
          var iNum=parseInt(aDiv[1].innerHTML);
          if(iNum>=100){
            aDiv[1].innerHTML='···';
          }
        }
      };
    })(i)
  }
  for(var i=0;i<aLi.length;i++){
    (function(index){
      aLi[index].onmouseout=function(){
        var oDiv=aLi[index].children[2];
        var aDiv=oDiv.children;
        oDiv.style.display='none';
        if(flag==1){
          var iNum=parseInt(aDiv[1].innerHTML);
          if(iNum>=100){
            aDiv[1].innerHTML='···';
          }
        }
      };
    })(i)
  }
</script>

<script type="text/javascript">
  $(function () {
    $('.m2-comRigli-top').css('visibility', 'visible');

    $('.m2-comRigli-top').click(function () {
      $('body,html').animate({scrollTop: 0}, 600);
      return false;
    });
  });
</script>


<%--充值按钮链接--%>
<script type="text/javascript">
  $(function(){
    $('#right_recharge').click(function(){
      window.location.href="#";
    });

    $(".fixbox_bar").click(function(event){
      event.stopPropagation();
    });
    $('#accountCommon_right').click(function(){
      window.location.href="usercenter.html";
    });
//			$('#redbagCommon_right').click(function(){
//				window.location.href="usercenter-rewardcontrol-redpacket.html";
//			});
//			$('#percentageCommon_right').click(function(){
//				window.location.href="usercenter-rewardcontrol-interestcoupon.html";
//			});
//			$('#messageCommon_right').click(function(){
//				window.location.href="usercenter-messagecontrol-sitemsg.html";
//			});
  })
</script>
</body>
</html>
