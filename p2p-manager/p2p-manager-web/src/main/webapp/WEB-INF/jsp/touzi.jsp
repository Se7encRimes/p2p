
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/6/006
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
  <meta charset="UTF-8">


  <meta name="keywords" content="网贷理财,高收益投资理财项目,如何网上赚钱,理财知识,短期理财,银行理财,北京理财,普惠金融投资理财网">
  <meta name="description" content="爱钱帮是目前网贷理财知名的高收益理财项目平台，有海鲜帮、娱乐帮、汽车帮等高收益理财产品，还有“帮派”项目也接连而出，教您理财知识，如何网上赚钱。">
  <title>我要投资丨北京理财_银行理财_为您赚钱的互联网金融短期理财投资平台-爱钱帮       </title>

  <!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <![endif]-->
  <link  rel="Shortcut  Icon"  href="images/minilogo.png">
  <link rel="stylesheet" href="css/m2-commonNew.css?20160520">
  <link rel="stylesheet" href="css/m2-main.css?20160520">
  <link rel="stylesheet" href="css/m2-common.css?20160520">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/common.js?20160520"></script>

  <!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <![endif]-->
  <link rel="stylesheet" href="css/newPage.css?20160520" />
  <link rel="stylesheet" type="text/css" href="css/projectList.css?20160520">
  <script type="text/javascript" src="js/projectList.js?20160520"></script>
  <script type="text/javascript" src="js/common.js?20160520"></script>
  <script type="text/javascript" src="js/m2-front.js?20160520"></script>

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
        <ul class="m2-commonNavul-fir" data_page='twopage'>
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
  <div class="m2-investBanner"></div>
  <div class="m2-investBread">
    <div class="m2-investBreadbox">
      <i class="m2-investBreadicon"></i>
      <span class="m2-invBre-fat"><a href="index.html">首页&nbsp;&gt;</a></span>
      <span class="m2-invBre-fat"><%-- <a class="m2-invBre-cur" href="touzi_licai_chanpin.html">项目直投</a>--%></span>

    </div>
  </div>
  <div class="m2-invTable-con">
    <ul class="m2-invTablelist"><!-- 只能显示7个，其余隐藏 -->
      <li class="m2-invTab-sel"><span onclick="window.location.href='#'">项目直投</span><i></i></li>
   <%--   <li class="m2-invTab-unsel"><span onclick="window.location.href='/wangshang_licai_chanpin.html'">债权转让</span><i></i></li>
      <li class="m2-invTab-unsel"><span onclick="window.location.href='/duanqi_licai_chanpin.html'">爱车贷</span><i></i></li>
      <li class="m2-invTab-unsel"><span onclick="window.location.href='/aifangdai_licai_chanpin.html'">爱房贷</span><i></i></li>
      <!--		<li class="m2-invTab-unsel"><span onclick="window.location.href='/yulebang_licai_chanpin.html'">娱乐帮</span><i></i></li>-->
      <li class="m2-invTab-unsel"><span onclick="window.location.href='/consumer_finance_chanpin.html'">消费金融</span><i></i></li>
      <!--		<li class="m2-invTab-unsel"><span onclick="window.location.href='/haixiangbang_licai_chanpin.html'">海鲜帮</span><i></i></li>-->
      <li class="m2-invTab-unsel"><span onclick="window.location.href='/aigongyi_licai_chanpin.html'">爱公益</span><i></i></li>--%>


    </ul>
  </div>
  <div class="m2-invSearch">
    <div class="m2-invSearch-con">
      <!--		<h3>项目筛选</h3>-->
      <i class="m2-invSea-arrUp"></i>
    </div>
    <div class="m2-invSearchbox" style="display: none;">
      <ul class="m2-invSea-ben" id="search_borrow_interest_rate">
        <li class="m2-invSea-tit"><span>收&nbsp;&nbsp;益&nbsp;&nbsp;率</span></li>
        <li data="0" class="m2-invSea-sel m2-invSea-all"><span onclick="searchBorrow('borrow_interest_rate',0)">全部</span></li>
        <li data="0|8" class="m2-invSea-unsel"><span onclick="searchBorrow('borrow_interest_rate','0|8')">8%及以下</span></li>
        <li data="9|9" class="m2-invSea-unsel"><span onclick="searchBorrow('borrow_interest_rate','9|9')">9%</span></li>
        <li data="10|10" class="m2-invSea-unsel"><span onclick="searchBorrow('borrow_interest_rate','10|10')">10%</span></li>
        <li data="10.1|100" class="m2-invSea-unsel"><span onclick="searchBorrow('borrow_interest_rate','10.1|100')">其他</span></li>
      </ul>
      <ul class="m2-invSea-tim" id="search_leftday">
        <li class="m2-invSea-tit"><span>时&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;限</span></li>
        <li data="0" class="m2-invSea-sel m2-invSea-all"><span onclick="searchBorrow('leftday',0)">全部</span></li>
        <li data="0|60" class="m2-invSea-unsel"><span onclick="searchBorrow('leftday','0|60')">60天及以下</span></li>
        <li data="61|180" class="m2-invSea-unsel"><span onclick="searchBorrow('leftday','61|180')">61天-180天</span></li>
        <li data="181|360" class="m2-invSea-unsel"><span onclick="searchBorrow('leftday','181|360')">181天-360天</span></li>
        <li data="361|3600" class="m2-invSea-unsel"><span onclick="searchBorrow('leftday','361|3600')">其他</span></li>
      </ul>
		<ul class="m2-invSea-sum" id="search_borrow_money">
			<li class="m2-invSea-tit"><span>金&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;额</span></li>
			<li data="0" class="m2-invSea-sel m2-invSea-all"><span onclick="searchBorrow('borrow_money',0)">全部</span></li>
			<li data="0|500000" class="m2-invSea-unsel"><span onclick="searchBorrow('borrow_money','0|500000')">50万以下</span></li>
			<li data="500001|1000000" class="m2-invSea-unsel"><span onclick="searchBorrow('borrow_money','500001|1000000')">50万-100万</span></li>
			<li data="1000001|2000000" class="m2-invSea-unsel"><span onclick="searchBorrow('borrow_money','1000001|2000000')">100万-200万</span></li>

		</ul>
		<ul class="m2-invSea-pro" id="search_progress">
      <li class="m2-invSea-tit"><span>进&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;度</span></li>
      <li data="0" class="m2-invSea-sel m2-invSea-all"><span onclick="searchBorrow('progress',0)">全部</span></li>
      <li data="0|30" class="m2-invSea-unsel"><span onclick="searchBorrow('progress','0|30')">30%以下</span></li>
      <li data="31.01|60" class="m2-invSea-unsel"><span onclick="searchBorrow('progress','30.01|60')">30%-60%</span></li>
      <li  data="61.01|100" class="m2-invSea-unsel"><span onclick="searchBorrow('progress','60.01|100')">60%-100%</span></li>

    </ul>
      <ul class="m2-invSea-sta" id="search_borrow_status">
        <li class="m2-invSea-tit"><span>项目状态</span></li>
        <li data="0" class="m2-invSea-sel m2-invSea-all"><span onclick="searchBorrow('borrow_status','0')">全部</span></li>
        <li data="2" class="m2-invSea-unsel"><span onclick="searchBorrow('borrow_status','2')">正在募集</span></li>
        <li data="6" class="m2-invSea-unsel"><span onclick="searchBorrow('borrow_status','6')">还款中</span></li>
        <li data="7" class="m2-invSea-unsel"><span onclick="searchBorrow('borrow_status','7')">已结清</span></li>
      </ul>
      <div class="m2-invSeadisply">
        <span style="margin-left:10px;">筛选条件</span>
        <b class="m2-invDis-ben" onclick="searchBorrow('borrow_interest_rate',0)">全部<i></i></b>
        <b class="m2-invDis-tim" onclick="searchBorrow('leftday',0)">全部<i></i></b>
        <b class="m2-invDis-sum" onclick="searchBorrow('borrow_money',0)">全部<i></i></b>
        <b class="m2-invDis-pro" onclick="searchBorrow('progress',0)">全部<i></i></b>
        <b class="m2-invDis-sta" onclick="searchBorrow('borrow_status',0)">全部<i></i></b>
        <u onclick="searchBorrow('borrow_interest_rate',0)&searchBorrow('leftday',0)&searchBorrow('borrow_money',0)&searchBorrow('progress',0)&searchBorrow('borrow_status',0)"><i></i>重置</u>
      </div>
    </div>
  </div>
  <div class="m2-invResult-con">
    <div class="m2-invResult-head">
      <h3><i></i>项目筛选列表</h3>
    </div>
    <div style="width:100%; height:100%; position:fixed; z-index:100;top:0; left:0;display:none;" id="allP" >
      <div style="width:100%; height:100%; position:absolute; top:0; left:0; background:#000; opacity:0.5;"></div>
      <div style="width:404px; height:154px; background:#fff; position:absolute; top:50%; left:50%; margin-left:-252px; margin-top:-100px; border:2px solid #666;">
        <p style="color: #666666;font-size: 16px;position:absolute;line-height:170px;text-align: center; font-family: Microsoft YaHei;;">该项目已还清，为保护企业隐私，不再公示项目信息</p>
        <div style="width: 30px;height: 30px;position: absolute;top: 11px;right: 0px;color: #666;font-size: 20px;cursor: pointer;" id="close">X</div>
      </div>

    </div>
    <div class="m2-invResuleitem-box">
      <ul>

        <c:forEach items="${projects}" var="project">

          <li class="m2-invResuleitem">
            <div class="m2-invItem-lef">
              <div class="m2-invItemleft-lef">

                <img src="${pageContext.request.contextPath}/my_files/${project.carimg}" alt="${project.carinfo}" />
              </div>
              <div class="m2-invItemleft-rig">
                <h4><i class="m2-invItemIcon-inv"></i>
                  <a href="chanpin?id=${project.id}" target="_blank" title="${project.carinfo}">${project.carinfo}</a>
                </h4>
                <ul class="m2-invItemleft-list">
                  <li>
			<span  class="m2-invItemdet-big huodongjiaxi">${project.rate*100}%
            </span>
                    <span class="m2-invItemdet-nor">预期年化收益率</span>
                    <i class="m2-invItemdet-line"></i>
                  </li>
                  <li>
                    <span class="m2-invItemdet-big">${project.residueTime}天</span>
                    <span class="m2-invItemdet-nor">期限</span>
                    <i class="m2-invItemdet-line"></i>
                  </li>
                  <li>
                    <span class="m2-invItemdet-big">${project.money}元</span>
                    <span class="m2-invItemdet-nor">融资金额</span>
                  </li>
                </ul>
                <div class="m2-invItemprogress">
		<span class="m2-invItemprogress-tit">
          <c:choose>
            <c:when test="${project.money==project.jindu}">
              还款中
            </c:when>
            <c:otherwise>
              正在募集
            </c:otherwise>
          </c:choose>
        </span>
                  <b>
                    <i style="width:${project.plan}% "></i>
                    <u style="left:${project.plan}%">可投：${project.residuemoney}元</u>
                  </b>
                  <span class="m2-invItemprogress-per">${project.plan}%</span>
                </div>
              </div>
            </div>
            <div class="m2-invItem-rig">
              <div class="m2-invItemrig-main">
                <p class="m2-invItemrig-gua">
                  <span class="m2-invItemrig-guaTit" style="color:#333;">担保措施:</span>
                  <span class="m2-invItemrig-guaDet" style="color:#ff9900;">${project.guarantee}</span>
                </p>
                <div class="m2-invItemrig-link">
                  <a href="chanpin?id=${project.id}" class="m2-invItemlink-inv" target="_blank" title="点击立即投资 ${project.carinfo}">立即投资</a>
                </div>
              </div>
              <p class="m2-invItem-det" style="text-indent:20px;">投资万元预期收益：<span>${project.rate*10000}元</span></p>
              <p class="m2-invItem-det">投资起点金额：<span style="color:#ff6666;">100元</span></p>
            </div>
          </li>

        </c:forEach>



    </div>
    <div class="m2-newListpage-con" style="padding-top:5px;">
      <div class="m2-newListpage">
        <div class="m2-news-pages" style="padding-right:40px;margin:12px auto;">
          <a href='/touzi_licai_chanpin.html?isAjax=1&type=borrow&page=1' class="m2-pages-num m2-page-prev">&lt;</a><a href='/touzi_licai_chanpin.html?isAjax=1&type=borrow&page=1' class="m2-pages-num m2-page-sel">1</a><a href='/touzi_licai_chanpin.html?isAjax=1&type=borrow&page=2' class="m2-pages-num m2-page-unsel">2</a><a href='/touzi_licai_chanpin.html?isAjax=1&type=borrow&page=3' class="m2-pages-num m2-page-unsel">3</a><a href='/touzi_licai_chanpin.html?isAjax=1&type=borrow&page=4' class="m2-pages-num m2-page-unsel">4</a><a href='/touzi_licai_chanpin.html?isAjax=1&type=borrow&page=5' class="m2-pages-num m2-page-unsel">5</a><a href='/touzi_licai_chanpin.html?isAjax=1&type=borrow&page=2' class="m2-pages-num m2-page-next">&gt;</a>		</div>
      </div>
    </div>
    <script type="text/javascript">
      var oP=document.getElementById('allP');
      var oClose=document.getElementById('close');
      //oP.style.display='none';
      oClose.onclick=function(){
        oP.style.display='none';
      };
      /**
       * 已结束的项目不允许查看合同
       */
      function linkContract(that){
        oP.style.display='block';
      }

      $(".huodongjiaxi").mouseover(function(){
        $(this).find(".jiaxishow").show();
      })
      $(".huodongjiaxi").mouseout(function(){
        $(this).find(".jiaxishow").hide();
      })
    </script>


  </div>

  <script type="text/javascript">
    //分页
    $(document).on('click','.m2-news-pages a',function(){
      $.ajax({
        type: "GET",
        url: $(this).attr('href'),
        success: function(d) {
          $(".m2-invResult-con").html(d);
        }
      });
      return false;
    })
    $(function(){
      $('.m2-invTablelist li').click(function(){
        if ($(this).hasClass('m2-invTab-unsel')) {
          $(this).addClass('m2-invTab-sel').removeClass('m2-invTab-unsel');
          $(this).siblings('.m2-invTab-sel').addClass('m2-invTab-unsel').removeClass('m2-invTab-sel');
          //$('.m2-invSearch-con h3').html($(this).children('span').html()); //改变下方H3的值
        }
      });
      $('.m2-invTabhide-list li').click(function(){
        var newCon = $(this).html();
        var oldCon = $('.m2-invTab-old span').html();
        $('.m2-invTab-old span').html(newCon); //改变最后一个LI
        $(this).html(oldCon);
        $('.m2-invTab-old').addClass('m2-invTab-sel').removeClass('m2-invTab-unsel');
        $('.m2-invTab-old').siblings('.m2-invTab-sel').addClass('m2-invTab-unsel').removeClass('m2-invTab-sel');
      })

      var disIndex =0; //li的index值
      //搜索条件点击事件
      $('.m2-invSearchbox ul li span').click(function(){
        if ($(this).parent().hasClass('m2-invSea-unsel')) {
          var disCon =$(this).html();
          disIndex =$(this).parent().parent().index();
          $(this).parent().addClass('m2-invSea-sel').removeClass('m2-invSea-unsel');
          $(this).parent().siblings('.m2-invSea-sel').addClass('m2-invSea-unsel').removeClass('m2-invSea-sel');
          $('.m2-invSeadisply b').eq(disIndex).show();
          $('.m2-invSeadisply b').eq(disIndex).html(disCon+"<i></i>");
          closeDis();

        }
      });

      //点击全部事件
      $('.m2-invSea-all span').click(function(){
        disIndex=$(this).parent().parent().index();
        $('.m2-invSeadisply b').eq(disIndex).hide();
      });

      //重置按钮
      $('.m2-invSeadisply u').click(function(){
        $(this).siblings('b').hide();
        $('.m2-invSea-sel').addClass('m2-invSea-unsel').removeClass('m2-invSea-sel');
        $('.m2-invSea-all').addClass('m2-invSea-sel').removeClass('m2-invSea-unsel');
      });
      closeDis();

      //列表关闭按钮
      function closeDis(){
        $('.m2-invSeadisply b i').click(function(){
          disIndex = $(this).parent().index()-1;
          $(this).parent().hide();
          $('.m2-invSearchbox ul').eq(disIndex).children('.m2-invSea-all').addClass('m2-invSea-sel').removeClass('m2-invSea-unsel');
          $('.m2-invSearchbox ul').eq(disIndex).children('.m2-invSea-all').siblings('.m2-invSea-sel').addClass('m2-invSea-unsel').removeClass('m2-invSea-sel');
        });
      }

      //筛选收起展开
      $('.m2-invSearch-con i').click(function(){
        $(this).toggleClass('m2-invSea-arrDown m2-invSea-arrUp');
        $('.m2-invSearchbox').toggle();
      });
    });
  </script>
  <script type="text/javascript">
    //倒计时
    var start_time;
    var intDiff = parseInt(start_time);

    function timeDown(intDiff){
      window.setInterval(function() {
        if (intDiff > 0) {
          $("#time").css('display', 'block');
          day = Math.floor(intDiff / (60 * 60 * 24));
          hour = Math.floor(intDiff / (60 * 60)) - (day * 24);
          minute = Math.floor(intDiff / 60) - (day * 24 * 60) - (hour * 60);
          second = Math.floor(intDiff) - (day * 24 * 60 * 60)
                  - (hour * 60 * 60) - (minute * 60);
        }
        else {
          $("#time").css('display', 'none');
          return false;
        }
        if (minute <= 9)
          minute = '0' + minute;
        if (second <= 9)
          second = '0' + second;
        $('.m2-invDay').html('<i>'+day+'</i>天&nbsp;');
        $('.m2-invHou').html('<i>'+hour+'</i>时&nbsp;');
        $('.m2-invMin').html('<i>'+minute+'</i>分&nbsp;');
        $('.m2-invSec').html('<i>'+second+'</i>秒&nbsp;');
        intDiff--;
        if (intDiff > 86400) {
          $('.m2-invSec').css('display', 'none');
        }
        if (intDiff < 86400) {
          $('.m2-invDay').css('display', 'none');
        }
        if (intDiff == 0) {
          window.location.reload();
        }
      }, 1000);
    }
    timeDown(intDiff);
  </script>
  <script type="text/javascript">
    function searchBorrow(stype,value){
      $("#search_"+stype+" li[data='"+value+"']").addClass("aprhover").siblings('li').removeClass('aprhover');
      var p=getCurrentFilter();
      getBorrowList(p);
    }

    function getBorrowList(p){
      p['isAjax']=2;
      getData("Project-index",function(d){
        if(d.status==1){
          $(".m2-invResult-con").html(d.message);
        }
      },p);
    }

    function getCurrentFilter(){
      var p={ };
      p['progress'] = $("#search_progress li.aprhover").attr('data');
      p['borrow_interest_rate'] = $("#search_borrow_interest_rate li.aprhover").attr('data');
      p['borrow_money'] = $("#search_borrow_money li.aprhover").attr('data');
      p['borrow_status'] = $("#search_borrow_status li.aprhover").attr('data');
      p['leftday'] = $("#search_leftday li.aprhover").attr('data');
      return p;
    }
  </script>
  <div id="mainNewfoot" >
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
            <li><a href="/invest">我要投资</a></li>
            <li><a href="guide.html">帮助中心</a></li>
            <li><a href="guanyu_aiqianbang.html">关于我们</a></li>
            <li><a href="/licai_gonggao">新闻公告</a></li>
          </ul>
        </div>
        <div class="mainNewown">
          <p>页面版权所有：北京爱钱帮财富科技有限公司&nbsp;&nbsp;京ICP证150216号</p>
          <!--							<p>推荐使用IE7以上版本&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法律顾问：<a href="http://www.iqianbang.com/ihzhb-527.shtml" target="_blank" style="color:#a4a3a3">国浩律师事务所</a></p>-->
          <p>推荐使用IE7以上版本&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法律顾问：国浩律师事务所（grandall.com.cn）</p>
        </div>
        <div class="mainNewsafe">
          <ul>
            <li class="icon-norton"><a href="https://sealinfo.verisign.com/splash?form_file=fdf/splash.fdf&amp;dn=www.iqianbang.com&amp;lang=zh_cn" target='_blank'></a></li>
            <!--<li class="icon-cx"><a href="https://search.szfw.org/cert/l/CX20140718008832008528" target="_blank"></a></li>
            --><li class="icon-kx"><a href="https://ss.knet.cn/verifyseal.dll?sn=e14032111010847492vg0o000000&amp;ct=df&amp;a=1&amp;pa=0.8090716653969139" target="_blank"></a></li>
            <!--								<li class="icon-360"><a href="http://webscan.360.cn/index/checkwebsite/url/www.iqianbang.com" target="_blank"></a></li>-->
            <li class="icon-zhx"><a href="http://www.itrust.org.cn/yz/pjwx.asp?wm=1076572005" target="_blank"></a></li>
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
      JS_ROOT: "js/",
      TOKEN: "b8dcf7c99b769b87cd2829c74259b334_eecebeb36ec73ad415528e2026491124",
      THIS_URL:"Project-",
      TINVEST_URL:"/invest-shownewinvest.shtml"
    };
  </script>

  <script src="js/common.js?20160520"></script>
  <link type="text/css" rel="stylesheet" href="css/colorbox.css?20160520">
  <script src="js/layer.js?20160520"></script>
  <script src="js/common.js?20160520"></script>
  <!--tipBOx-->
  <script language=JavaScript type="text/javascript" src="js/tab.js?20160520"></script>
  <script type="text/javascript">$(function(){
    if ($.browser && $.browser.msie && ($.browser.version == "6.0") && !$.support.style) {
      $('#fixed-services').css('display','none');
    }
  })
  </script>
  </body>
</html>
