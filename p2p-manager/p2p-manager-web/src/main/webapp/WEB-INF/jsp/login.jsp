<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/9/7
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">

  <meta name="keywords" content="网贷平台,网络借贷，网络赚钱项目,理财产品">
  <meta name="description" content="爱钱的网贷平台为您提供网络赚钱项目；为此相继推出了许多新的理财产品，在为您创造高收益的同时也优化了理财产品模式。网络借贷，就选爱钱帮。">
  <title>会员登录丨理财产品，为您赚钱短期理财的互联网金融理财投资平台-爱钱帮</title>

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
    .mylogin {position:   fixed;top: 50%;left: 50%;margin-top: -346px;margin-left: -260px;width: 520px;height: 496px;background-image: url("statics/home2/images/login/login_info.png");background-repeat: no-repeat;z-index: 1000;display: none;}
    .mylogin .topcontent {font-weight:bold;text-align: center;color: #666666;font-size: 18px;padding-top: 284px;line-height: 36px;}
    .mylogin .topcontent span {color: #883535;}
    .mylogin .bottomcontent {font-weight:bold;font-size:20px;line-height: 30px;width:384px;margin: 50px auto;}
    .mylogin .bottomcontent a{color: #333333;text-decoration: none;}
    .mylogin .closeimg {position: absolute;top: 220px;right: 14px;width: 43px;height: 43px;background-image: url("images/login/cha.png");}
  </style>
  <div class="myloginmask"></div>
  <div class="mylogin">
    <div class="closeimg"></div>
    <div class="topcontent">
      <p><span id="user"></span>，欢迎回来！</p>
      <p>钱帮币<span id="nowcoin"></span>个，<span id="mytime"></span>即将到期<span id="overcoin"></span>个</p>
    </div>
    <div class="bottomcontent">
      <a href="usercenter-rewardcontrol-iqbrule"> 查看规则>></a>
      <a href="usercenter-rewardcontrol-coin" style="float:right">钱帮币兑换宝物>></a>
    </div>
  </div>

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
          <div></div>            	<div class="toAbs">
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
                <img id="ivrSecurityCodeImg" onclick="getCode()" src="Index-VerifyCode.png" alt="验证码" title="点击更新验证码">
              </div>
            </div>
            <div class="m2-comRigtel-rig">
              <span  onclick='callback()'>免费<br>拨打</span>
            </div>
          </div>
        </li>
        <li class="m2-comRigli m2-comRigli-qq" style="position:relative;">
          <i class="m2-comRigli-icon" style="z-index:100;"></i>
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
            <!-- 论坛导航栏全部关闭 -->
            <!--<li class="m2-commonTop-btn" style="display: none" id="bbs"><a id="bbslogin" target="_blank">论坛</a></li>-->
            <li class="m2-commonTop-btn"><a href="register" target="_blank">注册</a></li>
            <li class="m2-commonTop-btn"><a href="login" target="_blank" style="border-right:none;">登录</a></li>
            <li class="m2-commonTop-btn"><a href="company_finance.html" id="cfpage" style="border-right:none;width: 50px;">企业理财</a></li>                </ul>
        </div>
        <div class="m2-commonTop-app" onclick='window.open("/appdownload.html")' style="cursor:pointer;">
          <a href="" class="m2-commonTop-and"></a>
          <a href="" class="m2-commonTop-ios"></a>
          <span>app下载入口</span>
        </div>
      </div>
    </div>
  </div>
  <!--  用户登陆后，（部分用户）导航栏显示论坛选项、现在全部关闭
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
         var _uid = Number();
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
  -->
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
        <ul class="m2-commonNavul-fir" data_page='onepage'>
          <li class="m2-commonNav-fir"><a href="index" id="onepage">首页</a></li>
          <li class="m2-commonNav-fir"><a href="borrowaction" id="jieqian">我要借钱</a></li>
          <li class="m2-commonNav-fir"><a href="touzi" id="twopage">我要投资</a></li>
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
  <div class="m2-regist-main">
    <div class="m2-regist-center">
      <div class="m2-loginBox">
        <div class="m2-loginArea">
          <div class="m2-loginArea-lef">
            <a class="m2-login-actLink" href="javascript:void(0);"><img class="m2-loginEwm1" src="images/m2-loginEwm1.jpg" alt=""><img class="m2-loginEwm2" src="images/m2-loginEwm2.jpg" alt="" style="display:none;"><i></i></a>
            <p><span>了解爱钱帮精选活动，请进&nbsp;</span><a class="m2-login-moreLink" target="_blank" href="licaiwang_zhuantihuodong.html">活动专区&raquo;</a></p>
          </div>
          <div class="m2-loginArea-rig">
            <div class="m2-loginArea-rigHead" >
              <h2>会员登录</h2>
              <p>
                <a href="register"><i></i>立即注册</a>
              </p>
            </div>
            <form class="m2-login-form" action="">
              <div class="m2-loginForm-item m2-login-username">
                <span><i></i></span>
                <input type="text" id="phone" placeholder="手机号">
                <b id="userwarn"></b>
              </div>
              <div class="m2-loginForm-item m2-login-pwd" style="margin:25px 0 0 0;">
                <span><i></i></span>
                <input type="password" id="password" placeholder="密码">
                <b id="passwarn"></b>
              </div>
              <div class="m2-login-code"  style="display:none;">
                <img src="Index-VerifyCode.png" onClick="document.getElementById('reverifyCode').src='Index-VerifyCode.png?time='+Math.random();void(0);" id="reverifyCode" alt="">
              </div>
              <div class="m2-login-forget">
                <p class="alarmnew" style="font-weight: bolder;text-align: left;position: absolute;color:red;width:200px;height: 24px;line-height: 24px;margin:-4px 0;"></p>
                <a href="forget" class="m2-loginForget">忘记密码？</a>
              </div>
              <input type="hidden" name="__hash__" value="2ed71d5dc3b3d172b09f15e7631d021f_ed4f61a6dca2ed264a7bf9ceb8d3e04b" /></form>
            <div class="m2-login-submit">
              <a href="javascript:;" onclick="login();" class="m2-loginBtn">确认登录</a>
            </div>

          </div>
        </div>
        <p class="m2-loginBottontips">为了您的数据安全，我们采用了SSL传输方式，256位SGC加密保护!</p>
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
      $("#phone").focus();
    })
  })

</script>
<script type="text/javascript">
  function login(){
    var p = makevar(['phone','password']);
    var canSubmit = true;
    $(".alarmnew").html("");
    if(typeof p.phone=="undefined"){

      $(".alarmnew").html("用户名不能为空");
      return false;
    }
    if(typeof p.password=="undefined" ||　typeof p.password==null || p.password==""){

      $(".alarmnew").html("密码不能为空");
      return false;
    }

    if(canSubmit!==true) return false;
    postData("ULogin",p,function(d){
		  $(".alarmnew").hide();
      //d.url = decodeURIComponent(d.url);
      if(d.status==3){
        showInfoDialog(d.message,1);
        setTimeout(function(){
          window.location.href=d.url;
        },3000);
      }else if(d.status==2){
        showInfoDialog(d.comments,1);
        setTimeout(function(){
          window.location.href=d.url;
        },3000);
      }else if(d.status==1){
       showLoginInfoDialog(d.comments,1);
        setTimeout(function(){
          window.location.href=d.url;
        },3000);
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
