<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/9/6
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">

  <meta name="keywords" content="高收益理财产品,理财投资,网络投资理财平台,网贷理财,互联网金融,投资理财平台,投资理财,赚钱,小额投资理财,如何投资理财,投资理财知识,投资理财,北京p2p理财">
  <meta name="description" content="爱钱帮可以为您赚钱的网络投资理财平台，为投资理财用户和贷款用户两端提供公平、透明、安全、高效的网贷理财服务，爱钱帮互联网金融中网贷投资理财平台的最好的选择。">
  <title>爱钱帮_为您赚钱和提供高收益理财产品的理财投资投资理财平台</title>

  <!--[if lt IE 9]>
  <script src="statics/newcommon/js/html5shiv.js"></script>
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
    .mylogin .closeimg {position: absolute;top: 220px;right: 14px;width: 43px;height: 43px;background-image: url("statics/home2/images/login/cha.png");}
  </style>
  <div class="myloginmask"></div>
  <div class="mylogin">
    <div class="closeimg"></div>
    <div class="topcontent">
      <p><span id="user"></span>，欢迎回来！</p>
      <p>钱帮币<span id="nowcoin"></span>个，<span id="mytime"></span>即将到期<span id="overcoin"></span>个</p>
    </div>
    <div class="bottomcontent">
      <a href="#"> 查看规则>></a>
      <a href="#" style="float:right">钱帮币兑换宝物>></a>
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
</head>
<body>

  <!--右侧悬浮条-->
  <jsp:include page="index-right.jsp"></jsp:include>


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
          <i class="m2-commonEwmicon" onclick='window.open("http://weibo.com/iqianbang")'></i>
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
            <div class="m2-commonTop-link">
              <ul>
                <li class="m2-commonTop-loged">
                  <span class="m2-commonTop-userName"><a href="usercenter">您好,${sessionScope.user.phone}</a></span>
                </li>
                <li class="m2-commonTop-btn"><a href="UQuit" style="border-right:none;">退出</a></li>
              </ul>
            </div>
        </c:otherwise>
        </c:choose>
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

<!-- bannerStart -->
<div class="m2-banner-box">
  <div class="m2-bd">
    <ul id="m2-ul">
      <li style="background:#249FEA;">
        <div class="m-width">
          <a  href="#" target="_blank"><img src="uploadData/ad/20160901201933885.png" title="banner-PC" alt="banner-PC"/></a>
        </div>
      </li><li style="background:#4B89DC;">
      <div class="m-width">
        <a  href="zhuanti_show.html#/market-RiskAppraisal-index" target="_blank"><img src="uploadData/ad/20160816173110355.png" title="风险评测" alt="风险评测"/></a>
      </div>
    </li><li style="background:#DC3C3E;">
      <div class="m-width">
        <a  href="#" target="_blank"><img src="uploadData/ad/20160808201936672.png" title="新人福利" alt="新人福利"/></a>
      </div>
    </li><li style="background:#8603ED;">
      <div class="m-width">
        <a  href="usercenter-invitefriends.html" target="_blank"><img src="uploadData/ad/2016080820183390.png" title="爱钱帮邀请好友一起赚" alt="爱钱帮邀请好友一起赚"/></a>
      </div>
    </li><li style="background:#8293FF;">
      <div class="m-width">
        <a  href="company_finance.html" target="_blank"><img src="uploadData/ad/20160810194657369.png" title="企业理财" alt="企业理财"/></a>
      </div>
    </li><li style="background:#EC711E;">
      <div class="m-width">
        <a  href="#" target="_blank"><img src="uploadData/ad/20160808200346417.png" title="爱钱帮荣膺中国互联网金融协会首批会员" alt="爱钱帮荣膺中国互联网金融协会首批会员"/></a>
      </div>
    </li><li style="background:#0685CE;">
      <div class="m-width">
        <a  href="#" target="_blank"><img src="uploadData/ad/20160830204157918.png" title="徽商银行直接存管" alt="徽商银行直接存管"/></a>
      </div>
    </li><li style="background:#62B7F7;">
      <div class="m-width">
        <a  href="#" target="_blank"><img src="uploadData/ad/20160808200310378.png" title="盛大资本" alt="盛大资本"/></a>
      </div>
    </li>        </ul>
  </div>
  <!-- 自动调整轮转图片的显示大小（宽度） -->
  <script type="text/javascript">
    window.onresize=function(){
      var oM2Ul=document.getElementById('m2-ul');
      oM2Ul.style.width=document.documentElement.clientWidth+'px';
    }
  </script>
  <!-- 自动调整轮转图片的显示大小（宽度） -->
  <div class="m2-banner-btn">
    <a style="display:none;" class="m2-prev" href="javascript:void(0);"></a>
    <a style="display:none;" class="m2-next" href="javascript:void(0);"></a>
    <div class="m2-hd"><div class="m2-hdBg"></div><ul></ul></div>
  </div>
</div>

<!--新用户完成注册-->
<div class="comregist" id="newregister" style="display:none;">
  <div class="comregistmask z100"></div>
  <div class="comregistbox z101">
    <div class="comregistbox_b">
      <p></p>
      <div>
        <img src="images/december-expermoney/regist.png" alt="恭喜您注册爱钱帮，20000元体验金已经发送您的账户">
        <span class="incentivebox_bp1">恭喜您注册爱钱帮，<span class="red">20000元</span>体验金已经发送您的账户</span>
        <p class="comregistbox_bp2">您可以去体验金项目进行投资</p>
      </div>
      <a href="tiyanjin.html">去投资</a>
      <div class="close" id="newregister-close"><img src="images/december-expermoney/close.png" alt="点击取消"></div>
    </div>
  </div>
</div>
<!--新用户完成注册-->

<script type="text/javascript">

  $(function(){
    $("#user_name").focus();
    //隐藏弹窗(体验金弹框)
    $("#newregister-close").click(function(){
      $("#newregister").hide();
    });
  });
  $(document).ready(function () {
    $('.m2-banner-box').mouseenter(function () {
      $('.m2-prev,.m2-next').fadeIn(200);
    });
    $('.m2-banner-box').mouseleave(function () {
      $('.m2-prev,.m2-next').fadeOut(200);
    })
    //焦点图轮播
    $(".prev,.next").hover(function () {
      $(this).stop(true, false).fadeTo("show", 0.9);
    }, function () {
      $(this).stop(true, false).fadeTo("show", 0.4);
    });
    $(".m2-banner-box").slide({
      titCell: ".m2-hd ul",
      mainCell: ".m2-bd ul",
      effect: "fold",
      interTime: 3500,
      delayTime: 500,
      autoPlay: true,
      autoPage: true,
      trigger: "mouseover"
    });
  });</script>
<!-- bannerEnd -->
<!-- 猴子图片下线  -->
<!--<div class="monkey">

    	<div class="monkey-bac"></div>
    </div>-->
