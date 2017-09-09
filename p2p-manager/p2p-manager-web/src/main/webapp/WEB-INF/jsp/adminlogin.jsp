<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/8/008
  Time: 23:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">

  <title>管理员登录，互联网金融理财投资平台-爱钱帮</title>


  <!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <![endif]-->
  <link  rel="Shortcut  Icon"  href="images/minilogo.png">
  <link rel="stylesheet" href="css/m2-commonNew.css?20160520">
  <link rel="stylesheet" href="css/m2-main.css?20160520">
  <link rel="stylesheet" href="css/m2-common.css?20160520">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/common.js?20160520"></script>

  <title>会员登陆--爱钱帮</title>
  <link rel="stylesheet" href="css/m2-login.css">
  <link rel="stylesheet" href="css/m2-main.css?20160520">

  <!--公共提示框start-->
  <div class="m2-pwdBg" style='display:none;z-index:9000'></div>
  <div class="m2-pwdConfirm" style='display:none;z-index:9001'>
    <i class="m2-pwdConfirm-close"></i>
    <i class="m2-pwdConfirm-ture" id='dialog-status'></i>
    <div class="m2-pwdConfirm-con">

    </div>
  </div>
  <style type="text/css">
    .myloginmask {position:fixed;top: 0;left: 0;right: 0;bottom: 0;background-color: black;display: none;opacity: 0.7;z-index: 800;filter:alpha(opacity=70)}
    .mylogin {position:   fixed;top: 50%;left: 50%;margin-top: -346px;margin-left: -260px;width: 520px;height: 496px;background-image: url("images/login/login_info.png");background-repeat: no-repeat;z-index: 1000;display: none;}
    .mylogin .topcontent {font-weight:bold;text-align: center;color: #666666;font-size: 18px;padding-top: 284px;line-height: 36px;}
    .mylogin .topcontent span {color: #883535;}
    .mylogin .bottomcontent {font-weight:bold;font-size:20px;line-height: 30px;width:384px;margin: 50px auto;}
    .mylogin .bottomcontent a{color: #333333;text-decoration: none;}
    .mylogin .closeimg {position: absolute;top: 220px;right: 14px;width: 43px;height: 43px;background-image: url("images/login/cha.png");}
  </style>
  <div class="myloginmask"></div>


  <script type="text/javascript">
    $(function(){
      $('.m2-pwdConfirm-auto b').click(function(){
        $('.m2-pwdConfirm-auto,.m2-pwdBg').hide();
      })
    })
  </script>
  <script type="text/javascript">
    $(function(){
      $.post("mydatetime.html",{mytime:''},function(t){
        $("#mytime").html(t);
      });
    })
  </script>
  <script type="text/javascript">
    function infoDialogClose(){
      $('.m2-pwdConfirm-close').click(function(){
        $('.m2-pwdBg').hide();
        $('.m2-pwdConfirm').hide();
        $('.m2-pwdConfirm-con').text('');
        $('#dialog-status').removeClass('m2-pwdConfirm-ture');
        $('#dialog-status').removeClass('m2-pwdConfirm-false');
        $(this).unbind();
      });
    }
    function showInfoDialog(text,status,func,callback){
      $('.m2-pwdConfirm-con').text(text);
      if(status){
        $('#dialog-status').addClass('m2-pwdConfirm-ture');
      }else{
        $('#dialog-status').addClass('m2-pwdConfirm-false');
      }
      $('.m2-pwdBg').show();
      $('.m2-pwdConfirm').show();
      if(typeof(callback)=='function'){
        $('.m2-pwdConfirm-close').click(callback);
      }
      infoDialogClose();
      if(typeof(func)=='function'){
        func();
      }
//			$(".mylogin").show();
    }
    function showLoginInfoDialog(text,status,func,callback){
      $('.m2-pwdConfirm-con').text(text);
      if(status){
        $('#dialog-status').addClass('m2-pwdConfirm-ture');
      }else{
        $('#dialog-status').addClass('m2-pwdConfirm-false');
      }
      $('.m2-pwdBg').show();
      $('.m2-pwdConfirm').show();
      if(status){
        $('.m2-pwdConfirm').hide();
        $('.m2-pwdConfirm-auto').show();
      }
      if(typeof(callback)=='function'){
        $('.m2-pwdConfirm-close').click(callback);
      }
      infoDialogClose();
      if(typeof(func)=='function'){
        func();
      }
    }
    function showLoginDialog(text,status){
      $("#nowcoin").html(text.allcoin);
      $("#overcoin").html(text.overcoin);
      $("#user").html(text.userName);
      $(".mylogin").show();
      $(".myloginmask").show();
    }
    $(".mylogin .closeimg").click(function(){
      $(".mylogin").hide();
      $(".myloginmask").hide();
      window.location.href="/Index";
    })
  </script>
  <!--公共提示框end-->
  <!-- 右侧边栏start -->
  <!-- 右侧登录窗口 -->
</head>
<body>
<!--右侧登录框-->
<div class="mo2-indexLoginbox" id="right-fix">
  <!-- 登录注册start -->
  <div class="mo2-indLogreg" >				<div class="mo2-indLogtab">
    <ul>
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
        <img class="mo2-indRegcode" src="Index-VerifyCode.png" onClick="document.getElementById('reverifyCodeRight').src='Index-VerifyCode.png?time='+Math.random();void(0);" id="reverifyCodeRight"  alt="点击刷新验证码">
        <span class="mo2-indReg-refresh">看不清？换一张</span>
        <b class="mo2-indLogwarRight"><em class="mo2-indlogWar-arr"></em><u></u></b>
      </div>

      <div class="mo2-indRegagree">
        <i class="mo2-indReg-sel"></i><span>我已阅读并同意</span><b>《爱钱帮注册服务协议》</b>
      </div>
    </div>
    <!-- 注册end -->

    <!-- 注册step2 end -->

    <!-- 登录start -->
    <div class="mo2-indLogboxRight">
      <div class="mo2-indLogitem mo2-indLogitem-use" style="margin-bottom:9px;">
        <i class="mo2-indLogicon-use"></i><input class="mo2-indIpt-all" type="text" id="user_nameRight" placeholder="用户名/手机号">
        <b class="mo2-indLogwar" id="w_username"><em class="mo2-indlogWar-arr"></em><u id="r_usernameRight"></u></b>
      </div>
      <div class="mo2-indLogitem mo2-indLogitem-psw" style="margin-bottom:9px;">
        <i class="mo2-indLogicon-psw"></i><input class="mo2-indIpt-all m2-ind-banPsw" maxlength="20" id="pass_wordRight" type="password" id="pass_wordRight" placeholder="输入登录密码">
        <b class="mo2-indLogwar" id="w_password"><em class="mo2-indlogWar-arr"></em><u id="r_passwordRight"></u></b>
      </div>
      <div class="mo2-indLog-code" style="display:none;margin-bottom:8px;">
        <div class="mo2-indLogcod-lef">
          <i class="mo2-indLogicon-psw"></i>
          <input type="text" id="vcodeRight" placeholder="验证码"></div>
        <div class="mo2-indLogcod-rig"><img src="Index-VerifyCode.png" onClick="document.getElementById('reverifyCode').src='Index-VerifyCode.png?time='+Math.random();void(0);" alt="点击刷新验证码"></div>
      </div>
      <div class="mo2-indReg-btn">
        <a class="mo2-indRegbtn-able" onclick="loginRight();">登录</a>
      </div>
    </div>
    <!-- 登录end -->
  </div>
  <!-- 登录注册end -->
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

  })


</script>


<script>
  //登录方法
  function loginRight(){
    var p = makevar(['user_nameRight','pass_wordRight','vcodeRight']);
    var canSubmit = true;
    if($('#user_nameRight').val()==""){
      $('#r_usernameRight').html('用户名不能为空！');
      $('#w_usernameRight').show();
    }else if($('#user_nameRight').val().lenght <6){
      $('#r_usernameRight').html('用户名长度错误！');
      $('#w_usernameRight').show();
    }else {
      if ($('#pass_wordRight').val() == ""){
        $('#r_passwordRight').html('密码不能为空！');
        $('#w_passwordRight').show();
      }else if ($('#pass_wordRight').val().length < 6 || $('#pass_wordRight').val().length > 20){
        $('#r_passwordRight').html('密码长度错误！');
        $('#w_passwordRight').show();
      }else {
        $('#r_usernameRight').html('');
        $('#w_usernameRight').hide();
        $('#r_passwordRight').html('');
        $('#w_passwordRight').hide();
        postData("/Home-Login-index_loginRight",p,function(d){
          if(d.status==0){
            $('#r_usernameRight').html(d.message);
            $('#w_usernameRight').show();
          }else if(d.status==1){
            window.location.reload();
          }else if(d.status==2){
            window.location.href = "dashiji_show.html#15319.html";
          }
        });
      }
    }
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

  </div>
</div>


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
<div class="m2-regist-main">
  <div class="m2-regist-center">
    <div class="m2-loginBox">
      <div class="m2-loginArea">
        <div class="m2-loginArea-rig">
          <div class="m2-loginArea-rigHead" >
            <h2>管理员登录</h2>

          </div>
          <form class="m2-login-form" action="#">
            <div class="m2-loginForm-item m2-login-username">
              <span><i></i></span>
              <input type="text" id="username" placeholder="用户名">
              <b id="userwarn"></b>
            </div>
            <div class="m2-loginForm-item m2-login-pwd" style="margin:25px 0 0 0;">
              <span><i></i></span>
              <input type="password" id="password" placeholder="密码">
              <b id="passwarn"></b>
            </div>
           <%-- <div class="m2-login-code"  style="display:none;">
              <div class="m2-loginForm-item" style="display:inline-block;float:left;width:182px;">
                <span><i></i></span>
                <input type="text" id="vcode" placeholder="验证码">

                <b></b>
              </div>
              <img src="Index-VerifyCode.png" onClick="document.getElementById('reverifyCode').src='Index-VerifyCode.png?time='+Math.random();void(0);" id="reverifyCode" alt="">
            </div>--%>
            <div class="m2-login-forget">
              <p class="alarmnew" style="font-weight: bolder;text-align: left;position: absolute;color:red;width:200px;height: 24px;line-height: 24px;margin:-4px 0;"></p>
            </div>
            <input type="hidden" name="__hash__" value="2ed71d5dc3b3d172b09f15e7631d021f_ed4f61a6dca2ed264a7bf9ceb8d3e04b" /></form>
          <div class="m2-login-submit">
            <a href="javascript:;" onclick="login();" class="m2-loginBtn">确认登录</a>
          </div>

        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
  //codeShow();
  //显示验证码
  function codeShow(){
    $('.m2-login-code').show();
  }
</script>
</body>
</html>

<script type="text/javascript">
  $(function(){
    $('#account,#redbag,#percentage,#message,#m2-commonRight').click(function(){
      $("#user_name").focus();
    })
  })

</script>
<script type="text/javascript">
  function login(){

    var p = makevar(['username','password']);
    var canSubmit = true;
    $(".alarmnew").html("");
    if(typeof p.username=="undefined"){

      $(".alarmnew").html("用户名不能为空");
      return false;
    }
    if(typeof p.password=="undefined" ||　typeof p.password==null || p.password==""){

      $(".alarmnew").html("密码不能为空");
      return false;
    }

    if(typeof p.vcode=="undefined"){

    }
    if(canSubmit!==true) return false;

    postData("adminaction",p,function(d){
      $(".alarmnew").hide();
      //d.url = decodeURIComponent(d.url);
      if(d.status==3){
        alert("用户名不存在,1秒后刷新页面");
        setTimeout(function(){
          window.location.href=d.url;
        },1000);
      }else if(d.status==2){
        alert("密码错误，1秒后刷新页面");

        setTimeout(function(){
          window.location.href=d.url;
        },1000);
      }else if(d.status==1){
        alert("登陆成功，1秒后进入后台页面");
        setTimeout(function(){
          window.location.href=d.url;
        },1000);
      }
    });
  }
  function oklinklogin(){
    window.open('/thirdparty-oklink-oauth_getcode');
  }
  $(document).keydown(function(e){
    if(e.keyCode == 13) {
      login();
    }
  });
</script>
<script type="text/javascript">
  $(function(){
    var docTop=$(document).height()-$(window).height();
    if (docTop>0) {
      $(document).scrollTop(docTop/2);
    }
  });
</script>
<script type="text/javascript">
  $('.m2-login-actLink i').click(function(){
    $('.m2-loginEwm1').toggle();
    $('.m2-loginEwm2').toggle();
  });
</script>
