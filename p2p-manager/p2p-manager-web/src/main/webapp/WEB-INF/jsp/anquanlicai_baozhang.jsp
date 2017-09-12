<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/9/11
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">

  <meta name="keywords" content="互联网金融,理财平台">
  <meta name="description" content="爱钱帮为您打造一个公平、透明、安全、高效的互联网金融平台，引入第三方平台进行资金托管，爱钱帮不接手借贷资金，保障资金安全，回归中介本质，是您首选的理财平台。">
  <title>安全保障丨理财产品，为您赚钱的互联网金融理财投资平台-爱钱帮</title>

  <!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <![endif]-->
  <link  rel="Shortcut  Icon"  href="images/minilogo.png">
  <link rel="stylesheet" href="css/m2-commonNew.css?20160520">
  <link rel="stylesheet" href="css/m2-main.css?20160520">
  <link rel="stylesheet" href="css/m2-common.css?20160520">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/common.js?20160520"></script>

  <!--右侧悬浮条-->
  <jsp:include page="index-right.jsp"></jsp:include>


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

  <meta charset="UTF-8">
  <title>安全保障</title>
  <!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <![endif]-->
  <link rel="stylesheet" href="css/front.css?20160520">
  <link rel="stylesheet" href="css/m2-main.css?20160520">
  <script type="text/javascript" src="js/m2-front.js"></script>