<div class="m2-indexMain" style="width: 1000px;margin: 0 auto;position:relative;">

  <div class="mo2-indexStep">
    <ul>
      <li class="mo2-indSteite  mo2-indSteite1">
        <a href="anquanlicai_baozhang" target="_blank">
          <div class="mo2-indStelef"><i class="mo2-indSteicon1"></i></div>
          <div class="mo-indSterig">
            <p class="mo2-indSte-big">安全可靠</p>
            <p class="mo2-indSte-sma">资金银行存管<br>银行级风控</p>
          </div>
        </a>
      </li>
      <li class="mo2-indSteite  mo2-indSteite2">
        <a href="touzi?pageNo=1" target="_blank">
          <div class="mo2-indStelef"><i class="mo2-indSteicon2"></i></div>
          <div class="mo-indSterig">
            <p class="mo2-indSte-big">安全收益</p>
            <p class="mo2-indSte-sma">稳健预期年化收益</p>
          </div>
        </a>
      </li>
      <li class="mo2-indSteite  mo2-indSteite3">
        <a href="touzi?pageNo=1" target="_blank">
          <div class="mo2-indStelef"><i class="mo2-indSteicon3"></i></div>
          <div class="mo-indSterig">
            <p class="mo2-indSte-big">灵活方便</p>
            <p class="mo2-indSte-sma">百元起投 提现秒到</p>
          </div>
        </a>
      </li>
      <li class="mo2-indSteite  mo2-indSteite4" style="width:174px;">
        <a href="guanyu_aiqianbang" target="_blank">
          <div class="mo2-indStelef"><i class="mo2-indSteicon4"></i></div>
          <div class="mo-indSterig">
            <p class="mo2-indSte-big">实力雄厚</p>
            <p class="mo2-indSte-sma">盛大资本战略投资<br></p>
          </div>
        </a>
      </li>
    </ul>
  </div>

  <!-- 滚动公告start -->
  <div class="mo2-notice">
    <div id="upRoll1" class="upRoll">
      <div id="holder1">
        <ul class="list-ul1">
          <li>
            <a href="dashiji_show.html#16013.html">
              <span class="mo2-rollTit">【平台公告】关于部分银行升级“快捷充值”功能的公告<b>&nbsp;&nbsp;<font color="red">new</font></b></span>
              <span class="mo2-rollTiM">2016-08-24</span>
            </a>
          </li><li>
          <a href="dashiji_show.html#16009.html">
            <span class="mo2-rollTit">爱钱帮CEO王吉涛出席全球互联网创新金融峰会</span>
            <span class="mo2-rollTiM">2016-08-19</span>
          </a>
        </li><li>
          <a href="dashiji_show.html#16005.html">
            <span class="mo2-rollTit">【平台公告】关于网络优化的公告</span>
            <span class="mo2-rollTiM">2016-08-18</span>
          </a>
        </li>            </ul>
      </div>
    </div>
    <div class="mo2-notMore">
      <a href="/aiqianbang_licaiwang_gonggao">更多公告</a>
    </div>
  </div>
  <script type="text/javascript">
    function marquee(height,speed,delay){
      var scrollT;
      var pause = false;
      var ScrollBox = document.getElementById("upRoll1");
      if(document.getElementById("holder1").offsetHeight <= height) return;
      var _tmp = ScrollBox.innerHTML.replace('holder1', 'holder')
      ScrollBox.innerHTML += _tmp;
      ScrollBox.onmouseover = function(){pause = true}
      ScrollBox.onmouseout = function(){pause = false}
      ScrollBox.scrollTop = 0;
      function start(){
        scrollT = setInterval(scrolling,speed);
        if(!pause) ScrollBox.scrollTop += 2;
      }
      function scrolling(){
        if(ScrollBox.scrollTop % height != 0){
          ScrollBox.scrollTop += 2;
          if(ScrollBox.scrollTop >= ScrollBox.scrollHeight/2) ScrollBox.scrollTop = 0;
        }
        else{
          clearInterval(scrollT);
          setTimeout(start,delay);
        }
      }
      setTimeout(start,delay);
    }
    marquee(42,30,3000);
  </script>
  <!-- 滚动公告end -->
  <!-- 新手项目start -->
    <div class="mo2-indexSingle">


    <script type="text/javascript">
      //倒计时
      var timeLeftnewuser = 0;
      var newuserstatus = Number('');
      function timeDownwbq() {
        if (timeLeftnewuser < 86400 & timeLeftnewuser > 0) {
          var minLeft1 = Number(parseInt(timeLeftnewuser % 3600 / 60 / 10)).toString();//分钟第一位
          var minLeft2 = Number(parseInt(timeLeftnewuser % 3600 / 60 % 10)).toString();//分钟数第二位
          var secLeft1 = Number(parseInt(timeLeftnewuser % 3600 % 60 / 10)).toString(); //秒第一位
          var secLeft2 = Number(parseInt(timeLeftnewuser % 10)).toString();//秒第二位
          $('.mo2-wbqDay').hide(); //隐藏天
          $('.mo2-wbqSec').show(); //显示秒
          $('.mo2-wbqHou').children('i').html(parseInt(timeLeftnewuser / 3600)); //小时
          $('.mo2-wbqMin').children('i').html(minLeft1 + minLeft2); //分钟
          $('.mo2-wbqSec').children('i').html(secLeft1 + secLeft2); //秒
          timeLeftnewuser--;
          setTimeout("timeDownwbq()", 1000); //设置1秒以后执行一次本函数
        }
        else if (timeLeftnewuser >= 86400) {
          var houLeft1 = Number(parseInt(timeLeftnewuser % 86400 / 3600 / 10)).toString();//小时第一位
          var houLeft2 = Number(parseInt(timeLeftnewuser % 86400 / 3600 % 10)).toString();//小时数第二位
          var minLeft1 = Number(parseInt(timeLeftnewuser % 86400 % 3600 / 60 / 10)).toString();//分钟第一位
          var minLeft2 = Number(parseInt(timeLeftnewuser % 86400 % 3600 / 60 % 10)).toString();//分钟数第二位
          $('.mo2-wbqDay').show(); //隐藏天
          $('.mo2-wbqSec').hide(); //显示秒
          $('.mo2-wbqDay').children('i').html(parseInt(timeLeftnewuser / 86400)); //天
          $('.mo2-wbqHou').children('i').html(houLeft1 + houLeft2); //小时
          $('.mo2-wbqMin').children('i').html(minLeft1 + minLeft2); //分钟
          timeLeftnewuser--;
          setTimeout("timeDownwbq()", 1000); //设置1秒以后执行一次本函数
        }
        else if (timeLeftnewuser == 0) {
          $('.mo2-wbqDay').hide(); //隐藏天
          $('.mo2-wbqSec').show(); //显示秒
          $('.mo2-wbqHou').children('i').html(0); //小时
          $('.mo2-wbqMin').children('i').html('00'); //分钟
          $('.mo2-wbqSec').children('i').html('00'); //秒

          $('.mo2-indWbqtim').hide();
          $('.mo2-wbqProc').show();
          if (newuserstatus == 1) {
            $('.mo2-wbqBtn a').html('已满额');
            $('.mo2-wbqBtn a').addClass('mo2-btnGery');
            $('.mo2-wbqProcess b u').css('color','#ccc');
            $('.mo2-wbqProcess b i').css('background-color','#ccc');
            $('.mo2-wbqProcess b u em').css('background','url(images/m2-indexIcon.png) no-repeat -288px -30px');
          } else {
            $('.mo2-wbqBtn a').html('立即投资');
            $('.mo2-wbqBtn a').removeClass('mo2-btnGery');
          }
        }

      }

      timeDownwbq();

    </script>
    <!-- 新手项目end -->
    <!-- 私人定期start -->

  </div>
  <script type="text/javascript">
    //倒计时
    var timeLeftpri = 0;
    var pristatus = Number('3');
    function timeDownpri() {
      if (timeLeftpri < 86400 & timeLeftpri > 0) {
        var minLeft1 = Number(parseInt(timeLeftpri % 3600 / 60 / 10)).toString();//分钟第一位
        var minLeft2 = Number(parseInt(timeLeftpri % 3600 / 60 % 10)).toString();//分钟数第二位
        var secLeft1 = Number(parseInt(timeLeftpri % 3600 % 60 / 10)).toString(); //秒第一位
        var secLeft2 = Number(parseInt(timeLeftpri % 10)).toString();//秒第二位
        $('.mo2-priDay').hide(); //隐藏天
        $('.mo2-priSec').show(); //显示秒
        $('.mo2-priHou').children('i').html(parseInt(timeLeftpri / 3600)); //小时
        $('.mo2-priMin').children('i').html(minLeft1 + minLeft2); //分钟
        $('.mo2-priSec').children('i').html(secLeft1 + secLeft2); //秒
        timeLeftpri--;
        setTimeout("timeDownpri()", 1000); //设置1秒以后执行一次本函数
      }
      else if (timeLeftpri >= 86400) {
        var houLeft1 = Number(parseInt(timeLeftpri % 86400 / 3600 / 10)).toString();//小时第一位
        var houLeft2 = Number(parseInt(timeLeftpri % 86400 / 3600 % 10)).toString();//小时数第二位
        var minLeft1 = Number(parseInt(timeLeftpri % 86400 % 3600 / 60 / 10)).toString();//分钟第一位
        var minLeft2 = Number(parseInt(timeLeftpri % 86400 % 3600 / 60 % 10)).toString();//分钟数第二位
        $('.mo2-priDay').show(); //隐藏天
        $('.mo2-priSec').hide(); //显示秒
        $('.mo2-priDay').children('i').html(parseInt(timeLeftpri / 86400)); //天
        $('.mo2-priHou').children('i').html(houLeft1 + houLeft2); //小时
        $('.mo2-priMin').children('i').html(minLeft1 + minLeft2); //分钟
        timeLeftpri--;
        setTimeout("timeDownpri()", 1000); //设置1秒以后执行一次本函数
      }
      else if (timeLeftpri == 0) {
        $('.mo2-priDay').hide(); //隐藏天
        $('.mo2-priSec').show(); //显示秒
        $('.mo2-priHou').children('i').html(0); //小时
        $('.mo2-priMin').children('i').html('00'); //分钟
        $('.mo2-priSec').children('i').html('00'); //秒

        $('.mo2-indPritim').hide();
        $('.mo2-priProc').show();
        if (pristatus == 2||pristatus == 7||pristatus == 11) {
          $('.mo2-priBtn a').html('已满额');
          $('.mo2-priBtn a').addClass('mo2-btnGery');
          $('.mo2-priProcess b u').css('color','#ccc');
          $('.mo2-priProcess b i').css('background-color','#ccc');
          $('.mo2-priProcess b u em').css('background','url(statics/home2/images/m2-indexIcon.png) no-repeat -288px -30px');
        } else {
          $('.mo2-priBtn a').html('立即投资');
          $('.mo2-priBtn a').removeClass('mo2-btnGery');
        }
      }

    }

    timeDownpri();


    //活动加息
    $(".huodongjiaxi").mouseover(function(){
      $(this).parent().find(".jiaxishow").show();
    })
    $(".huodongjiaxi").mouseout(function(){
      $(this).parent().find(".jiaxishow").hide();
    })
  </script>
  <!-- 私人定期end -->
  <!-- 爱车贷start -->
  <div class="mo2-indCar-con">
    <h2 class="mo2-indCar-head">
      <i class="mo2-indProtop-sma tobig">投资理财</i>
      <a class="mo2-indCarhead-a1" href="touzi?pageNo=1"></a>
      <span>汽车金融，垂直细分新领域</span>
      <a class="mo2-indCarhead-a2" href="touzi?pageNo=1">查看全部</a>
    </h2>
    <div class="mo2-indCarlist-prev"></div>
    <div class="mo2-indCarlist-next"></div>
    <div class="mo2-indCarbox">
      <ul class="mo2-indCar">
        <li class="mo2-indCarlist mo2-indCarlist-ing">                <div class="mo2-indCartop">
          <div class="mo2-indCartop-img">
            <i class="mo2-listNewicon"></i>                        <img src=uploadData/UserBorrowData/182015-20160902132425642.jpg alt="爱车贷-雪佛兰迈锐宝-XAA067" title="爱车贷-雪佛兰迈锐宝-XAA067" onclick="window.open('duanqi_licai_chanpin-moxOeTwTZaOw8TY79g.html')"/>
          </div>
          <div class="mo2-indCartop-rig">
            <ul>
              <li class="mo2-indCar-tit"><a href="chanpin.html#-moxOeTwTZaOw8TY79g.html" target="_blank" title="爱车贷-雪佛兰迈锐宝-XAA067">爱车贷-雪佛兰迈锐宝-XAA067</a></li>
              <li class="mo2-indCar-msg">
                <span>预期年化收益率：</span>
                                <span class="huodongjiaxi">
                              																				8%+1%								</span>
                <p style="margin-top:0;margin-left:60px;" class="jiaxishow">
                  活动加息1%																		</p>
              </li>
              <li class="mo2-indCar-msg">
                <span>项目期限：</span>
                <span>1个月</span>
              </li>
              <li class="mo2-indCar-msg">
                <span>项目余额：</span>
                <span>4.99万</span>
              </li>
            </ul>
          </div>
        </div>
          <div class="mo2-indCarmid">
            <div class="mo2-carProc">
                            <span class="mo2-carProcess">
                                <span class="mo2-carProcess-tit">正在募集：</span>
                                <b>
                                  <i style="width:42%;"></i>
                                  <u style="left:42%;">
                                    42%
                                    <em></em>
                                  </u>
                                </b>
                            </span>
            </div>
          </div>                <div class="mo2-indCarbot">
            <a href="chanpin.html#-moxOeTwTZaOw8TY79g.html" target="_blank">立即投资</a>                </div>
        </li>                    <li class="mo2-indCarlist mo2-indCarlist-ing">                <div class="mo2-indCartop">
        <div class="mo2-indCartop-img">
          <img src=uploadData/UserBorrowData/200528-201609011135068334.jpg alt="【新手标】爱车贷-丰田普瑞维亚-SX047" title="【新手标】爱车贷-丰田普瑞维亚-SX047" onclick="window.open('duanqi_licai_chanpin-md0YeDEUbvew8TU68g.html')"/>
        </div>
        <div class="mo2-indCartop-rig">
          <ul>
            <li class="mo2-indCar-tit"><a href="chanpin.html#-md0YeDEUbvew8TU68g.html" target="_blank" title="【新手标】爱车贷-丰田普瑞维亚-SX047">【新手标】爱车贷-丰田普瑞维亚-SX047</a></li>
            <li class="mo2-indCar-msg">
              <span>预期年化收益率：</span>
                                <span class="huodongjiaxi">
                              																				9%+1%								</span>
              <p style="margin-top:0;margin-left:60px;" class="jiaxishow">
                活动加息1%																		</p>
            </li>
            <li class="mo2-indCar-msg">
              <span>项目期限：</span>
              <span>2个月</span>
            </li>
            <li class="mo2-indCar-msg">
              <span>项目余额：</span>
              <span>200元</span>
            </li>
          </ul>
        </div>
      </div>
        <div class="mo2-indCarmid">
          <div class="mo2-carProc">
                            <span class="mo2-carProcess">
                                <span class="mo2-carProcess-tit">正在募集：</span>
                                <b>
                                  <i style="width:99%;"></i>
                                  <u style="left:99%;">
                                    99%
                                    <em></em>
                                  </u>
                                </b>
                            </span>
          </div>
        </div>                <div class="mo2-indCarbot">
          <a href="chanpinaction" target="_blank">立即投资</a>                </div>
      </li><li class="mo2-indCarlist mo2-indCarlist-ed">
        <div class="mo2-indCartop">
          <div class="mo2-indCartop-img">
            <img src=uploadData/UserBorrowData/200528-201609031224409479.jpg alt="爱车贷-尼桑天籁-SX119" title="爱车贷-尼桑天籁-SX119" onclick="window.open('duanqi_licai_chanpin-md0fJWlJZPew8TY+8A.html')"/>
          </div>
          <div class="mo2-indCartop-rig">
            <ul>
              <li class="mo2-indCar-tit"><a href="chanpin.html#-md0fJWlJZPew8TY+8A.html" target="_blank" title="爱车贷-尼桑天籁-SX119">爱车贷-尼桑天籁-SX119</a></li>
              <li class="mo2-indCar-msg">
                <span>预期年化收益率：</span>
                                <span class="huodongjiaxi">
                              																				9%+1%								</span>
                <p style="margin-top:0;margin-left:60px;" class="jiaxishow">
                  活动加息1%																		</p>
              </li>
              <li class="mo2-indCar-msg">
                <span>项目期限：</span>
                <span>2个月</span>
              </li>
              <li class="mo2-indCar-msg">
                <span>项目余额：</span>
                <span>0元</span>
              </li>
            </ul>
          </div>
        </div>
        <div class="mo2-indCarmid">
          <div class="mo2-carProc">
                            <span class="mo2-carProcess">
                                <span class="mo2-carProcess-tit">正在募集：</span>
                                <b>
                                  <i style="width:100%;"></i>
                                  <u style="left:100%;">
                                    100%
                                    <em></em>
                                  </u>
                                </b>
                            </span>
          </div>
        </div>                <div class="mo2-indCarbot">
        <a href="chanpin.html#-md0fJWlJZPew8TY+8A.html" target="_blank">还款中</a>
      </div>
      </li><li class="mo2-indCarlist mo2-indCarlist-ed">
        <div class="mo2-indCartop">
          <div class="mo2-indCartop-img">
            <img src=uploadData/UserBorrowData/208071-201609031345456731.jpg alt="爱车贷-本田艾力绅-HCK120" title="爱车贷-本田艾力绅-HCK120" onclick="window.open('duanqi_licai_chanpin-nNtKLzlGY!Gw8TY+8g.html')"/>
          </div>
          <div class="mo2-indCartop-rig">
            <ul>
              <li class="mo2-indCar-tit"><a href="chanpin.html#-nNtKLzlGY!Gw8TY+8g.html" target="_blank" title="爱车贷-本田艾力绅-HCK120">爱车贷-本田艾力绅-HCK120</a></li>
              <li class="mo2-indCar-msg">
                <span>预期年化收益率：</span>
                                <span class="huodongjiaxi">
                              																				9%+1%								</span>
                <p style="margin-top:0;margin-left:60px;" class="jiaxishow">
                  活动加息1%																		</p>
              </li>
              <li class="mo2-indCar-msg">
                <span>项目期限：</span>
                <span>2个月</span>
              </li>
              <li class="mo2-indCar-msg">
                <span>项目余额：</span>
                <span>0元</span>
              </li>
            </ul>
          </div>
        </div>
        <div class="mo2-indCarmid">
          <div class="mo2-carProc">
                            <span class="mo2-carProcess">
                                <span class="mo2-carProcess-tit">正在募集：</span>
                                <b>
                                  <i style="width:100%;"></i>
                                  <u style="left:100%;">
                                    100%
                                    <em></em>
                                  </u>
                                </b>
                            </span>
          </div>
        </div>                <div class="mo2-indCarbot">
        <a href="chanpin.html#-nNtKLzlGY!Gw8TY+8g.html" target="_blank">还款中</a>
      </div>
      </li><li class="mo2-indCarlist mo2-indCarlist-ed">
        <div class="mo2-indCartop">
          <div class="mo2-indCartop-img">
            <img src=uploadData/UserBorrowData/199076-201609031612075569.jpg alt="爱车贷-风行景逸-XT125" title="爱车贷-风行景逸-XT125" onclick="window.open('duanqi_licai_chanpin-mNtPLjgTY!Gw8TY++A.html')"/>
          </div>
          <div class="mo2-indCartop-rig">
            <ul>
              <li class="mo2-indCar-tit"><a href="chanpin.html#-mNtPLjgTY!Gw8TY++A.html" target="_blank" title="爱车贷-风行景逸-XT125">爱车贷-风行景逸-XT125</a></li>
              <li class="mo2-indCar-msg">
                <span>预期年化收益率：</span>
                                <span class="huodongjiaxi">
                              																				8%+1%								</span>
                <p style="margin-top:0;margin-left:60px;" class="jiaxishow">
                  活动加息1%																		</p>
              </li>
              <li class="mo2-indCar-msg">
                <span>项目期限：</span>
                <span>1个月</span>
              </li>
              <li class="mo2-indCar-msg">
                <span>项目余额：</span>
                <span>0元</span>
              </li>
            </ul>
          </div>
        </div>
        <div class="mo2-indCarmid">
          <div class="mo2-carProc">
                            <span class="mo2-carProcess">
                                <span class="mo2-carProcess-tit">正在募集：</span>
                                <b>
                                  <i style="width:100%;"></i>
                                  <u style="left:100%;">
                                    100%
                                    <em></em>
                                  </u>
                                </b>
                            </span>
          </div>
        </div>                <div class="mo2-indCarbot">
        <a href="chanpin.html#-mNtPLjgTY!Gw8TY++A.html" target="_blank">还款中</a>
      </div>
      </li><li class="mo2-indCarlist mo2-indCarlist-ed">
        <div class="mo2-indCartop">
          <div class="mo2-indCartop-img">
            <img src=uploadData/UserBorrowData/182015-201609021449381074.jpg alt="爱车贷-北汽坤宝-XAA090" title="爱车贷-北汽坤宝-XAA090" onclick="window.open('duanqi_licai_chanpin-zdROJW1HYfWw8TY69A.html')"/>
          </div>
          <div class="mo2-indCartop-rig">
            <ul>
              <li class="mo2-indCar-tit"><a href="chanpin.html#-zdROJW1HYfWw8TY69A.html" target="_blank" title="爱车贷-北汽坤宝-XAA090">爱车贷-北汽坤宝-XAA090</a></li>
              <li class="mo2-indCar-msg">
                <span>预期年化收益率：</span>
                                <span class="huodongjiaxi">
                              																				8%+1%								</span>
                <p style="margin-top:0;margin-left:60px;" class="jiaxishow">
                  活动加息1%																		</p>
              </li>
              <li class="mo2-indCar-msg">
                <span>项目期限：</span>
                <span>1个月</span>
              </li>
              <li class="mo2-indCar-msg">
                <span>项目余额：</span>
                <span>0元</span>
              </li>
            </ul>
          </div>
        </div>
        <div class="mo2-indCarmid">
          <div class="mo2-carProc">
                            <span class="mo2-carProcess">
                                <span class="mo2-carProcess-tit">正在募集：</span>
                                <b>
                                  <i style="width:100%;"></i>
                                  <u style="left:100%;">
                                    100%
                                    <em></em>
                                  </u>
                                </b>
                            </span>
          </div>
        </div>                <div class="mo2-indCarbot">
        <a href="chanpin.html#-zdROJW1HYfWw8TY69A.html" target="_blank">还款中</a>
      </div>
      </li><li class="mo2-indCarlist mo2-indCarlist-ed">
        <div class="mo2-indCartop">
          <div class="mo2-indCartop-img">
            <img src=uploadData/UserBorrowData/300410-201609021848439311.jpg alt="爱车贷-别克凯越-AKK109" title="爱车贷-别克凯越-AKK109" onclick="window.open('duanqi_licai_chanpin-md9JKjFIbvGw8TY49w.html')"/>
          </div>
          <div class="mo2-indCartop-rig">
            <ul>
              <li class="mo2-indCar-tit"><a href="chanpin.html#-md9JKjFIbvGw8TY49w.html" target="_blank" title="爱车贷-别克凯越-AKK109">爱车贷-别克凯越-AKK109</a></li>
              <li class="mo2-indCar-msg">
                <span>预期年化收益率：</span>
                                <span class="huodongjiaxi">
                              																				9%+1%								</span>
                <p style="margin-top:0;margin-left:60px;" class="jiaxishow">
                  活动加息1%																		</p>
              </li>
              <li class="mo2-indCar-msg">
                <span>项目期限：</span>
                <span>2个月</span>
              </li>
              <li class="mo2-indCar-msg">
                <span>项目余额：</span>
                <span>0元</span>
              </li>
            </ul>
          </div>
        </div>
        <div class="mo2-indCarmid">
          <div class="mo2-carProc">
                            <span class="mo2-carProcess">
                                <span class="mo2-carProcess-tit">正在募集：</span>
                                <b>
                                  <i style="width:100%;"></i>
                                  <u style="left:100%;">
                                    100%
                                    <em></em>
                                  </u>
                                </b>
                            </span>
          </div>
        </div>                <div class="mo2-indCarbot">
        <a href="chanpin.html#-md9JKjFIbvGw8TY49w.html" target="_blank">还款中</a>
      </div>
      </li><li class="mo2-indCarlist mo2-indCarlist-ed">
        <div class="mo2-indCartop">
          <div class="mo2-indCartop-img">
            <img src=uploadData/UserBorrowData/196107-201609031419270.jpg alt="爱车贷-大众宝来-SR122" title="爱车贷-大众宝来-SR122" onclick="window.open('duanqi_licai_chanpin-zdsbJW1DZ!Cw8TY+9A.html')"/>
          </div>
          <div class="mo2-indCartop-rig">
            <ul>
              <li class="mo2-indCar-tit"><a href="chanpin.html#-zdsbJW1DZ!Cw8TY+9A.html" target="_blank" title="爱车贷-大众宝来-SR122">爱车贷-大众宝来-SR122</a></li>
              <li class="mo2-indCar-msg">
                <span>预期年化收益率：</span>
                                <span class="huodongjiaxi">
                              																				9%+1%								</span>
                <p style="margin-top:0;margin-left:60px;" class="jiaxishow">
                  活动加息1%																		</p>
              </li>
              <li class="mo2-indCar-msg">
                <span>项目期限：</span>
                <span>2个月</span>
              </li>
              <li class="mo2-indCar-msg">
                <span>项目余额：</span>
                <span>0元</span>
              </li>
            </ul>
          </div>
        </div>
        <div class="mo2-indCarmid">
          <div class="mo2-carProc">
                            <span class="mo2-carProcess">
                                <span class="mo2-carProcess-tit">正在募集：</span>
                                <b>
                                  <i style="width:100%;"></i>
                                  <u style="left:100%;">
                                    100%
                                    <em></em>
                                  </u>
                                </b>
                            </span>
          </div>
        </div>                <div class="mo2-indCarbot">
        <a href="chanpin.html#-zdsbJW1DZ!Cw8TY+9A.html" target="_blank">还款中</a>
      </div>
      </li><li class="mo2-indCarlist mo2-indCarlist-ed">
        <div class="mo2-indCartop">
          <div class="mo2-indCartop-img">
            <img src=uploadData/UserBorrowData/294791-201609031439176634.jpg alt="爱车贷-JEEP牧马人-YKK123" title="爱车贷-JEEP牧马人-YKK123" onclick="window.open('duanqi_licai_chanpin-kI4fJT8VMviw8TY+9Q.html')"/>
          </div>
          <div class="mo2-indCartop-rig">
            <ul>
              <li class="mo2-indCar-tit"><a href="chanpin.html#-kI4fJT8VMviw8TY+9Q.html" target="_blank" title="爱车贷-JEEP牧马人-YKK123">爱车贷-JEEP牧马人-YKK123</a></li>
              <li class="mo2-indCar-msg">
                <span>预期年化收益率：</span>
                                <span class="huodongjiaxi">
                              																				8%+1%								</span>
                <p style="margin-top:0;margin-left:60px;" class="jiaxishow">
                  活动加息1%																		</p>
              </li>
              <li class="mo2-indCar-msg">
                <span>项目期限：</span>
                <span>1个月</span>
              </li>
              <li class="mo2-indCar-msg">
                <span>项目余额：</span>
                <span>0元</span>
              </li>
            </ul>
          </div>
        </div>
        <div class="mo2-indCarmid">
          <div class="mo2-carProc">
                            <span class="mo2-carProcess">
                                <span class="mo2-carProcess-tit">正在募集：</span>
                                <b>
                                  <i style="width:100%;"></i>
                                  <u style="left:100%;">
                                    100%
                                    <em></em>
                                  </u>
                                </b>
                            </span>
          </div>
        </div>                <div class="mo2-indCarbot">
        <a href="chanpin.html#-kI4fJT8VMviw8TY+9Q.html" target="_blank">还款中</a>
      </div>
      </li><li class="mo2-indCarlist mo2-indCarlist-ed">
        <div class="mo2-indCartop">
          <div class="mo2-indCartop-img">
            <img src=uploadData/UserBorrowData/253893-201609031514329977.JPG alt="爱车贷-五菱箱货-ASK124" title="爱车贷-五菱箱货-ASK124" onclick="window.open('duanqi_licai_chanpin-m45JeD9BM!iw8TY+9w.html')"/>
          </div>
          <div class="mo2-indCartop-rig">
            <ul>
              <li class="mo2-indCar-tit"><a href="chanpin.html#-m45JeD9BM!iw8TY+9w.html" target="_blank" title="爱车贷-五菱箱货-ASK124">爱车贷-五菱箱货-ASK124</a></li>
              <li class="mo2-indCar-msg">
                <span>预期年化收益率：</span>
                                <span class="huodongjiaxi">
                              																				8%+1%								</span>
                <p style="margin-top:0;margin-left:60px;" class="jiaxishow">
                  活动加息1%																		</p>
              </li>
              <li class="mo2-indCar-msg">
                <span>项目期限：</span>
                <span>1个月</span>
              </li>
              <li class="mo2-indCar-msg">
                <span>项目余额：</span>
                <span>0元</span>
              </li>
            </ul>
          </div>
        </div>
        <div class="mo2-indCarmid">
          <div class="mo2-carProc">
                            <span class="mo2-carProcess">
                                <span class="mo2-carProcess-tit">正在募集：</span>
                                <b>
                                  <i style="width:100%;"></i>
                                  <u style="left:100%;">
                                    100%
                                    <em></em>
                                  </u>
                                </b>
                            </span>
          </div>
        </div>                <div class="mo2-indCarbot">
        <a href="chanpin.html#-m45JeD9BM!iw8TY+9w.html" target="_blank">还款中</a>
      </div>
      </li>        </ul>
    </div>
  </div>
  <script type="text/javascript">
    $(function () {
      // 爱车贷滑入效果
      $('.mo2-indCarlist').mouseenter(function () {
        $(this).children('.mo2-indCartop').children('.mo2-indCartop-rig').children('ul').stop().animate({top: "-36px"}, 250);
      });
      $('.mo2-indCarlist').mouseleave(function () {
        $(this).children('.mo2-indCartop').children('.mo2-indCartop-rig').children('ul').stop().animate({top: "0px"}, 250);
      });
    });
  </script>
  <script type="text/javascript">
    $(function () {
      carListpage();
    });
    function carListpage() {
      var ulLeft = 0;
      var maxLeft = ($('.mo2-indCarlist').length - 3) * 341;
      $('.mo2-indCarlist-next').click(function () {
        if (ulLeft > -maxLeft) {
          ulLeft -= 341;
          $('.mo2-indCar').animate({left: ulLeft}, 400);
        }
      });

      $('.mo2-indCarlist-prev').click(function () {
        if (ulLeft < 0) {
          ulLeft += 341;
          $('.mo2-indCar').animate({left: ulLeft}, 400);
        }
      });
    }

    //活动加息
    $(".huodongjiaxi").mouseover(function(){
      $(this).parent().find(".jiaxishow").show();
    })
    $(".huodongjiaxi").mouseout(function(){
      $(this).parent().find(".jiaxishow").hide();
    })
  </script>
  <!-- 爱车贷end -->


  <div class="m2-indexNewstable">
    <div class="m2-indNewstab">
      <ul class="m2-indNewstablist">
        <li class="m2-indNewtab-sel">
          <span>媒体报道</span><i></i>
        </li>
        <li class="m2-indNewtab-unsel">
          <span>行业动态</span><i></i>
        </li>
        <li class="m2-indNewtab-unsel">
          <span>网站公告</span><i></i>
        </li>
        <li class="m2-indNewtab-unsel">
          <span>项目公告</span><i></i>
        </li>
        <li class="m2-indNewtab-unsel">
          <span>还款公告</span><i></i>
        </li>
        <li class="m2-indNewtab-unsel">
          <span>爱钱帮动态</span><i></i>
        </li>
        <li class="m2-indNewtab-unsel">
          <span>理财技巧</span><i></i>
        </li>
      </ul>
      <a class="m2-indNewstab-link" href="meitibaodao_aiqianbang_licaiwang.html" id="article-more" target="_blank">更多&raquo;</a>
    </div>
    <div class="indNewsmain-con">
      <ul class="indNewslist-pic newslist" id="newslist1">
        <li>
          <div class="indNewslist-picLef"><img src="uploadData/ad/20151229133918775.png" alt="没有信息共享机制，网贷凭什么限额？"></div>
          <div class="indNewslist-picRig">
            <h4><a href="dashiji_show.html#16027.html" target='_blank' title="没有信息共享机制，网贷凭什么限额？">没有信息共享机制，网贷凭什么限额？</a></h4>
            <div class="indNewslist-picMain">
              <span>今天下午，银监会、工信部、公安部、网信办四部委联合发布《网络借贷信息中介机构业务活动管理暂行办法》。此前备受市场关注的借款设上限在发布会上被确认。&nbsp;银监会普惠金融部主任李均锋 ........ </span>
              <a href="dashiji_show.html#16027.html"  target='_blank'>更多</a>
            </div>
          </div>
        </li><li>
        <div class="indNewslist-picLef"><img src="uploadData/ad/20151130140815865.png" alt="网贷管理办法明确13项禁止性行为"></div>
        <div class="indNewslist-picRig">
          <h4><a href="dashiji_show.html#16026.html" target='_blank' title="网贷管理办法明确13项禁止性行为">网贷管理办法明确13项禁止性行为</a></h4>
          <div class="indNewslist-picMain">
            <span>&nbsp;24日，银监会会同工信部、公安部、国家互联网信息办公室等部门研究起草的《网络借贷信息中介机构业务活动管理暂行办法》（简称《办法》）发布。《办法》强调了从业机构作为信息中介的 ........ </span>
            <a href="dashiji_show.html#16026.html"  target='_blank'>更多</a>
          </div>
        </div>
      </li>            </ul>
      <ul class="indNewslist-psg newslist" style="display:none;" id="newslist2">
        <li><a href="dashiji_show.html#15857.html" target='_blank' class="m2-indNewslist-psgNew" title="资金存管是P2P投资理财未来发展的核心">1）资金存管是P2P投资理财未来发展的核心</a>
          <b>new</b>                    <span class="m2-indNews-psgTim">2016-05-05</span></li><li><a href="dashiji_show.html#15854.html" target='_blank' class="m2-indNewslist-psgNew" title="监管政策落地预示着P2P理财平台将获得重生">2）监管政策落地预示着P2P理财平台将获得重生</a>
        <b>new</b>                    <span class="m2-indNews-psgTim">2016-05-05</span></li><li><a href="dashiji_show.html#15853.html" target='_blank' class="m2-indNewslist-psgNew" title="网络投资理财平台须有“担当”">3）网络投资理财平台须有“担当”</a>
        <b>new</b>                    <span class="m2-indNews-psgTim">2016-05-05</span></li><li><a href="dashiji_show.html#15852.html" target='_blank' class="m2-indNewslist-psgNew" title="监管来袭很有必要选对网络投资理财平台">4）监管来袭很有必要选对网络投资理财平台</a>
        <span class="m2-indNews-psgTim">2016-05-05</span></li><li><a href="dashiji_show.html#15851.html" target='_blank' class="m2-indNewslist-psgNew" title="从规范发展的角度看网络投资理财平台">5）从规范发展的角度看网络投资理财平台</a>
        <span class="m2-indNews-psgTim">2016-05-05</span></li>            </ul>
      <ul class="indNewslist-psg newslist" style="display:none;" id="newslist3">
        <li><a href="dashiji_show.html#16013.html" target='_blank' class="m2-indNewslist-psgNew" title="【平台公告】关于部分银行升级“快捷充值”功能的公告">1）【平台公告】关于部分银行升级“快捷充值”功能的公告</a>
          <b>new</b>                    <span class="m2-indNews-psgTim">2016-08-24</span></li><li><a href="dashiji_show.html#16009.html" target='_blank' class="m2-indNewslist-psgNew" title="爱钱帮CEO王吉涛出席全球互联网创新金融峰会">2）爱钱帮CEO王吉涛出席全球互联网创新金融峰会</a>
        <b>new</b>                    <span class="m2-indNews-psgTim">2016-08-19</span></li><li><a href="dashiji_show.html#16005.html" target='_blank' class="m2-indNewslist-psgNew" title="【平台公告】关于网络优化的公告">3）【平台公告】关于网络优化的公告</a>
        <b>new</b>                    <span class="m2-indNews-psgTim">2016-08-18</span></li><li><a href="dashiji_show.html#15987.html" target='_blank' class="m2-indNewslist-psgNew" title="【平台公告】爱钱帮会员商城试运营公告">4）【平台公告】爱钱帮会员商城试运营公告</a>
        <span class="m2-indNews-psgTim">2016-08-05</span></li><li><a href="dashiji_show.html#15986.html" target='_blank' class="m2-indNewslist-psgNew" title="【平台公告】爱钱帮7月运营报告">5）【平台公告】爱钱帮7月运营报告</a>
        <span class="m2-indNews-psgTim">2016-08-04</span></li>            </ul>
      <ul class="indNewslist-psg newslist" style="display:none;" id="newslist4">
        <li><a href="dashiji_show.html#15601.html" target='_blank' class="m2-indNewslist-psgNew" title="【项目公告】易安家长租公寓项目温馨继续">1）【项目公告】易安家长租公寓项目温馨继续</a>
          <b>new</b>                    <span class="m2-indNews-psgTim">2016-02-23</span></li><li><a href="dashiji_show.html#15599.html" target='_blank' class="m2-indNewslist-psgNew" title="【项目公告】娱乐帮-电影《你好，疯子！》投资项目">2）【项目公告】娱乐帮-电影《你好，疯子！》投资项目</a>
        <b>new</b>                    <span class="m2-indNews-psgTim">2016-02-20</span></li><li><a href="dashiji_show.html#15572.html" target='_blank' class="m2-indNewslist-psgNew" title="【项目公告】“世果汇”—越南青芒果直采【投资满额送青…">3）【项目公告】“世果汇”—越南青芒果直采【投资满额送青…</a>
        <b>new</b>                    <span class="m2-indNews-psgTim">2016-02-01</span></li>            </ul>
      <ul class="indNewslist-psg newslist" style="display:none;" id="newslist5">
        <li><a href="dashiji_show.html#16028.html" target='_blank' class="m2-indNewslist-psgNew" title="【还款公告】2016年9月2日爱钱帮投资理财项目还本…">1）【还款公告】2016年9月2日爱钱帮投资理财项目还本…</a>
          <b>new</b>                    <span class="m2-indNews-psgTim">2016-09-02</span></li><li><a href="dashiji_show.html#16025.html" target='_blank' class="m2-indNewslist-psgNew" title="【还款公告】2016年9月1日爱钱帮投资理财项目还本…">2）【还款公告】2016年9月1日爱钱帮投资理财项目还本…</a>
        <b>new</b>                    <span class="m2-indNews-psgTim">2016-09-01</span></li><li><a href="dashiji_show.html#16024.html" target='_blank' class="m2-indNewslist-psgNew" title="【还款公告】2016年8月31日爱钱帮投资理财项目还…">3）【还款公告】2016年8月31日爱钱帮投资理财项目还…</a>
        <b>new</b>                    <span class="m2-indNews-psgTim">2016-08-31</span></li><li><a href="dashiji_show.html#16022.html" target='_blank' class="m2-indNewslist-psgNew" title="【还款公告】2016年8月30日爱钱帮投资理财项目还…">4）【还款公告】2016年8月30日爱钱帮投资理财项目还…</a>
        <span class="m2-indNews-psgTim">2016-08-30</span></li><li><a href="dashiji_show.html#16019.html" target='_blank' class="m2-indNewslist-psgNew" title="【还款公告】2016年8月29日爱钱帮投资理财项目还…">5）【还款公告】2016年8月29日爱钱帮投资理财项目还…</a>
        <span class="m2-indNews-psgTim">2016-08-29</span></li>            </ul>
      <ul class="indNewslist-psg newslist" style="display:none;" id="newslist6">
        <li><a href="dashiji_show.html#15532.html" target='_blank' class="m2-indNewslist-psgNew" title="爱钱帮&amp;i烘焙之爱上CUP CAKE">1）爱钱帮&amp;i烘焙之爱上CUP CAKE</a>
          <b>new</b>                    <span class="m2-indNews-psgTim">2016-01-18</span></li><li><a href="dashiji_show.html#15470.html" target='_blank' class="m2-indNewslist-psgNew" title="爱钱帮志愿者进社区普及防范非法集资知识">2）爱钱帮志愿者进社区普及防范非法集资知识</a>
        <b>new</b>                    <span class="m2-indNews-psgTim">2015-12-10</span></li><li><a href="dashiji_show.html#15421.html" target='_blank' class="m2-indNewslist-psgNew" title="爱钱帮联姻南昌银行  开创消费金融新体验">3）爱钱帮联姻南昌银行  开创消费金融新体验</a>
        <b>new</b>                    <span class="m2-indNews-psgTim">2015-10-29</span></li><li><a href="dashiji_show.html#15354.html" target='_blank' class="m2-indNewslist-psgNew" title="爱钱帮单月破亿 支持垂直马拉松">4）爱钱帮单月破亿 支持垂直马拉松</a>
        <span class="m2-indNews-psgTim">2015-09-07</span></li><li><a href="dashiji_show.html#15346.html" target='_blank' class="m2-indNewslist-psgNew" title="爱钱帮支持高等教育 人民大学MBA开学典礼隆重举行">5）爱钱帮支持高等教育 人民大学MBA开学典礼隆重举行</a>
        <span class="m2-indNews-psgTim">2015-08-31</span></li>            </ul>
      <ul class="indNewslist-psg newslist" style="display:none;" id="newslist7">
        <li><a href="dashiji_show.html#15867.html" target='_blank' class="m2-indNewslist-psgNew" title="逐渐规范的时代，要找寻优质P2P投资理财平台">1）逐渐规范的时代，要找寻优质P2P投资理财平台</a>
          <b>new</b>                    <span class="m2-indNews-psgTim">2016-05-09</span></li><li><a href="dashiji_show.html#15866.html" target='_blank' class="m2-indNewslist-psgNew" title="P2P投资理财，这五种心态绝对不能有">2）P2P投资理财，这五种心态绝对不能有</a>
        <b>new</b>                    <span class="m2-indNews-psgTim">2016-05-09</span></li><li><a href="dashiji_show.html#15865.html" target='_blank' class="m2-indNewslist-psgNew" title="如果还有梦，就从P2P投资理财开始吧">3）如果还有梦，就从P2P投资理财开始吧</a>
        <b>new</b>                    <span class="m2-indNews-psgTim">2016-05-09</span></li><li><a href="dashiji_show.html#15864.html" target='_blank' class="m2-indNewslist-psgNew" title="要学会为P2P投资理财制定计划">4）要学会为P2P投资理财制定计划</a>
        <span class="m2-indNews-psgTim">2016-05-09</span></li><li><a href="dashiji_show.html#15863.html" target='_blank' class="m2-indNewslist-psgNew" title="优秀的P2P投资理财者如何选择标的">5）优秀的P2P投资理财者如何选择标的</a>
        <span class="m2-indNews-psgTim">2016-05-09</span></li>            </ul>
    </div>
  </div>

  <div class="m2-indexVodbox">
    <h2 class="m2-indVodhead"><i></i><span>精彩尽在爱钱帮</span><a href="meitibaodao_aiqianbang_licaiwang" target="_blank">查看全部</a></h2>
    <div class="m2-indexVod-border">
      <div class="m2-indexVod-con">

        <div class="m2-indexVodbtn-prev"></div>
        <div class="m2-indexVodbtn-next"></div>
        <div class="m2-indVodmain">
          <ul class="m2-indVodlist">
            <li data-vedio='uploadData/vedio/10.mp4'>
              <div class="m2-indVodlist-bg"></div>
              <div class="m2-indVodlist-bot">爱钱帮宣传片</div>
              <img src="images/vedio/vedio12.jpg" alt="爱钱帮宣传片">
              <i></i>
            </li>
            <li data-vedio='uploadData/vedio/9.mp4'>
              <div class="m2-indVodlist-bg"></div>
              <div class="m2-indVodlist-bot">中国网贷第一部微电影-P2P网贷平台</div>
              <img src="images/vedio/vedio10.jpg" alt="中国网贷第一部微电影-P2P网贷平台">
              <i></i>
            </li>
            <li data-vedio='uploadData/vedio/11.mp4'>
              <div class="m2-indVodlist-bg"></div>
              <div class="m2-indVodlist-bot">供应链网贷p2p中东金融二次见面会</div>
              <img src="images/vedio/vedio11.jpg" alt="供应链网贷p2p中东金融二次见面会">
              <i></i>
            </li>
            <li data-vedio='uploadData/vedio/12.mp4'>
              <div class="m2-indVodlist-bg"></div>
              <div class="m2-indVodlist-bot">网贷联播-专业的互联网金融视频-</div>
              <img src="images/vedio/vedio9.jpg" alt="网贷联播-专业的互联网金融视频-">
              <i></i>
            </li>
            <li data-vedio='uploadData/vedio/8.mp4'>
              <div class="m2-indVodlist-bg"></div>
              <div class="m2-indVodlist-bot">如何成为专业网贷投资人</div>
              <img src="images/vedio/vedio8.jpg" alt="如何成为专业网贷投资人">
              <i></i>
            </li>
            <li data-vedio='uploadData/vedio/1.mp4'>
              <div class="m2-indVodlist-bg"></div>
              <div class="m2-indVodlist-bot">中国P2P网贷特点与风险控制</div>
              <img src="images/vedio/vedio1.jpg" alt="中国P2P网贷特点与风险控制">
              <i></i>
            </li>
            <li data-vedio='uploadData/vedio/6.mp4'>
              <div class="m2-indVodlist-bg"></div>
              <div class="m2-indVodlist-bot">金融行业的新革命 P2P网贷</div>
              <img src="images/vedio/vedio6.jpg" alt="金融行业的新革命 P2P网贷">
              <i></i>
            </li>
            <li data-vedio='uploadData/vedio/2.mp4'>
              <div class="m2-indVodlist-bg"></div>
              <div class="m2-indVodlist-bot">中国P2P网贷监管与投资人利益保护</div>
              <img src="images/vedio/vedio2.jpg" alt="中国P2P网贷监管与投资人利益保护">
              <i></i>
            </li>
            <li data-vedio='uploadData/vedio/3.mp4'>
              <div class="m2-indVodlist-bg"></div>
              <div class="m2-indVodlist-bot">爱钱帮访谈之P2P</div>
              <img src="images/vedio/vedio3.jpg" alt="爱钱帮访谈之P2P">
              <i></i>
            </li>
            <li data-vedio='uploadData/vedio/4.mp4'>
              <div class="m2-indVodlist-bg"></div>
              <div class="m2-indVodlist-bot">如何选择P2P平台</div>
              <img src="images/vedio/vedio4.jpg" alt="如何选择P2P平台">
              <i></i>
            </li>
            <li data-vedio='uploadData/vedio/5.mp4'>
              <div class="m2-indVodlist-bg"></div>
              <div class="m2-indVodlist-bot">CCTV2特别报道爱钱帮</div>
              <img src="images/vedio/vedio5.jpg" alt="CCTV2特别报道爱钱帮">
              <i></i>
            </li>
            <li data-vedio='uploadData/vedio/7.mp4'>
              <div class="m2-indVodlist-bg"></div>
              <div class="m2-indVodlist-bot">CCTV2特别报道爱钱帮</div>
              <img src="images/vedio/vedio7.jpg" alt="CCTV2特别报道爱钱帮">
              <i></i>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>

  <div class="m2-indexCooperation">
    <div class="m2-indCooorg">
      <h2>实力合作机构
        <!--<a class="m2-indCoomore" href="#">更多&raquo;</a>-->
      </h2>
      <ul>
        <li><a  href=http://www.cyzone.cn/d/20150525/417.html target="_blank">
          <img src=uploadData/ad/20160512110603864.png alt=""></a>
        </li><li><a a href=http://www.hsbank.com.cn/  target="_blank">
        <img src=uploadData/ad/20160512111038163.png alt=""></a>
      </li><li><a  href=http://www.jx-bank.com/nccbank/zh_CN/home/index.html target="_blank">
        <img src=uploadData/ad/2016051211111329.png alt=""></a>
      </li><li><a  target="_blank">
        <img src=uploadData/ad/20160512111134837.png alt=""></a>
      </li><li><a  target="_blank">
        <img src=uploadData/ad/20160512111157415.png alt=""></a>
      </li><li><a  target="_blank">
        <img src=uploadData/ad/2016051211121652.png alt=""></a>
      </li><li><a href=https://www.alipay.com/  target="_blank">
        <img src=uploadData/ad/20160512111336923.png alt=""></a>
      </li><li><a href=http://www.yeepay.com/  target="_blank">
        <img src=uploadData/ad/20160512111356562.png alt=""></a>
      </li><li><a  target="_blank">
        <img src=uploadData/ad/20160512111411694.png alt=""></a>
      </li><li><a  target="_blank">
        <img src=uploadData/ad/20160512111439851.png alt=""></a>
      </li><li><a  target="_blank">
        <img src=uploadData/ad/20160512111459408.png alt=""></a>
      </li><li><a  target="_blank">
        <img src=uploadData/ad/20160616194004859.png alt=""></a>
      </li>            </ul>
    </div>
    <div class="m2-indCootip">
      <h2 style="border-bottom-width: 0px;"><!-- 友情提示<a class="m2-indCoomore" href="#">更多&raquo;</a> --></h2>
      <div class="m2-indCootip-box">
        <div class="m2-indCootip-lef">
          <!--<span>友情链接：</span>-->
        </div>
        <div class="m2-indCootip-rig">
        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
  //banner切换
  var ulLeft;
  $(function () {
    //项目列表切换
    $('.m2-indexSteplist li').click(function () {
      var stepIndex = 0;
      if ($(this).hasClass('m2-indexStep-unsel')) {
        stepIndex = $(this).index();
        $(this).addClass('m2-indexStep-sel').removeClass('m2-indexStep-unsel');
        $(this).siblings('.m2-indexStep-sel').addClass('m2-indexStep-unsel').removeClass('m2-indexStep-sel');
        $('.m2-indexStepimg-list li').eq(stepIndex).show();
        $('.m2-indexStepimg-list li').eq(stepIndex).siblings().hide();
        if (stepIndex == 0) {
          //直投
          borrowcate(0);
          $('#statistics-title').html('<i class="m2-indexStepfoot-icon"></i>项目直投统计数据');
        } /*else if (stepIndex == 1) {
         //爱小贷
         borrowcate(4);
         $('.m2-indexItem').hide();
         $('.borrow-cate-4').show();
         $('#statistics-title').html('<i class="m2-indexStepfoot-icon"></i>爱小贷统计数据');
         } else if (stepIndex == 2) {
         //海鲜帮
         borrowcate(2);
         $('.m2-indexItem').hide();
         $('.borrow-cate-2').show();
         $('#statistics-title').html('<i class="m2-indexStepfoot-icon"></i>海鲜帮统计数据');
         }*/ else if (stepIndex == 1) {
          //债转
          transcate();
          $('.m2-indexStepfoot').hide();
        }
        ulLeft = 0;
        $('.m2-indexItemlist').animate({left: ulLeft}, 400);
      }
    });
    //项目分类显示
    borrowcate(0);
    function borrowcate(cate) {
      $('.trans').hide();
      $('.borrow').show();
      $('.m2-indexStepfoot').show();
      if ($('#statistics-' + cate).data('bnum') > 0) {
        $('#statistics-bnum').text($('#statistics-' + cate).data('bnum'));
        $('#statistics-pnum').text($('#statistics-' + cate).data('pnum'));
        $('#statistics-inum').text($('#statistics-' + cate).data('inum'));
      } else {
        $('#statistics-bnum').text(0);
        $('#statistics-pnum').text(0);
        $('#statistics-inum').text(0);
      }
    }
    //显示债转
    function transcate() {
      $('.trans').show();
      $('.borrow').hide();
    }
    //项目列表翻页
    itemListpage();
    //视频列表翻页
    vodListpage();
    //新闻列表tab切换
    $('.m2-indNewstablist li').click(function () {
      if ($(this).hasClass('m2-indNewtab-unsel')) {
        $(this).addClass('m2-indNewtab-sel').removeClass('m2-indNewtab-unsel');
        $(this).siblings('.m2-indNewtab-sel').addClass('m2-indNewtab-unsel').removeClass('m2-indNewtab-sel');
      }
    });
    // 新闻列表tab切换下方展示
    $('.m2-indNewstablist li').click(function () {
      if ($(this).index() == 0) {
        //媒体报道
        $('.newslist').hide();
        $('#newslist1').show();
        $('#article-more').prop('href', 'meitibaodao_aiqianbang_licaiwang/');
      } else if ($(this).index() == 1) {
        //行业动态
        $('.newslist').hide();
        $('#newslist2').show();
        $('#article-more').prop('href', 'touzi_licaiwang_xinwendongtai/');
      } else if ($(this).index() == 2) {
        //网站公告
        $('.newslist').hide();
        $('#newslist3').show();
        $('#article-more').prop('href', 'aiqianbang_licaiwang_gonggao/');
      } else if ($(this).index() == 3) {
        //网站公告
        $('.newslist').hide();
        $('#newslist4').show();
        $('#article-more').prop('href', 'aiqianbang_touzi_licai_chanpin_gonggao/');
      } else if ($(this).index() == 4) {
        //还款公告
        $('.newslist').hide();
        $('#newslist5').show();
        $('#article-more').prop('href', 'aiqianbang_touzi_licai_chanpin_jieshu_gonggao/');
      } else if ($(this).index() == 5) {
        //活动公告=爱钱帮动态
        $('.newslist').hide();
        $('#newslist6').show();
        $('#article-more').prop('href', 'aiqianbang_licaiwang_xinwendongtai/');
      } else if ($(this).index() == 6) {
        //活动公告=爱钱帮动态
        $('.newslist').hide();
        $('#newslist7').show();
        $('#article-more').prop('href', 'touzi_licaijianyi/');
      }
    });
    // 视频播放
    $('.m2-indVodlist li').click(function () {
      $('.m2-indVoditem').remove();
      var vedio = $(this).data('vedio');
      $('.m2-indexVod-con').prepend('<div class="m2-indVoditem"><i></i><video class="m2-indexVideo" data-setup="{}" preload="none" loop="false" controls="controls"><source src="' + vedio + '" type="video/mp4">您的浏览器版本过低,不能播放此视频</video></div>');
      $('.m2-indexVideo').attr("autoplay", "autoplay");
      closeVideo();
    });
    function closeVideo() {
      $('.m2-indVoditem i').click(function () {
        $('.m2-indVoditem').remove();
      })
    }
  });
  //项目列表翻页
  function itemListpage() {
    ulLeft = 0;
    $('.m2-indexItemlist-next').click(function () {
      var maxLeft = ($('.m2-indexItemlist li:visible').length - 3) * 341;
      if (ulLeft > -maxLeft) {
        ulLeft -= 341;
        $('.m2-indexItemlist').animate({left: ulLeft}, 400);
      }
    });
    $('.m2-indexItemlist-prev').click(function () {
      if (ulLeft < 0) {
        ulLeft += 341;
        $('.m2-indexItemlist').animate({left: ulLeft}, 400);
      }
    });
  }

  //视频列表翻页
  function vodListpage() {
    var ulLeft = 0;
    var maxLeft = ($('.m2-indVodlist li').length - 4) * 220;
    $('.m2-indexVodbtn-next').click(function () {
      if (ulLeft > -maxLeft) {
        ulLeft -= 220;
        $('.m2-indVodlist').animate({left: ulLeft}, 300);
      }
    });
    $('.m2-indexVodbtn-prev').click(function () {
      if (ulLeft < 0) {
        ulLeft += 220;
        $('.m2-indVodlist').animate({left: ulLeft}, 300);
      }
    });
  }
  //圆环进度条
  $(function () {
    //加载进度条
    $(".m2-indKnob").knob();
    //显示进度条百分比
    $('.m2-indPercent').each(function () {
      $(this).html($(this).siblings().children('input').attr('value') + "%");
    })
  });
