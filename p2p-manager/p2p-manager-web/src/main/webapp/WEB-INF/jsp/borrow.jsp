<%--
  Created by IntelliJ IDEA.
  User: Administrator  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">

  <meta name="keywords" content="理财产品,投资理财公司,赚钱">
  <meta name="description" content="爱钱帮的大事记栏目，为投资人提供爱钱帮在发展过程中的大事记，为大家选择投资理财公司时提供参考，帮您选择赚钱又安全的理财产品，使您获得高的收益。">
  <title>借钱管理页面丨关于我们丨理财产品，为您赚钱短期理财的互联网金融理财投资平台-爱钱帮</title>
  <!-- 导入easyui的样式表 -->
  <link rel="stylesheet" href="js/jquery-easyui-1.5/themes/bootstrap/easyui.css">
  <link rel="stylesheet" href="js/jquery-easyui-1.5/themes/icon.css">
  <!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <![endif]-->
  <link  rel="Shortcut  Icon"  href="images/minilogo.png">
  <link rel="stylesheet" href="css/m2-commonNew.css?20160520">
  <link rel="stylesheet" href="m2-main.css?20160520">
  <link rel="stylesheet" href="css/m2-common.css?20160520">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/common.js?20160520"></script>

  <!-- 右侧边栏start -->
  <!-- 右侧登录窗口 -->

  <!--右侧登录框-->
  <div class="mo2-indexLoginbox" id="right-fix">
    <!-- 登录注册start -->
    <div class="mo2-indLogreg" style="display: none">
      <div class="mo2-indLogtab">
        <ul>
          <li class="mo2-logTab-unsel mo2-indTab-reg">
            <span>注册</span><b></b>
          </li>
          <li class="mo2-logTab-sel mo2-indTab-log">
            <span>登录</span><b></b>
          </li>
        </ul>
      </div>
      <!-- 注册start -->
      <div class="mo2-indRegboxRight" style="display:none;">
        <div class="mo2-indLogitem" style="margin-bottom:6px;">
          <i class="mo2-indLogicon-tel"></i><input class="mo2-indIpt-all" id="regTelRight" maxlength="11" type="text" placeholder="输入手机号码"><b class="mo2-indLogwarRight"><em class="mo2-indlogWar-arr"></em><u></u></b>
        </div>
        <div class="mo2-indLogitem" style="margin-bottom:6px;">
          <i class="mo2-indLogicon-psw"></i><input class="mo2-indIpt-all m2-ind-banPsw" id="passRight" type="password" placeholder="6-20位数字与字母组合的密码"><b class="mo2-indLogwarRight"><em class="mo2-indlogWar-arr"></em><u></u></b>
        </div>
        <div class="mo2-indLogitem-step1">
          <div class="mo2-indLogreg-step1">
            <i class="mo2-indLogicon-code"></i><input class="mo2-indIptcod-step1" id="vcodeRight" type="text" placeholder="验证码">
          </div>
          <img class="mo2-indRegcode" src="home-register-VerifyCode.png" onClick="document.getElementById('reverifyCodeRight').src='home-register-VerifyCode.png?time='+Math.random();void(0);" id="reverifyCodeRight"  alt="点击刷新验证码">
          <span class="mo2-indReg-refresh">看不清？换一张</span>
          <b class="mo2-indLogwarRight"><em class="mo2-indlogWar-arr"></em><u></u></b>
        </div>
        <div class="mo2-indReg-btn" id="verifyregcode" onclick="verifycodeRight();" style="margin-top:8px;">
          <a class="mo2-indRegbtn-able" href="#">立即注册</a>
        </div>
        <div class="mo2-indRegagree">
          <i class="mo2-indReg-sel"></i><span>我已阅读并同意</span><b>《爱钱帮注册服务协议》</b>
        </div>
      </div>
      <!-- 注册end -->
      <!-- 注册step2 start -->
      <div class="mo2-indRegbox2Right"  style="display:none;" >
        <div class="mo2-indReg2-con">
          <ul>

            <li><i class="mo2-indRegicon-step1"></i><span>为了确保您手机可用，请填写您收到的手机动态码。</span></li>
            <li><i class="mo2-indRegicon-step2"></i><span>如收不到短信验证码，可点击下面的获取语音验证码。</span></li>
          </ul>
        </div>
        <div class="mo2-indLogitem">
          <i class="mo2-indLogicon-code"></i><input class="mo2-indIpt-half" id="codeRight" type="text" placeholder="验证码">
          <span class="mo2-indRegtim mo2-regTin-able"><u>60秒后</u><span>获取手机验证码</span></span>
          <b class="mo2-indLogwarRight" style="width:200px;"><em class="mo2-indlogWar-arr"></em><u>错误提示信息</u></b>
        </div>
        <div class="mo2-indRegvoice">
          <span class="mo2-indRegvoi-btn mo2-indRegvoi-able"><i></i>获取语音验证码</span>
        </div>
        <div class="mo2-indReg-btn" onclick="registerRight();" id="verifyregphone"  style="margin-top:8px;">
          <a class="mo2-indRegbtn-able"  href="#">立即注册</a>
        </div>
      </div>
      <!-- 注册step2 end -->

     
      <!-- 登录end -->
    </div>
    <!-- 登录注册end -->
  </div>
  <!-- 右侧登录窗口 -->
  <!--add by zml start-->
  <!--<div id="fixbar" style="width:50px;position:fixed;top:0;right:0px;background:#ff6666;z-index:5;"></div>-->

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
        <li class="m2-comRigli m2-comRigli-tel m2-comRigli_new" data="#fixnavbar_two">
          <img src="images/fixed-r2.png" alt="我的红包">
          <div class="num num1">
            3                </div>
          <div class="toAbs">
            <div><img src="images/fixedl-2_v2.png" alt="我的红包"></div>
            <div></div>
          </div>
        </li>
        <li class="m2-comRigli m2-comRigli-qq m2-comRigli_new" data="#fixnavbar_three">
          <img src="images/fixed-r3.png" alt="我的加息券">
          <div></div>            	<div class="toAbs">
          <div><img src="images/fixedl-3_v2.png" alt="我的加息券"></div>
          <div></div>
        </div>
        </li>
        <li class="m2-comRigli m2-comRigli-sug m2-comRigli_new" data="#fixnavbar_four">
          <img src="images/fixed-r4.png" alt="站内信息">
          <div></div>            	<div class="toAbs">
          <div><img src="images/fixedl-4_v2.png" alt="站内信息"></div>
          <div></div>
        </div>
        </li>
      </ul>
    </div>
    <!-- 右边侧栏顶部右边弹出 -->
    <div class="fixbox_bar">
      <div class="fixnavbar" id="fixnavbar_one">
        <div class="sumtop">
          <div class="top" style="margin: 18px;text-align: center;font-size: 20px;position: relative;"><span style="position: absolute;top: 0;left:-18px">>></span>我的账户</div>
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

      <div class="fixnavbar common" id="fixnavbar_two">

      </div>

      <div class="fixnavbar common" id="fixnavbar_three">

      </div>

      <div class="fixnavbar" id="fixnavbar_four">

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
                <img id="ivrSecurityCodeImg" onclick="getCode()" src="home-register-VerifyCode.png" alt="验证码" title="点击更新验证码">
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


  <!--首页右侧提示悬浮窗、账户、红包、加息券 user_m_type -->
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
        }else if(select=="#fixnavbar_two"){
          $.ajax({
            type: "POST",
            url: '/Home-RightHomePage-hb_right_new',
            success: function(data) {
              $('#fixnavbar_two').empty();
              $('#fixnavbar_two').append(data);
            }
          });
        }else if(select=="#fixnavbar_three"){
          $.ajax({
            type: "POST",
            url: '/Home-RightHomePage-jxq_right_new',
            success: function(data) {
              $('#fixnavbar_three').empty();
              $('#fixnavbar_three').append(data);
            }
          });
        }else if(select=="#fixnavbar_four"){
          $.ajax({
            type: "POST",
            url: '/Home-RightHomePage-sitemsg_right_new',
            success: function(data) {
              $('#fixnavbar_four').empty();
              $('#fixnavbar_four').append(data);
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
  <script>
    //注册方法
    function verifycodeRight(){
      var canSubmit=true;
      $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").children("u").html('');
      if($("#vcodeRight").val().length==0){
        $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").children("u").html("验证码不能为空");
        $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").show();
        canSubmit = false;
      }
      if($("#passRight").val().length==0){
        $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").children("u").html("密码不能为空");
        $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").show();
        canSubmit = false;
      }
      if($("#regTelRight").val().length==0){
        $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").children("u").html("手机号不能为空");
        $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").show();
        canSubmit = false;
      }

      $(".mo2-indRegbox .mo2-indLogwarRight u").each(function(){
        if($(this).html().length>0){
          canSubmit = false;
        }
      });
      if (canSubmit !== true) return false;
      var p={"vcode":$("#vcodeRight").val()};
      postData("/Home-Register-ckcode",p,function(d){
        if(d.message!=" "){
          $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").children("u").html(d.message);
          $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").show();
          return false;
        }else{
          $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").children("u").html('');
          $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").hide();
          $('.mo2-indRegboxRight').css('display','none');
          $('.mo2-indRegbox2Right').css('display','block');
        }

      });
    }
    //登录方法
    function loginRight(){
      var p = makevar(['user_nameRight','pass_wordRight','vcodeRight']);
      var canSubmit = true;
      if($('#user_nameRight').val()==""){
        $('#error-hint').html('用户名不能为空！');
      }else if($('#user_nameRight').val().lenght <6){
        $('#error-hint').html('用户名长度错误！');
      }else {
        if ($('#pass_wordRight').val() == ""){
          $('#error-hint').html('密码不能为空！');
        }else if ($('#pass_wordRight').val().length < 6 || $('#pass_wordRight').val().length > 20){
          $('#error-hint').html('密码长度错误！');
        }else {
          $('#error-hint').html('');
          postData("/Home-Login-index_loginRight",p,function(d){
            if(d.status==0){
              $('#error-hint').html(d.message);
            }else if(d.status==1){
              window.location.reload();
            }else if(d.status==2){
              window.location.href = "dashiji_show.html#15319.html";
            }
          });
        }
      }
    }
    $(document).keydown(function(event){
      var e = event || window.event || arguments.callee.caller.arguments[0];
      if(e && e.keyCode==13){
        loginRight();
      }
    });

    // 注册登录tab切换
    $('.mo2-indLogtab ul li').click(function(){
      if ($(this).hasClass('mo2-logTab-unsel')) {
        $(this).addClass('mo2-logTab-sel').removeClass('mo2-logTab-unsel');
        $(this).siblings('.mo2-logTab-sel').addClass('mo2-logTab-unsel').removeClass('mo2-logTab-sel');
      }
    });
    // 注册登录显示隐藏
    $('.mo2-indTab-reg').click(function(){
      $('.mo2-indRegboxRight').show();
      $('.mo2-indRegbox2Right').hide();
      $('.mo2-indLogboxRight').hide();
    });
    $('.mo2-indTab-log').click(function(){
      $('.mo2-indRegboxRight').hide();
      $('.mo2-indRegbox2Right').hide();
      $('.mo2-indLogboxRight').show();
    });

    //右侧悬浮框
    var aLi=$('.m2-comRigli_new');
    for(var i=0;i<aLi.length;i++){
      (function(index){
        aLi[index].onmouseover=function(){
          var oDiv=aLi[index].children[2];
          var aDiv=oDiv.children;
          oDiv.style.display='block';
          //if(flag==1){
          var iNum=parseInt(aDiv[1].innerHTML);
          if(iNum>=100){
            aDiv[1].innerHTML='···';
          }
          //}
        };
      })(i)
    }
    for(var i=0;i<aLi.length;i++){
      (function(index){
        aLi[index].onmouseout=function(){
          var oDiv=aLi[index].children[2];
          var aDiv=oDiv.children;
          oDiv.style.display='none';
          //if(flag==1){
          var iNum=parseInt(aDiv[1].innerHTML);
          if(iNum>=100){
            aDiv[1].innerHTML='···';
          }
          //}
        };
      })(i)
    }

  </script>


  <script type="text/javascript">
    $(function () {
      var wHei = $(window).height();

      $(document).scroll(function () {
        // 判断返回顶部是否显示
        visTop(wHei);
      });

      $('.m2-comRigli-top').click(function () {
        $('body,html').animate({scrollTop: 0}, 600);
        return false;
      });
    });
    function visTop(high) {

      if ($(document).scrollTop() > high + 100) {
        $('.m2-comRigli-top').css('visibility', 'visible');
      } else {
        $('.m2-comRigli-top').css('visibility', 'hidden');
      }
    }
  </script>
  <!-- 右侧边栏end -->
  <!-- headerStart -->
  <div class="m2-commonTop-con">
    <div class="m2-commonTop">
      <div class="m2-commonTop-left">
        <div class="m2-commonTop-tel"><i></i>4006&nbsp;-&nbsp;777&nbsp;-&nbsp;518</div>
        <div class="m2-commonTop-service" style="padding-left:0;"><span style="float:left;">客服：</span>
          <div style="float:left;display:inline-block;width:92px;height:22px;padding:6px 0 13px 0;"></div>
        </div>
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
            <i class="m2-commonEwmicon" onclick='window.open("http://weibo.com/iqianbang")'></i>
          </div>
        </div>
      </div>
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
    </div>
  </div>

<div class="m2-commonNav-con">
  <div class="m2-commonNav-box">
    <div class="m2-commonLogo">
      <a class="m2-comImg-logo" href="index.html">
        <img src="images/m2-logo.png" title="爱钱帮投资理财平台logo" alt="爱钱帮标识">
      </a>
      <a class="m2-conImg-slogan" href="">
        <img src="images/m2-sloganHS.png" title="徽商银行投资理财托管" alt="">
      </a>
    </div>
    <div class="m2-commonNav">
      <ul class="m2-commonNavul-fir" data_page='jieqian'>
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


</head>

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
<!--头部end-->

<script src="js/jquery-easyui-1.5/jquery.min.js"></script>
<!-- jquery easyui -->
<script src="js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
<script src="js/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">

  function checkIdCard(){
    if($("#a1").val().length<18){
      document.getElementById("a").innerHTML="请输入正确的18位身份证号";
    }else{
      document.getElementById("a").innerHTML="";
    }
  }


  function checkIdCard1(){
    if($("#a2").val().length<11){
      document.getElementById("a3").innerHTML="请输入正确的11手机号";
    }else{
      document.getElementById("a3").innerHTML="";
    }
  }

/*  function submitForm(){
    if($("#file").val()==""){
      $.messager.alert("提示","请选择文件夹");
      return false;
    }
    $("#itemAddForm").ajaxSubmit({
      type:"post",  //提交方式
      url:"borrow1", //请求url
      success:function(data){ //提交成功的回调函数
        $.messager.alert("提示",data);
      }
    });
  }*/

/*    $('#dd').datebox({
      required: true
    });*/


    function yulan(obj, id) {
      if (window.FileReader) {
        var reader = new FileReader();
        var file = obj.files[0];
        var regexImage = /^image\//;   //js正则表达式，匹配是否拥有image

        if (regexImage.test(file.type)) {
          reader.onload = function name(data) {
            var img = document.getElementById(id);
            img.src = data.target.result;//将结果数据显示到img标签上
          };
          //开始读取上传的文件内容
          reader.readAsDataURL(file);

        } else {
          alert("所传图片格式不正确，请重新选择");
          return;
        }
      } else {
        alert("抱歉，该服务器不支持图片预览，请更新");
        return;
      }

  }

</script>
<link rel="stylesheet" href="css/front.css?20160520">
<script type="text/javascript" src="js/m2-front.js"></script>
<script>
  var href = window.location.href;
  var search = window.location.search;
  $('#aboutusul a').each(function () {
    if ($(this).prop('href') + search == href) {
      $(this).children('span').css('color', '#09ABE9');
    }
  });
  $(function(){
    $('body').css('background-color','#F0F0F0');
  });
</script>
<!--头部导航end-->
<link rel="stylesheet" href="css/m2-main.css?20160520">

<script>
  var index = 0;
  var year = '';
  var month = '';
  var asynctag = false;
  $('#loadmore').click(function () {
    $.ajax({
      url: 'aboutus-getDashijiAjax',
      type: 'POST',
      data: {
        index: index
      },
      async: asynctag,
      success: function (data) {
        var obj = eval('(' + data + ')');
        for (var i in obj['list']) {
          var li = '';
          if (year == '') {
            year = obj['list'][i]['year'];
            li = '<li class="m2-evtYear"><span>' + obj['list'][i]['year'] + '<i></i></span></li>';
          } else if (obj['list'][i]['year'] != year) {
            li = '<li class="m2-evtYear"><span>' + obj['list'][i]['year'] + '<i></i></span></li>';
            year = obj['list'][i]['year'];
            month = '';
          }
          li += '<li class="m2-evtItem"><i class="m2-evtItem-circle"></i>';
          if (month == '') {
            month = obj['list'][i]['month'];
            li += '<span class="m2-evtMonth">' + obj['list'][i]['month'] + '月</span>';
          } else if (obj['list'][i]['month'] != month) {
            month = obj['list'][i]['month'];
            li += '<span class="m2-evtMonth">' + obj['list'][i]['month'] + '月</span>';
          }
          var article = $($('<div>' + obj['list'][i]['content'] + '</div>').text());
          var content = article.text();
          content = content.substr(0, 160);
          content = content.replace(/\s/g, '');
          content += '...';
          li += '<div class="m2-evtBox"><div class="m2-evtItemtime">';
          li += getImgComponentStr(article);
          li += '<span class="m2-evtItemtime-lef"><em></em>' + obj['list'][i]['timestr'] + '<i></i></span>';
          li += '<span class="m2-evtItemtime-rig"><i></i>记录</span></div>';
          li += '<div class="m2-evtBox-con"><a href="/aiqianbang_touzilicaigongsi_dashiji-' + obj['list'][i]['id'] + '.html" target="_blank"><em class="m2-evtBox-arr"></em>';
          li += '<em class="m2-evtBox-arrbg"></em>';
          li += '<p class="m2-evtBox-tit">' + obj['list'][i]['title'] + '</p>';
          li += '<p class="m2-evtBox-det">' + content + '</p>';
          li += '</a></div></div></li>';

          $('#dashijiul').append(li);
        }
        index = obj['index'];
        if (obj['pages'] == obj['index']) {
          $('#loadmore').unbind('click');
          $('#loadmoretext').text('敬请期待');
        }
      }
    });
  });
  function getImgComponentStr(jqdom) {

    if (jqdom.find('img').size() > 0) {
      var icstr = '<div class="m2-evtImg-box"><span class="m2-evtImg-tit m2-evtImg-titUnsel"><i></i>图片</span>';
      icstr += '<div class="m2-evtImghide"><div class="m2-evtImghide-head"></div>';
      icstr += '<span class="m2-evtImghide-lef"></span><span class="m2-evtImghide-rig"></span>';
      icstr += '<div class="m2-evtImghide-box"><ul class="m2-evtImghide-list">';
      jqdom.find('img').each(function () {
        icstr += '<li><span><img src="' + $(this).prop('src') + '"></span></li>';
// 			icstr += '<li><span><img src="statics/home2/images/m2-step-nav.png"></span></li>';
// 			icstr += '<li><span><img src="statics/home2/images/m2-step-nav02.png"></span></li>';
// 			icstr += '<li><span><img src="statics/home2/images/m2-suggest-bg.png"></span></li>';
// 			icstr += '<li><span><img src="statics/home2/images/xiaoai.png"></span></li>';
      });
      icstr += '</ul></div></div></div>';
    } else {
      var icstr = '';
    }
    return icstr;
  }


  $(document).on('click', '.m2-evtImg-tit', function (e) {
    $(this).siblings('.m2-evtImghide').toggle();
    $(this).toggleClass('m2-evtImg-titUnsel m2-evtImg-titSel');
    var listLen = $(this).siblings('.m2-evtImghide').children('.m2-evtImghide-box').children('.m2-evtImghide-list').children('li').length;
    $(this).siblings('.m2-evtImghide').children('.m2-evtImghide-box').children('.m2-evtImghide-list').css("width", 355 * listLen);
    imgActfunc(listLen);
  });

  function imgActfunc(imgNum) {
    if (imgNum <= 1) {
      $('.m2-evtImghide-lef').hide();
      $('.m2-evtImghide-rig').hide();
    } else if (imgNum > 1) {
      $('.m2-evtImghide-lef').show();
      $('.m2-evtImghide-rig').show();
      var listLeft = 0; //ul的left值
      $('.m2-evtImghide-lef').click(function () {
        $(this).parent().find('.m2-evtImghide-list').prepend($(this).parent().find('.m2-evtImghide-list li').last());
        $(this).siblings('.m2-evtImghide-box').children('.m2-evtImghide-list').css('left', listLeft - 355);
        $(this).siblings('.m2-evtImghide-box').children('.m2-evtImghide-list').stop().animate({left: listLeft}, 300);
      });
      $('.m2-evtImghide-rig').click(function () {
        $(this).siblings('.m2-evtImghide-box').children('.m2-evtImghide-list').css('left', listLeft);
        _this = this;
        $(this).siblings('.m2-evtImghide-box').children('.m2-evtImghide-list').stop(false, true).animate({left: listLeft - 355}, 300, function () {
          $(_this).parent().find('.m2-evtImghide-list').append($(this).parent().find('.m2-evtImghide-list li').get(0));
          $(_this).siblings('.m2-evtImghide-box').children('.m2-evtImghide-list').css('left', listLeft);
        });
      });
    }
  }
  $(document).ready(function () {
    $('#loadmore').click();
    asynctag = true;
  });
</script>

<!--底部[end]-->
<script type="text/javascript">
  //全局变量
  var GV = {
    DIMAUB: "",
    JS_ROOT: "js/",
    TOKEN: "bc9e304659c9d00b4828dadf43265207_4e13c3cfcceddc40b41e5c6624a9b3cc",
    THIS_URL: "Aboutus-",
    TINVEST_URL: "/invest-shownewinvest.shtml"

  };
</script>

<script src="js/common.js?20160520"></script>
<link type="text/css" rel="stylesheet" href="statics/common/tipBox/colorbox-master/css/colorbox.css?20160520">
<script src="statics/common/tipBox/layer-v1.5.1/layer/layer.js?20160520"></script>
<script src="statics/common/tipBox/common.js?20160520"></script>
<!--tipBOx-->
<script language=JavaScript type="text/javascript" src="js/tab.js?20160520"></script>
<script type="text/javascript">$(function () {
  if ($.browser && $.browser.msie && ($.browser.version == "6.0") && !$.support.style) {
    $('#fixed-services').css('display', 'none');
  }
})
</script>
<body>

  <div  data-options="region:'north',title:'North Title',split:true" style="height:100px;background:  bisque"><h1><font color="black">申请借钱页面</font></h1></div>
  <div data-options="region:'center',title:'center title'" style="padding:100px;background:#A9A9A9" align="center">


    <form class="itemForm" id="itemAddForm" name="itemAddForm" method="post" enctype="multipart/form-data">

      <table style="width:100%;">
        <tr>
          <td class="label"> <h1 style="color:black">借钱申请表单:</h1></td>
        </tr>

        <tr>
          <td class="label" align=""><h2 style="color:#0000FF">家庭住址:</h2></td>
          <td>

            <input  id="address" name="address" style="width:300px"  class="easyui-textbox" data-options="required:true" />
          </td>
        </tr>

        <tr>
          <td class="label"><h2 style="color:#0000FF">第二联系人姓名:</h2></td>
      <td>
            <input  id="othername" name="othername" style="width:300px"  class="easyui-textbox" data-options="required:true" />
          </td>
        </tr>

        <tr>
          <td class="label" algin=""><h2 style="color:#0000FF">第二联系人电话:</h2></td>
          <td>
            <input  id="otherphone" name="otherphone" style="width:300px"  class="easyui-textbox" data-options="required:true" />
          </td>
        </tr>

        <tr>
          <td class="label"><h2 style="color:#0000FF">第二联系人住址:</h2></td>
          <td>
            <input  id="otheraddress" name="otheraddress" style="width:300px"  class="easyui-textbox" data-options="required:true" />
          </td>
        </tr>

        <tr>
          <td class="label"><h2 style="color:#0000FF">车牌号:</h2></td>
          <td>
            <input  id="carnumber" name="carnumber" style="width:300px"  class="easyui-textbox" data-options="required:true" />
          </td>
        </tr>

        <tr>
          <td class="label"><h2 style="color:#0000FF">申请金额:</h2></td>
          <td>
            <input  id="money" name="money" style="width:300px" class="easyui-textbox" data-options="required:true"/>
            <font color="blue" style="width:500px" name="returnway">返款方式:按日计息，到期还本息</font>
          </td>
        </tr>

        <tr>
          <td class="label"><h2 style="color:#0000FF">申请时长:</h2></td>
          <td>
            <select id="gettime"  name="gettime" style="width:300px;" >
              <option value=""></option>
              <option>3个月</option>
              <option>6个月</option>
              <option>9个月</option>
              <option>12个月</option>
            </select>
          </td>
        </tr>

  <%--      <tr>
          <td class="label"><h2 style="color:#0000FF"> 剩余需还款金额:</h2></td>
          <td>

            <input  id="residue" name="residue" style="width:300px" class="easyui-textbox" data-options="required:true"/>
          </td>
        </tr>--%>

        <tr>
          <td class="label"><h2 style="color:#0000FF">借款用途:</h2></td>
          <td>

            <input  id="purpose" name="purpose" style="width:300px" class="easyui-textbox" data-options="required:true" />
          </td>
        </tr>

        <tr>
          <td class="label"><h2 style="color:#0000FF">申请时间:</h2></td>
          <td>
            <input  id="firstTime"  type= "text" class= "easyui-datebox" required ="required" style="width: 300px" name="firstTime" >
          </td>
        </tr>

        <tr>
          <%--<td class="label"><h2 style="color:#0000FF">身份证正面照片:</h2></td>--%>
          <td width="30px">
            <HR style="border:3 double #1dffca" width="80%" color=#1dffca SIZE=3>
            <h2 style="color:#0000FF">身份证正面照片:</h2>
            <img id="ylimg" width="80px" height="80px" src="images/b.png" />
            <input type="file" name="carimg1" onchange="yulan(this,'ylimg');"/>
          </td>

          <%--<td class="label"><h2 style="color:#0000FF">身份证反面照片:</h2></td>--%>
          <td width="30px">
            <HR style="border:3 double #1dffca" width="80%" color=#1dffca SIZE=3>
            <h2 style="color:#0000FF">身份证反面照片:</h2>
            <img id="ylimg1" width="80px" height="80px" src="images/b.png" />
            <input type="file" name="carimg1" onchange="yulan(this,'ylimg1');"/>

          </td>

          <%--<td class="label"><h2 style="color:#0000FF">请上传您的汽车照片:</h2></td>--%>
          <td width="30px">
            <HR style="border:3 double #1dffca" width="80%" color=#1dffca SIZE=3>
            <h2 style="color:#0000FF">请上传您的汽车照片:</h2>
            <img id="ylimg2" width="80px" height="80px" src="images/b.png" />
            <input type="file" name="carimg1" onchange="yulan(this,'ylimg2');"/>
          </td>
        </tr>

<%--        <tr>
          <td class="label"><h2 style="color:#0000FF">身份证反面照片:</h2></td>
          <td>
            <img id="ylimg1" width="80px" height="80px" src="images/b.png" />
            <input type="file" name="carimg1" onchange="yulan(this,'ylimg');"/>
          </td>
        </tr>--%>

<%--        <tr>
          <td class="label"><h2 style="color:#0000FF">请上传您的汽车照片:</h2></td>
          <td>
            <img id="ylimg2" width="80px" height="80px" src="images/b.png" />
            <input type="file" name="carimg1" onchange="yulan(this,'ylimg');"/>
          </td>
        </tr>--%>

        <tr>
       <%--   <td class="label"><h2 style="color:#0000FF">车辆抵押证明(照片):</h2></td>--%>
          <td  width="30px">
            <h2 style="color:#0000FF">车辆抵押证明(照片):</h2>
            <img id="ylimg3" width="80px" height="80px" src="images/b.png" />
            <input type="file" name="carimg1" onchange="yulan(this,'ylimg3');"/>
          </td>

        <%--  <td class="label"><h2 style="color:#0000FF">附加资料(房产证)(照片):</h2></td>--%>
          <td  width="30px">
            <h2 style="color:#0000FF">附加资料(房产证)(照片):</h2>
            <img id="ylimg4" width="80px" height="80px" src="images/b.png" />
            <input type="file" name="carimg1" onchange="yulan(this,'ylimg4');"/>
          </td>

          <%--<td class="label"><h2 style="color:#0000FF">家庭住址照片:</h2></td>--%>
          <td  width="30px">
            <h2 style="color:#0000FF">家庭住址照片:</h2>
            <img id="ylimg5" width="80px" height="80px" src="images/b.png" />
            <input type="file" name="carimg1" onchange="yulan(this,'ylimg5');"/>
          </td>

        </tr>

<%--        <tr>
          <td class="label"><h2 style="color:#0000FF">附加资料(房产证)(照片):</h2></td>
          <td>
            <img id="ylimg4" width="80px" height="80px" src="images/b.png" />
            <input type="file" name="carimg1" onchange="yulan(this,'ylimg2');"/>
          </td>
        </tr>--%>

<%--
        <tr>
          <td class="label"><h2 style="color:#0000FF">家庭住址照片:</h2></td>
          <td>
            <img id="ylimg5" width="80px" height="80px" src="images/b.png" />
            <input type="file" name="carimg1" onchange="yulan(this,'ylimg');"/>
          </td>
        </tr>
--%>

        <tr>
         <%-- <td class="label"><h2 style="color:#0000FF">附加资料(银行流水)(照片):</h2></td>--%>
          <td  width="30px">
            <h2 style="color:#0000FF">附加资料(银行流水)(照片):</h2>
            <img id="ylimg6" width="80px" height="80px" src="images/b.png" />
            <input type="file" name="carimg1" onchange="yulan(this,'ylimg6');"/>
            <HR style="border:3 double #1dffca" width="80%" color=#1dffca SIZE=3>
          </td>

          <%--<td class="label"><h2 style="color:#0000FF">附加资料(社保)(照片):</h2></td>--%>
          <td  width="30px">
            <h2 style="color:#0000FF">附加资料(社保)(照片):</h2>
            <img id="ylimg7" width="80px" height="80px" src="images/b.png" />
            <input type="file" name="carimg1" onchange="yulan(this,'ylimg7');"/>
            <HR style="border:3 double #1dffca" width="80%" color=#1dffca SIZE=3>
          </td>

          <%--<td class="label"><h2 style="color:#0000FF">附加资料(家属身份证)(照片):</h2></td>--%>
          <td width="30px">
            <h2 style="color:#0000FF">附加资料(家属身份证)(照片):</h2>
            <img id="ylimg8" width="80px" height="80px" src="images/b.png" />
            <input type="file" name="carimg1" onchange="yulan(this,'ylimg8');"/>
            <HR style="border:3 double #1dffca" width="80%" color=#1dffca SIZE=3>
          </td>
        </tr>

<%--        <tr>
          <td class="label"><h2 style="color:#0000FF">附加资料(社保)(照片):</h2></td>
          <td>
            <img id="ylimg7" width="80px" height="80px" src="images/b.png" />
            <input type="file" name="carimg1" onchange="yulan(this,'ylimg4');"/>
          </td>
        </tr>--%>

<%--        <tr>
          <td class="label"><h2 style="color:#0000FF">附加资料(家属身份证)(照片):</h2></td>
          <td>
            <img id="ylimg8" width="80px" height="80px" src="images/b.png" />
            <input type="file" name="carimg1" onchange="yulan(this,'ylimg5');"/>
          </td>
        </tr>--%>

        <tr>
          <td width="30px"></td>
          <td width="30px">
            <button  style="height:40px" onclick="submitForm()" class="easyui-linkbutton" type="button" data-options="iconCls:'icon-ok'">提交申请</button>
          </td>
          <td width="30px"></td>
        </tr>

      </table>
    </form>
  </div>


  <link rel="stylesheet" href="css/newPage.css?20160520" />
  <div id="mainNewfoot">
    <div class="mainNewfocus" style ="width:740px;">
      <div class="mainNewblog">
        <ul>
          <li class="joinWb"><span></span><p>官方微博</p></li>
          <li class="joinWx"><span></span><p>官方微信</p></li>
        </ul>
      </div>
      <div class="mainNewcopy">
        <div class="mainNewserve">
          <h3>客服电话:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:12px;">投资有风险，请谨慎投资</span></h3>
          <h3>4006-777-518&nbsp;&nbsp;&nbsp;http://www.iqianbang.com</h3>
          <ul>
            <li><a href="touzi_licai_chanpin.html">我要投资</a></li>
            <li><a href="guide.html">帮助中心</a></li>
            <li><a href="guanyu_aiqianbang.html">关于我们</a></li>
            <li><a href="licai_gonggao.html">新闻公告</a></li>
          </ul>
        </div>
        <div class="mainNewown">
          <p>页面版权所有：北京爱钱帮财富科技有限公司&nbsp;&nbsp;京ICP证150216号</p>
          <!--                <p>推荐使用IE7以上版本&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法律顾问：<a href="http://www.iqianbang.com/ihzhb-527.shtml" target="_blank" style="color:#a4a3a3">国浩律师事务所</a></p>-->
          <p>推荐使用IE7以上版本&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法律顾问：国浩律师事务所（grandall.com.cn）</p>
        </div>
        <div class="mainNewsafe">
          <ul>
            <li class="icon-norton"><a rel="nofollow"  href="https://sealinfo.verisign.com/splash?form_file=fdf/splash.fdf&amp;dn=www.iqianbang.com&amp;lang=zh_cn" target='_blank'></a></li>
            <!--                    <li class="icon-cx"><a rel="nofollow"  href="https://credit.szfw.org/CX20150715010327080139.html" target="_blank"></a></li>-->
            <li class="icon-kx"><a rel="nofollow"  href="https://ss.knet.cn/verifyseal.dll?sn=e14032111010847492vg0o000000&amp;ct=df&amp;a=1&amp;pa=0.8090716653969139" target="_blank"></a></li>
            <!--                    <li class="icon-360"><a rel="nofollow"  href="http://webscan.360.cn/index/checkwebsite/url/www.iqianbang.com" target="_blank"></a></li>-->
            <li class="icon-zhx"><a rel="nofollow"  href="http://www.itrust.org.cn/yz/pjwx.asp?wm=1076572005" target="_blank"></a></li>
            <li class="icon-icp"><a rel="nofollow"  href="/anquanlicai_icp.html" target="_blank"></a></li>
          </ul>
        </div>
      </div>

    </div>
  </div>

</body>
</html>