</head>
<body>
<!--头部start-->
<header>
  <div class="m2-secBanner-con"></div>
  <div class="security_ensure_one">
    <div class="security_ensure_content_title"><div class="left solid"></div>为什么爱钱帮安全<div class="right solid"></div></div>
    <div class="content">
      &nbsp;爱钱帮以风险防控为核心，采用六重安全保障。用户信息和资金全部在徽商银行存管，平台项目全部小额分散有抵质押的优质资产，独立的第三方担保机构提供安全保障，并且采用全方位大数据风控。平台在上线两个月获得知名投资机构，美国上市公司盛大资本的战略投资。
    </div>
  </div>
  <div class="security_ensure_two">
    <div class="security_ensure_content_title"><div class="left solid"></div>安全体系<div class="right solid"></div></div>
    <div class="content">
      <div class="lefthover">
        <span>提供担保和债权回购</span>
        <img src="images/security/securitythree.png" style="vertical-align:-2px;margin-left:2px;">
        <div class="detail" style="color:#959595;">
          <img src="images/security/securityfour.png" class="detail_title">
          担保：是指在借贷、买卖、货物运输、加工承揽等经济活动中，债权人为保障其债权实现的，要求债务人向债权人提供担保的合同。担保方式为保证、抵押、质押、留置和定金五种。
        </div>
      </div>
      <div class="righthover">
        <span>提供反担保</span>
        <img src="images/security/securitythree.png" style="vertical-align:-2px;margin-left:2px;">
        <div class="detail" style="color:#959595;">
          <img src="images/security/securityfour.png" class="detail_title">
          反担保：反担保又可称为求偿担保，偿还约定书或反保证书。是指为保障债务人之外的担保人将来承担单号责任后对债务人的追偿权的实现而设定的担保。
        </div>
      </div>
    </div>
  </div>
  <div class="security_ensure_three">
    <div class="container">
      <img src="images/security/securityfive.png">
      <div class="container_style right" style="top:10px;">
        <h4>银行存管<span>用户信息和资金银行存管，用户资金完全隔离</span></h4>
        <p>用户信息和资金全部在徽商银行存管，平台不直接经手客户资金，也无权动用客户在银行存管系统的资金。投资人通过银行存管账户投资成功后，资金将直接进入借款人账户，保证交易真实和投资人资金安全。</p>
      </div>
    </div>
    <div class="container">
      <img src="images/security/securitysix.png" class="right">
      <div class="container_style">
        <h4>收益保障<span>强力担保回购机制，三重回款保障</span></h4>
        <p>除了借款人负有还款责任，将经营收入作为第一还款来源，个人无限责任，还有可以执行的抵质押物可以变现用于还款；平台引入第三方担保机构，负有连带责任保证，承诺到期回购。同时，平台也制定了完善的法律服务体系，将法律途径引入还款保障。</p>
      </div>
    </div>
    <div class="container">
      <img src="images/security/securityseven.png">
      <div class="container_style right" style="top:46px;">
        <h4>业务安全<span>小额分散有抵质押的优质资产</span></h4>
        <p>平台秉承安全至上的资产筛选原则，选择最安全的贷款领域，选取房产与车产抵质押资产，实现贷款的小额分散，并根据不同的领域与交易场景制定严苛的准入与审批标准。每一个项目都来自平台的精心筛选。</p>
      </div>
    </div>
    <div class="container">
      <img src="images/security/securityeight.png" class="right">
      <div class="container_style">
        <h4>技术安全<span>信息技术安全，多重加密多重备份</span></h4>
        <p>团队成员具有丰富的网络技术研发经验。爱钱帮已经通过ISO27001信息安全管理体系认证，2015年，爱钱帮被授予国家高新科技企业称号。平台对信息进行信息多重备份，并使用128位加密技术，保障数据传输安全。平台严格按照隐私条款保障用户的信息。</p>
      </div>
    </div>
    <div class="container">
      <img src="images/security/securitynine.png">
      <div class="container_style right" style="top:0;">
        <h4>法律安全<span>合法合规有据可依，有效法律保障</span></h4>
        <p>2014年平台聘用了国浩律师事务所为常年法律顾问。平台模式、各类法律文书，包括各类协议、合同等，均由律师事务所审核，确保与投资人相关的各类文书合法有效。《合同法》《电子签名法》《关于人民法院审理借贷案件的若干意见》等相关法律法规，是平台提供合法的居间服务的法律基础，同时说明互联网个人借贷合同的合法性。</p>
      </div>
    </div>
    <div class="container" style="margin-bottom:0;">
      <img src="images/security/securityten.png" class="right">
      <div class="container_style">
        <h4>风控安全<span>严格风险管理，全方位大数据风控</span></h4>
        <p>爱钱帮的风险管理核心技术脱胎于德国IPC技术。平台接入了国内多家知名征信公司、数据公司，实现大数据风控。在此基础之上，爱钱帮自主研发的业内领先的大数据风控系统实现了线上审批、贷后系统监控，结合线下风控手段，形成了独特的O2O风险管理体系，确保项目安全。</p>
      </div>
    </div>
  </div>
  <div class="security_ensure_four">
    <div class="security_ensure_content_title"><div class="left solid"></div>实力合作机构<div class="right solid"></div></div>
    <div style="margin:20px auto;width:840px;">
      <a href="/home-aboutus-coorprate?id=58" target="_blank"><img src="uploadData/ad/20160512110603864.png" alt=""></a><a href="http://www.hsbank.com.cn/" target="_blank"><img src="uploadData/ad/20160512111038163.png" alt=""></a><a href="http://www.jx-bank.com/nccbank/zh_CN/home/index.html" target="_blank"><img src="uploadData/ad/2016051211111329.png" alt=""></a><a href="/home-aboutus-coorprate?id=62" target="_blank"><img src="uploadData/ad/20160512111134837.png" alt=""></a><a href="/home-aboutus-coorprate?id=59" target="_blank"><img src="uploadData/ad/20160512111157415.png" alt=""></a><a href="/home-aboutus-coorprate?id=72" target="_blank"><img src="uploadData/ad/2016051211121652.png" alt=""></a><a href="https://www.alipay.com/" target="_blank"><img src="uploadData/ad/20160512111336923.png" alt=""></a><a href="http://www.yeepay.com/" target="_blank"><img src="uploadData/ad/20160512111356562.png" alt=""></a><a href="https://www.aliyun.com/" target="_blank"><img src="uploadData/ad/20160512111411694.png" alt=""></a><a href="/home-aboutus-coorprate?id=76" target="_blank"><img src="uploadData/ad/20160512111439851.png" alt=""></a><a href="/home-aboutus-coorprate?id=61" target="_blank"><img src="uploadData/ad/20160512111459408.png" alt=""></a><a href="http://www.cecr.com.cn/bencandy.php?fid=79&amp;id=858" target="_blank"><img src="uploadData/ad/20160616194004859.png" alt=""></a>
    </div>
  </div>
  <div class="security_ensure_five">
    <p>用户信息和资金全部在徽商银行存管，马上开启您的赚钱之旅吧！</p>
    <button class="success_btn" onclick='window.location.href="touzi?pageNo=1"'>立即投资</button>
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
  <!--底部[end]-->
  <script type="text/javascript">
    //全局变量
    var GV = {
      DIMAUB: "",
      JS_ROOT: "statics/home/js/",
      TOKEN: "7b578148de1565cb7ea895370618f82e_3622fbb55461a7e248a69c8b3e651175",
      THIS_URL: "Aboutus-",
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