</script>
<script type="text/javascript">
  //倒计时
  var timeLeft = Number('0');
  function timeDown() {
    if (timeLeft < 86400 & timeLeft > 0) {
      var minLeft1 = Number(parseInt(timeLeft % 3600 / 60 / 10)).toString(); //分钟第一位
      var minLeft2 = Number(parseInt(timeLeft % 3600 / 60 % 10)).toString(); //分钟数第二位
      var secLeft1 = Number(parseInt(timeLeft % 3600 % 60 / 10)).toString(); //秒第一位
      var secLeft2 = Number(parseInt(timeLeft % 10)).toString(); //秒第二位
      $('.m2-invDay').hide(); //隐藏天
      $('.m2-invSec').show(); //显示秒
      $('.m2-invHou').children('i').html(parseInt(timeLeft / 3600)); //小时
      $('.m2-invMin').children('i').html(minLeft1 + minLeft2); //分钟
      $('.m2-invSec').children('i').html(secLeft1 + secLeft2); //秒
      timeLeft--;
      setTimeout("timeDown()", 1000); //设置1秒以后执行一次本函数
    }
    else if (timeLeft >= 86400) {
      var houLeft1 = Number(parseInt(timeLeft % 86400 / 3600 / 10)).toString(); //小时第一位
      var houLeft2 = Number(parseInt(timeLeft % 86400 / 3600 % 10)).toString(); //小时数第二位
      var minLeft1 = Number(parseInt(timeLeft % 86400 % 3600 / 60 / 10)).toString(); //分钟第一位
      var minLeft2 = Number(parseInt(timeLeft % 86400 % 3600 / 60 % 10)).toString(); //分钟数第二位
      $('.m2-invDay').show(); //隐藏天
      $('.m2-invSec').hide(); //显示秒
      $('.m2-invDay').children('i').html(parseInt(timeLeft / 86400)); //天
      $('.m2-invHou').children('i').html(houLeft1 + houLeft2); //小时
      $('.m2-invMin').children('i').html(minLeft1 + minLeft2); //分钟
      timeLeft--;
      setTimeout("timeDown()", 1000); //设置1秒以后执行一次本函数
    }
    else if (timeLeft == 0) {
      $('.m2-invDay').hide(); //隐藏天
      $('.m2-invSec').show(); //显示秒
      $('.m2-invHou').children('i').html(0); //小时
      $('.m2-invMin').children('i').html('00'); //分钟
      $('.m2-invSec').children('i').html('00'); //秒
    }

  }

  timeDown();

