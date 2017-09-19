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

 
  <!--右侧悬浮条-->
  <jsp:include page="index-right.jsp"></jsp:include>

  <!-- headerStart -->
  <div class="m2-commonTop-con">
    <div class="m2-commonTop">
      <div class="m2-commonTop-left">
        <div class="m2-commonTop-tel"><i></i>4006&nbsp;-&nbsp;777&nbsp;-&nbsp;518</div>
        <div class="m2-commonTop-service"><i></i><span>客服：<a class="light-color" href="http://wpa.b.qq.com/cgi/wpa.php?ln=1&key=XzkzODA1MzA4N180NzMzMTJfNDAwNjc3NzUxOF8yXw" target="_blank">在线客服</a>
</span></div>
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
<script src=js/jquery-form.js"></script>
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

  function submitForm(){

/*    if($("#file").val()==""){
      $.messager.alert("提示","请选择文件夹");
      return false;
    }*/

    $("#itemAddForm").form('submit',{
      type:"post",  //提交方式
      url:"borrow1", //请求url
      success:function(data){ //提交成功的回调函数
        if(data==="index") {
          alert("申请成功，1秒后进入首面");
          setTimeout(function () {
            window.location.href = data;
          }, 1000);
        }else{
          alert("申请失败，请重新申请");
          setTimeout(function () {
            window.location.href = data;
          }, 1000);
        }
      }
    });
  }

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
  <div data-options="region:'center',title:'center title'" style="padding:100px;background: url(images/.jpg)" align="center">


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
<%--          <td class="label"><h2 style="color:#0000FF">申请时间:</h2></td>
          <td>
            <input  id="firstTime"  type= "text" class= "easyui-datebox" required ="required" style="width: 300px" name="firstTime" >
          </td>--%>
        </tr>

        <tr>
          <%--<td class="label"><h2 style="color:#0000FF">身份证正面照片:</h2></td>--%>
          <td width="30px">
            <HR style="border:3 double #1dffca" width="80%" color=#1dffca SIZE=3>
            <h2 style="color:#0000FF">身份证正面照片:</h2>
            <img id="ylimg" width="80px" height="80px" src="images/9.gif" />
            <input type="file" name="carimg1" onchange="yulan(this,'ylimg');"/>
          </td>

          <%--<td class="label"><h2 style="color:#0000FF">身份证反面照片:</h2></td>--%>
          <td width="30px">
            <HR style="border:3 double #1dffca" width="80%" color=#1dffca SIZE=3>
            <h2 style="color:#0000FF">身份证反面照片:</h2>
            <img id="ylimg1" width="80px" height="80px" src="images/9.gif" />
            <input type="file" name="carimg1" onchange="yulan(this,'ylimg1');"/>

          </td>

          <%--<td class="label"><h2 style="color:#0000FF">请上传您的汽车照片:</h2></td>--%>
          <td width="30px">
            <HR style="border:3 double #1dffca" width="80%" color=#1dffca SIZE=3>
            <h2 style="color:#0000FF">请上传您的汽车照片:</h2>
            <img id="ylimg2" width="80px" height="80px" src="images/9.gif" />
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
            <img id="ylimg3" width="80px" height="80px" src="images/9.gif" />
            <input type="file" name="carimg1" onchange="yulan(this,'ylimg3');"/>
          </td>

        <%--  <td class="label"><h2 style="color:#0000FF">附加资料(房产证)(照片):</h2></td>--%>
          <td  width="30px">
            <h2 style="color:#0000FF">附加资料(房产证)(照片):</h2>
            <img id="ylimg4" width="80px" height="80px" src="images/9.gif" />
            <input type="file" name="carimg1" onchange="yulan(this,'ylimg4');"/>
          </td>

          <%--<td class="label"><h2 style="color:#0000FF">家庭住址照片:</h2></td>--%>
          <td  width="30px">
            <h2 style="color:#0000FF">家庭住址照片:</h2>
            <img id="ylimg5" width="80px" height="80px" src="images/9.gif" />
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
            <img id="ylimg6" width="80px" height="80px" src="images/9.gif" />
            <input type="file" name="carimg1" onchange="yulan(this,'ylimg6');"/>
            <HR style="border:3 double #1dffca" width="80%" color=#1dffca SIZE=3>
          </td>

          <%--<td class="label"><h2 style="color:#0000FF">附加资料(社保)(照片):</h2></td>--%>
          <td  width="30px">
            <h2 style="color:#0000FF">附加资料(社保)(照片):</h2>
            <img id="ylimg7" width="80px" height="80px" src="images/9.gif" />
            <input type="file" name="carimg1" onchange="yulan(this,'ylimg7');"/>
            <HR style="border:3 double #1dffca" width="80%" color=#1dffca SIZE=3>
          </td>

          <%--<td class="label"><h2 style="color:#0000FF">附加资料(家属身份证)(照片):</h2></td>--%>
          <td width="30px">
            <h2 style="color:#0000FF">附加资料(家属身份证)(照片):</h2>
            <img id="ylimg8" width="80px" height="80px" src="images/9.gif" />
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