</script>
<form action="/cupdata-transfer-index" style="display: none;" id="transfer_form">
  <input name="tid" id="form_transfer_id">
  <input name="num" id="form_transfer_num">
  <input type="hidden" name="__hash__" value="6666cd76f96956469e7be39d750cc7d9_ee70776ff5a128756690de65b1bc04be" /></form>
<script>

  var account_money = Number("");
  var transfer_index = 0;
  //债转金额改变
  $('.transfer-money').keyup(function () {
    transfer_index = $(this).data('index');
    var money = $(this).val();
    transferValidation(money);
  });
  //计算器债转金额改变
  $('#transfer_money1').keyup(function () {
    var money = $(this).val();
    transferValidation(money);
  });
  //全用
  $('.invest_all').click(function () {
    transferValidation(account_money, true);
  });
  $('.m2-indTrabtn-all').click(function () {
    transfer_index = $(this).data('index');
    transferValidation(account_money, true);
  });
  //债转金额处理
  function transferValidation(money, flag) {
    if (!isNaN(money)) {
      var im = Number(money);
      if (transfer_left[transfer_index] > 0 && im > transfer_left[transfer_index]) {
        im = transfer_left[transfer_index];
      }
      if (flag) {
        im = im < invest_limit[transfer_index] ? invest_limit[transfer_index] : Math.floor(im / invest_limit[transfer_index]) * invest_limit[transfer_index];
      }
      transfer_money[transfer_index] = im;
      transfer_num[transfer_index] = Math.floor(transfer_money[transfer_index] / invest_limit[transfer_index]);
    }
    transferSync();
  }
  // 债转弹出层
  $('.trans-cal-icon').click(function () {
    transfer_index = $(this).data('index');
    transferSync();
    $('.m2-tranBg,.m2-tranHide').show();
    $('.m2-tranHide').css('top', $(document).scrollTop() + 90);
  });
  //计算器还款列表
  function transferPayList() {
    $('#trans-pay-list').html('');
    var arr = transfer_paylist[transfer_index];
    for (var i in arr) {
      var li = '<li>';
      li += '<div class="m2-tranHide-det m2-tranHide-day">计息天数:<span>' + arr[i]['day'] + '天</span></div>';
      li += '<div class="m2-tranHide-det m2-tranHide-tim">支付时间:<span>' + arr[i]['pay_date'] + '</span></div>';
      li += '<div class="m2-tranHide-det m2-tranHide-num">支付利息:<span class="list-interest" data-interest="' + arr[i]['interest'] + '">' + arr[i]['interest'] + '元</span></div>';
      li += '</li>';
      $('#trans-pay-list').append(li);
    }
  }
  //界面同步
  function transferSync() {
    transferPayList();
    $('#transfer_money_' + transfer_index).val(transfer_money[transfer_index]);
    $('#transfer_money1').val(transfer_money[transfer_index]);
    $('#transfer_money2').text(transfer_money[transfer_index] + '元');
    $('#transfer_money3').text(transfer_money[transfer_index] + '元');
    $('#transfer_limit').text(invest_limit[transfer_index] + '元');
    $('#trans-borrow-name').html('<span>所选项目：</span>' + transfer_borrowname[transfer_index]);
    $('#transfer-income').text((Math.round(transfer_income[transfer_index] * transfer_money[transfer_index]) / 100) + '元');
    $('.list-interest').each(function () {
      var itm = Math.round(Number($(this).data('interest')) * transfer_money[transfer_index]) / 100;
      $(this).html(itm + '元');
    });
  }
  //提交债转
  $('.transfer-submit').click(function () {
    transfer_index = $(this).data('index');
    transferValidation(transfer_money[transfer_index], true);
    $('#form_transfer_num').val(transfer_num[transfer_index]);
    $('#form_transfer_id').val(transfer_id[transfer_index]);
    if (transfer_num[transfer_index] * sale_price[transfer_index] < account_money) {
      confirmDialog('invest');
    } else {
      confirmDialog('charge');
    }
  });
  //债转提示
  function confirmDialog(action) {
    var content = '<p class="m2-detConfirm-nor">尊敬的用户：</p>';
    if (action === 'charge') {
      $('#msgtitle').text('充值确认');
      content += '<p class="m2-detConfirm-nor">此债权最小承接金额为' + invest_limit[transfer_index] + '元</p>';
      content += '<p class="m2-detConfirm-nor">您承接金额为<span style="color:#f48a3f;">' + transfer_money[transfer_index] + '</span>元</p>';
      content += '<p class="m2-detConfirm-nor">债权售价为<span style="color:#f48a3f;">' + transfer_num[transfer_index] * sale_price[transfer_index] + '</span>元</p>';
      content += '<p class="m2-detConfirm-nor">您的账户金额不足，去充值吗?</p>';
      $('#msgcontent').html(content);
      $('#msgbtn1').hide();
      $('#msgbtn2').hide();
      $('#msgbtn3').show();
    } else if (action === 'invest') {
      $('#msgtitle').text('承接确认');
      content += '<p class="m2-detConfirm-nor">此债权最小承接金额为' + invest_limit[transfer_index] + '元</p>';
      content += '<p class="m2-detConfirm-nor">您承接金额为<span style="color:#f48a3f;">' + transfer_money[transfer_index] + '</span>元</p>';
      content += '<p class="m2-detConfirm-nor">债权售价为<span style="color:#f48a3f;">' + transfer_num[transfer_index] * sale_price[transfer_index] + '</span>元</p>';
      content += '<p class="m2-detConfirm-nor">您确认承接吗?</p>';
      $('#msgcontent').html(content);
      $('#msgbtn1').hide();
      $('#msgbtn2').show();
      $('#msgbtn3').hide();
    }
    $('.m2-detConfirm,.m2-tranBg').show();
  }
  //关闭弹窗
  $('.m2-detConfirm-close,.m2-detConfirm-btn a').click(function () {
    $('.m2-detConfirm,.m2-tranBg').hide();
  });
</script>
<script type="text/javascript">
  $(function(){
    // 勾选注册用户协议
    $('#reverifyCode').click();
    $('.mo2-indRegagree i').click(function(){
      if ($(this).hasClass('mo2-indReg-sel')) {
        $(this).addClass('mo2-indReg-unsel').removeClass('mo2-indReg-sel');
        $('.mo2-indReg-btn a').addClass('mo2-indRegbtn-unable').removeClass('mo2-indRegbtn-able');
        $('.mo2-indReg-btn a').attr('href','javascript:void(0);')// 禁止注册链接
      }else if ($(this).hasClass('mo2-indReg-unsel')) {
        $(this).addClass('mo2-indReg-sel').removeClass('mo2-indReg-unsel');
        $('.mo2-indReg-btn a').addClass('mo2-indRegbtn-able').removeClass('mo2-indRegbtn-unable');
        $('.mo2-indReg-btn a').attr('href','javascript:void(0);')// 添加注册链接
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
      $('.mo2-indRegbox').show();
      $('.mo2-indRegbox2').hide();
      $('.mo2-indLogbox').hide();
    });
    $('.mo2-indTab-log').click(function(){
      $('.mo2-indRegbox').hide();
      $('.mo2-indRegbox2').hide();
      $('.mo2-indLogbox').show();
    });
  });
  // 注册倒计时
  var regTim =60; //剩余时间
  function mo2_regTim(){
    if (regTim>0) {
      $('.mo2-indRegtim u').html(regTim+'秒后');
      regTim--;
      setTimeout("mo2_regTim()", 1000);
    }
    else if (regTim<=0) {
      regTim =60;
      $('.mo2-indRegvoi-btn').addClass('mo2-indRegvoi-able').removeClass('mo2-indRegvoi-unable');
      $('.mo2-indRegtim').addClass('mo2-regTin-able').removeClass('mo2-regTin-unable');
      $('.mo2-indRegtim span').html('重新发送');
    }
  }

  // 隐藏登录验证码
  function hideCode(){
    $('.mo2-indLog-code').hide();
    $('.mo2-indRegbox').css('padding','')
    $('.mo2-indLogitem-use').css('margin-bottom',9);
    $('.mo2-indLogitem-psw').css('margin-bottom',22);
    $('.mo2-indRegbox').css('padding','30px 0 0px 0')
  }

  // 显示登录验证码
  function showCode(){
    $('.mo2-indLog-code').show();
    $('.mo2-indRegbox').css('padding','14px 0 0px 0')
    $('.mo2-indLogitem-use').css('margin-bottom',6);
    $('.mo2-indLogitem-psw').css('margin-bottom',6);
  }
  //手机号判断
  var _phone_post = 0;
  $('#regTel').blur(function(){
    var reg=/^1\d{10}$/;
    if($(this).val().length > 0){
      if (!reg.test($(this).val())){
        $(this).next(".mo2-indLogwar").children("u").html('手机号格式错误');
        $(this).next(".mo2-indLogwar").show();
      }else {
        var p={"phone":$(this).val(),"zml":"00007"};
        postData("/Home-Register-ckphone_new",p,function(d){
          if(d.message!=' '){
            $('#regTel').next(".mo2-indLogwar").children("u").html(d.message);
            $('#regTel').next(".mo2-indLogwar").show();
          }else{
            $('#regTel').next(".mo2-indLogwar").children("u").html('');
            $('#regTel').next(".mo2-indLogwar").hide();
            _phone_post = 1;
          }
        });
      }
    }else{
      $(this).next(".mo2-indLogwar").children("u").html('');
      $(this).next(".mo2-indLogwar").hide();
    }
  });

  //密码判断
  var _pass_keyup = 0;
  $('#pass').blur(function(){
    var reg = /^[a-zA-Z0-9]*$/g;
    if ($(this).val().length>0){
      if ($(this).val().length < 6){
        $(this).next(".mo2-indLogwar").children("u").html('密码设置有误');
        $(this).next(".mo2-indLogwar").show();
      }else if ($(this).val().length > 20){
        $(this).next(".mo2-indLogwar").children("u").html('密码设置有误');
        $(this).next(".mo2-indLogwar").show();
      }else if (!reg.test($(this).val())){
        $(this).next(".mo2-indLogwar").children("u").html('密码设置有误');
        $(this).next(".mo2-indLogwar").show();
      }else {
        $(this).next(".mo2-indLogwar").children("u").html('');
        $(this).next(".mo2-indLogwar").hide();
        _pass_keyup = 1;
      }
    }else {
      $(this).next(".mo2-indLogwar").children("u").html('');
      $(this).next(".mo2-indLogwar").hide();
    }
  });
  //控制密码长度不能大于20
  function isNumber(){
    var codeNumber=$("#pass").val();
    if((codeNumber.length>20)){
      $("#pass").val(codeNumber.substring(0,codeNumber.length-1))
    }
  }

  $('.mo2-indRegtim').click(function(){

    if ($(this).hasClass('mo2-regTin-able')) {
      $('.mo2-indRegvoi-btn').addClass('mo2-indRegvoi-unable').removeClass('mo2-indRegvoi-able');
      $('.mo2-indRegtim').addClass('mo2-regTin-unable').removeClass('mo2-regTin-able');
      $('.mo2-indRegtim span').html('重新发送');
      sendmsg("zmlcs");
    }else {
      $('#r_code').html('请稍后点击');
      $('#w_code').show();
    }
  });

  //发送短信验证码
  function sendmsg(zmlcs){
    if (_phone_post == 1 && _pass_keyup==1){
      $.ajax({
        type:"POST",
        data:{"phone":$('#regTel').val(),"code":$('#vcode').val(),"type":0,"zml":zmlcs},
        url:"/home-register-sendphone",
        success:function(msg){
          var obj = eval('('+msg+')');
          var obj = eval(obj);
          if (obj.status == 1){
            mo2_regTim();
            $("#code").siblings(".mo2-indLogwar").children("u").html("");
            $("#code").siblings(".mo2-indLogwar").hide();
          }else if(obj.status==2){
            $("#code").siblings(".mo2-indLogwar").children("u").html(obj.msg);
            $("#code").siblings(".mo2-indLogwar").show();
          }else {
            $("#code").siblings(".mo2-indLogwar").children("u").html("发送失败");
            $("#code").siblings(".mo2-indLogwar").show();
          }
        }
      });
    }
  }

  $('.mo2-indRegvoi-btn').click(function(){
    if ($(this).hasClass('mo2-indRegvoi-able')) {
      var reg_phone=/^1\d{10}$/;
      var _phone = 0;
      if ($("#regTel").val() == ''){
        $('#r_phone').html('请填写手机号');
        $('#w_phone').show();
      }else if ($('#regTel').val().length != 11 && !reg_phone.test($('#regTel').val())){
        $('#r_phone').html('手机号格式错误');
        $('#w_phone').show();
      }else {
        var p={"phone":$("#regTel").val(),"zml":"00008"};
        postData("/Home-Register-ckphone_new",p,function(d){
          if(d.status==0){
            $('#r_phone').html(d.message);
            $('#w_phone').show();
          }else if (d.status == 1){
            $('#r_phone').html('');
            $('#w_phone').hide();
            var reg_pass = /^[a-zA-Z0-9]*$/g;
            if ($('#pass').val() == ''){
              $('#r_pass').html('请填写密码');
              $('#w_pass').show();
            }else if ($('#pass').val().length < 6 || $('#pass').val().length > 20 || !reg_pass.test($('#pass').val()) ){
              $('#r_pass').html('密码设置有误');
              $('#w_pass').show();
            }else {
              $('.m2-login-voice,.m2-commonBg').show();
              $('#r_code').html('');
              $('#w_code').hide();
            }
          }
        });
      }
    }else {
      $('#r_code').html('请稍后点击');
      $('#w_code').show();
    }
  });
  //发送语音验证码
  $('.m2-logVoi-sur').click(function(){
    $.ajax({
      type:"POST",
      data:{"phone":$('#regTel').val(),"code":$('#vcode').val(),"type":1,"zml":"hhh"},
      url:"/home-register-sendphone",
      success:function(msg){
        var obj = eval('('+msg+')');
        var obj = eval(obj);
        if(obj.status == 1){
          $('.mo2-indRegvoi-btn').addClass('mo2-indRegvoi-unable').removeClass('mo2-indRegvoi-able');
          $('.mo2-indRegtim').addClass('mo2-regTin-unable').removeClass('mo2-regTin-able');
          $('.mo2-indRegtim span').html('重新发送');
          mo2_regTim();
        }else{
          $("#code").siblings(".mo2-indLogwar").children("u").html("发送失败!");
          $("#code").siblings(".mo2-indLogwar").show();
        }
      }
    });
  });
  $('.mo2-indReg-refresh').click(function(){
    $('#reverifyCode').click();
  });
  var _code_blur = 0;
  $("#code").blur(function(){
    if ($(this).val().length > 0){
      if ($(this).val().length != 6){
        $("#code").siblings(".mo2-indLogwar").children("u").html('验证码错误！');
        $("#code").siblings(".mo2-indLogwar").show();
      }else {
        _code_blur = 1;
      }
    }else{
      $("#code").siblings(".mo2-indLogwar").children("u").html('');
      $("#code").siblings(".mo2-indLogwar").hide();
    }
  });

  function registeraaa(){
    if ($('.mo2-indReg-btn a').hasClass('mo2-indRegbtn-able')){
      var canSubmit=true;
      if($("#code").val().length==0){
        $("#code").siblings(".mo2-indLogwar").children("u").html("验证码不能为空");
        $("#code").siblings(".mo2-indLogwar").show();
        canSubmit = false;
      }

      if (canSubmit !== true) return false;
      var p={"phone":$('#regTel').val(),"password":$('#pass').val(),"msgcode":$('#code').val()};
      postData("/Home-Register-index_register",p,function(msg){
        if (msg.status == 1){
          $("#newregister").show();//显示注册成功领取奖励金页面
          //window.location.reload();//先隐藏首页重新加载
          setTimeout("window.location.reload();",5000)//设置延时、、
        }else if (msg.status == 0){
          $("#code").siblings(".mo2-indLogwar").children("u").html(msg.message);
          $("#code").siblings(".mo2-indLogwar").show();
        }else if (msg.status == 2){
          $("#code").siblings(".mo2-indLogwar").children("u").html(msg.message);
          $("#code").siblings(".mo2-indLogwar").show();
        }
      });
    }
  }
  function verifycode(){
    if ($('.mo2-indReg-btn a').hasClass('mo2-indRegbtn-able')){
      var canSubmit=true;
      $("#reverifyCode").siblings(".mo2-indLogwar").children("u").html('');
      if($("#vcode").val().length==0){
        $("#reverifyCode").siblings(".mo2-indLogwar").children("u").html("验证码不能为空");
        $("#reverifyCode").siblings(".mo2-indLogwar").show();
        canSubmit = false;
      }
      if($("#regTel").val().length==0){
        $("#regTel").next(".mo2-indLogwar").children("u").html("手机号不能为空");
        $("#regTel").next(".mo2-indLogwar").show();
        canSubmit = false;
      }
      if($("#pass").val().length==0){
        $("#pass").next(".mo2-indLogwar").children("u").html("密码不能为空");
        $("#pass").next(".mo2-indLogwar").show();
        canSubmit = false;
      }
      $(".mo2-indRegbox .mo2-indLogwar u").each(function(){
        if($(this).html().length>0){
          canSubmit = false;
        }
      });
      if (canSubmit !== true) return false;
      var p={"vcode":$("#vcode").val()};
      postData("/Home-Register-ckcode",p,function(d){
        if(d.message!=" "){
          $("#reverifyCode").siblings(".mo2-indLogwar").children("u").html(d.message);
          $("#reverifyCode").siblings(".mo2-indLogwar").show();
          return false;
        }else{
          $("#reverifyCode").siblings(".mo2-indLogwar").children("u").html('');
          $("#reverifyCode").siblings(".mo2-indLogwar").hide();
          $('.mo2-indRegbox').css('display','none');
          $('.mo2-indRegbox2').css('display','block');
        }

      });
    }
  }
  function oklinklogin(){
    window.open('thirdparty-oklink-oauth_getcode');
  }

  $('#user_name').blur(function(){
    if ($(this).val().length > 0){
      if ($(this).val().lenght < 6){
        $('#r_usernameMain').html('用户名长度错误');
        $('#w_usernameMain').show();
      }else{
        $('#r_usernameMain').html('');
        $('#w_usernameMain').hide();
      }
    }else {
      $('#r_usernameMain').html('');
      $('#w_usernameMain').hide();
    }
  });

  $('#pass_word').blur(function(){
    if ($(this).val().length > 0){
      if ($(this).val().length < 6 || $(this).val().length >20){
        $('#r_passwordMain').html('密码格式错误');
        $('#w_passwordMain').show();
      }
    }else {
      $('#r_passwordMain').html('');
      $('#w_passwordMain').hide();
    }
  });
  function login(){
    var p = makevar(['user_name','pass_word','vcode']);
    var canSubmit = true;
    if($('#user_name').val()==""){
      $('#r_usernameMain').html('用户名不能为空');
      $('#w_usernameMain').show();
    }else if($('#user_name').val().lenght <6){
      $('#r_usernameMain').html('用户名长度错误');
      $('#w_usernameMain').show();
    }else {
      if ($('#pass_word').val() == ""){
        $('#r_passwordMain').html('密码不能为空');
        $('#w_passwordMain').show();
      }else if ($('#pass_word').val().length < 6 || $('#pass_word').val().length > 20){
        $('#r_passwordMain').html('密码长度错误');
        $('#w_passwordMain').show();
      }else {
        $('#r_usernameMain').html('');
        $('#w_usernameMain').hide();
        $('#r_passwordMain').html('');
        $('#w_passwordMain').hide();
        postData("/Home-Login-index_login",p,function(d){
          if(d.status==0){
            $('#r_usernameMain').html(d.message);
            $('#w_usernameMain').show();
          }else if(d.status==6){
//						showLoginDialog(d.mycoin,11);
            window.location.reload();
          }else if(d.status==1){
            window.location.reload();
          }else if(d.status==2){
            window.location.href = "dashiji_show.html#15319.html";
          }
        });
      }
    }
  }
</script>
<script type="text/javascript">
  //codeShow();
  //显示验证码
  function codeShow(){
    $('.mo2-indLog-code').show();
  }
</script>
<!--[if lt IE 9]>
<script type="text/javascript">
  $(function(){
    $('input').each(function(){
      if($(this).hasClass('m2-ind-banPsw')){
        $(this).parents('.mo2-indLogitem').append('<span class="m2-ind-place" style="display:inline-block;position:absolute;color:#999;width:195px;height:40px;top:0;left:35px;line-height:40px;font-size:14px;z-index:5;padding-left:10px;"></span>');
        $('#pass').siblings('.m2-ind-place').html('6-15位数字与字母组合的密码');
        $('#pass_word').siblings('.m2-ind-place').html('输入登录密码');

        $(this).siblings('.m2-ind-place').click(function(){
          $(this).hide();
          $(this).siblings('.m2-ind-banPsw').focus();
        })
        $(this).focus(function(){
          //获取焦点隐藏
          if($(this).val()==''){
            $(this).siblings('.m2-ind-place').hide();
          }

        });
        $(this).blur(function(){
          //失去焦点显示
          if($(this).val()==''){
            $(this).siblings('.m2-ind-place').show();
          }

        });
      }else{
        if($(this).attr('placeholder')!=undefined && $(this).attr('PlaceHolder')!=''){
          var curHol = $(this).attr('placeholder');
          //初始值设置成placeholder
          $(this).val(curHol);
          $(this).css('color',"#999");


          //获得焦点值为空
          $(this).focus(function(){
            if($(this).attr('PlaceHolder')!=''){
              $(this).val('');
              $(this).css('color',"#333");
            }

          });

          //值为空是失去焦点，值设置成placeholder
          $(this).blur(function(){
            if ($(this).val()=='') {
              $(this).val(curHol);
              $(this).css('color',"#999");
            }else if ($(this).val()!='' && $(this).val()!=curHol) {
              $(this).css('color',"#333");
            }
          });

          //键盘事件
          $(this).keyup(function(){
            if ($(this).val()!='') {
              $(this).css('color',"#333");
            }
          });
        }
      }
    })
  })
</script>
<![endif]-->
<script>
  document.onkeydown=function(event){
    var e = event || window.event || arguments.callee.caller.arguments[0];
    if(e && e.keyCode==13){
      login();
    }
  };

  //活动加息
  $(".huodongjiaxi").mouseover(function(){
    $(this).parent().find(".jiaxishow").css("display","block");
  })
  $(".huodongjiaxi").mouseout(function(){
    $(this).parent().find(".jiaxishow").hide();
  })
</script>
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
          <li><a href="touzi?pageNo=1">我要投资</a></li>
          <li><a href="guide">帮助中心</a></li>
          <li><a href="guanyu_aiqianbang">关于我们</a></li>
          <li><a href="licai_gonggao">新闻公告</a></li>
        </ul>
      </div>
      <div class="mainNewown">
        <p>页面版权所有：北京爱钱帮财富科技有限公司&nbsp;&nbsp;京ICP证150216号</p>
        <!--                <p>推荐使用IE7以上版本&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法律顾问：<a href="http://www.iqianbang.com/ihzhb-527.shtml" target="_blank" style="color:#a4a3a3">国浩律师事务所</a></p>-->
        <p>推荐使用IE7以上版本&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法律顾问：国浩律师事务所（grandall.com.cn）</p>
      </div>
      <div class="mainNewsafe">
        <ul>
          <li class="icon-norton"><a rel="nofollow"   target='_blank'></a></li>
         <li class="icon-kx"><a rel="nofollow"   target="_blank"></a></li>
          <li class="icon-zhx"><a rel="nofollow"   target="_blank"></a></li>
          <li class="icon-icp"><a rel="nofollow"   target="_blank"></a></li>
        </ul>
      </div>
    </div>

  </div>
</div>
<!--底部[end]-->
<script type="text/javascript">
  //全局变量
  var GV = {
    DIMAUB: "",
    JS_ROOT: "statics/home/js/",
    TOKEN: "6666cd76f96956469e7be39d750cc7d9_ee70776ff5a128756690de65b1bc04be",
    THIS_URL: "Index-",
    TINVEST_URL: "/invest-shownewinvest.shtml"
  };
</script>

<script src="js/common.js?20160520"></script>
<link type="text/css" rel="stylesheet" href="css/colorbox.css?20160520">
<script src="js/layer.js?20160520"></script>
<script src="js/common.js?20160520"></script>
<!--tipBOx-->
<script language=JavaScript type="text/javascript" src="js/tab.js?20160520"></script>
<script type="text/javascript">$(function () {
  if ($.browser && $.browser.msie && ($.browser.version == "6.0") && !$.support.style) {
    $('#fixed-services').css('display', 'none');
  }
})
</script>
</body>
</html>
</body>
</html>