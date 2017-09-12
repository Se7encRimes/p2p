<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/9/7
  Time: 20:52
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
  <script src="js/html5shiv.js"></script>
  <![endif]-->
  <link  rel="Shortcut  Icon"  href="images/minilogo.png">
  <link rel="stylesheet" href="css/m2-commonNew.css?20160520">
  <link rel="stylesheet" href="css/m2-main.css?20160520">
  <link rel="stylesheet" href="css/m2-common.css?20160520">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/common.js?20160520"></script>

  <title>开通托管账户--爱钱帮</title>
  <link rel="stylesheet" href="css/login.css">
  <link rel="stylesheet" href="css/m2-login.css">
  </head>
<body>
  <div class="m2-loginBg" style="display:none;"></div>
  <div class="m2-loginReg-box" style="display:none;">
    <i class="m2-loginReg-boxClose"></i>


  </div>
  <div class="m2-login-voice" style="display:none;">
    <i class="m2-loginVoi-boxClose"></i>
    <div class="m2-logVoi-psg">您的注册手机号即将接到由，4006-777-518拨打的语音电话并播报验证码，请准确记录</div>
    <div class="m2-logVoi-btn">
      <span class="m2-logVoi-sur">确&nbsp;&nbsp;&nbsp;定</span>
      <span class="m2-logVoi-can">取&nbsp;&nbsp;&nbsp;消</span>
    </div>
  </div>
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
  <div class="m2-regist-main">
    <div class="m2-regist-center">
      <div class="m2-regist-logo" style="height:46px">
        <a href='/'><img src="images/new-logo.png"></a>
      </div>
      <div class="m2-regist-left">
        <ul style='height:50px;'>
          <!--                <li><i class="m2-regist-step"></i>注册</li>
                          <li><i class="m2-regist-step"></i>托管</li>
                          <li><i></i>注册成功</li>-->
        </ul>
        <div class="m2-regist-inputarea m2-regist-sucess">

          <h4><b>开通存管账户</b></h4>
          <table cellpadding="0" cellspacing="0" border="0">
            <tr>
              <td><i class="m2-regist-usericon"></i>真实姓名</td>
              <td class="m2-regist-tdInput"><input type="text" class="m2-regist-username" id="username" value="" placeholder="真实姓名（必填）"/><span class="m2-regist-errMsg m2-openbank-card"></span></td>
            </tr>
            <tr>
              <td><i class="m2-regist-idnumber"></i>身份证号</td>
              <td class="m2-regist-tdInput"><input type="text" class="m2-regist-username" id="card" value="" placeholder="身份证号（必填）"/><span class="m2-regist-errMsg m2-openbank-card"></span></td>
            </tr>
            <tr>
              <c:choose>
                <c:when test="${sessionScope.user==null}">
                  <td><i class="m2-regist-cardnumber"></i>手机号</td>
                  <td class="m2-regist-tdInput">
                    <span class="m2-reg-telSpan" style=""><span id="phone">${user1.phone}</span></span>
                  </td>
                </c:when>
                <c:otherwise>
                  <td><i class="m2-regist-cardnumber"></i>手机号</td>
                  <td class="m2-regist-tdInput">
                    <span class="m2-reg-telSpan" style=""><span id="phone">${sessionScope.user.phone}</span></span>
                  </td>
                </c:otherwise>
              </c:choose>

            </tr>
            <tr>
              <td><i class="m2-regist-cardnumber"></i>借记卡</td>
              <td class="m2-regist-tdInput"><input type="text" onkeydown="onlyNum();" style="ime-mode:Disabled" class="m2-regist-username" id="bankcard" value="" placeholder="借记卡卡号（必填）"/><span class="m2-regist-errMsgcard"></span></td>
            </tr>
          </table>
          <div class="m2-regist-btn m2-regist-quit" >
            <a class="openbank openAble" id="openbank">立即开通</a><a class="m2-regist-look" href="touzi?pageNo=1" target="_blank">我先看看</a>
          </div>

        </div>
        <p>为了您的数据安全，我们采用了SSL传输方式，256位SGC加密保护!</p>
      </div>
      <div class="m2-login-right2">
        <img src="images/depos.png" />
      </div>
    </div>
  </div>
  <script>
    function checkUserName() {
      if ($('#username').val() == '') {
        $('#username').next('.m2-regist-errMsg').html('真实姓名不能为空!');
        return false;
      }
      $('#username').next('.m2-regist-errMsg').html('');
      return true;
    }
    function checkIdNo() {
      var cardNum = $('#card').val();
      if (cardNum == '') {
        $('#card').next('.m2-regist-errMsg').html('身份证号不能为空!');
        return false;
      }
      return true;
    }
    function checkBankCard() {
      var bankcard = $('#bankcard').val();
      if (bankcard == '') {
        $('#bankcard').next('.m2-regist-errMsgcard').children('span').html('银行卡不能为空!');
        return false;
      }
      return true;
    }
    $(function () {
      $('#username').blur(function () {
        checkUserName();
      });
      $('#card').blur(function () {
        var bankNum = $('#card').val();
        checkIdNo();
      });
      $('#bankcard').blur(function () {
        checkBankCard();
      });
      $(".openbank").click(function () {
        if($(this).hasClass('openAble')){
          btnGrey();
          var ifUserName= checkUserName();
          var ifIdNo = checkIdNo();
          //  var ifBankCard=$('#bankcardid').next('.m2-regist-errMsgcard').children('span').html().length==0;
          var canSubmit = true;
          var p = makevar(['username', 'bankcard', 'card']);
          p['phone'] = document.getElementById("phone").innerHTML;
          if (($('#username').val() == '') || ($('#bankcard').val() == '') || ($('#card').val() == '')) {
            canSubmit = false;
          }

          $(".m2-openbank-card").each(function () {
            if ($(this).html().length > 0) {
              canSubmit = false;
            }
          });

          if (canSubmit !== true)
            return false;

          if(ifUserName&&ifIdNo){
            alert("asdsad");
            $.ajax({
              url: "openbankactive",
              data: p,
              type: "post",
              dataType: 'json',
              success: function (data) {
                if (data.status == 1) {
                  window.location.href = "index";
                } else {
                  $('#bankcard').next('.m2-regist-errMsgcard').children('span').html(data.info);
                }
              }
            });
          }

        }
      });
      $('.m2-reg-voice').click(function () {
        $('.m2-loginBg').show();
        $('.m2-login-voice').show();
        $('.m2-regTel-det').html('秒后重新获取');
        tim_Down();
      });
      $('.m2-logVoi-sur,.m2-logVoi-can').click(function () {
        $('.m2-loginBg').hide();
        $('.m2-login-voice').hide();
      });
      $('.m2-regTeltips').click(function () {
        if ($(this).hasClass('m2-regTel-step1')) {
          $(this).addClass('m2-regTel-step2').removeClass('m2-regTel-step1');
          $('.m2-regTel-det').html('秒后重新获取');
          $('.m2-regTel-sec').show().html('60');
          tim_Down();
        }

      });
      //显示弹窗
      $('.m2-trust-btn b').click(function () {
        //  $('.m2-loginBg').show();
        // $('.m2-loginReg-box').show();
        window.open('/invest-c1');
      });

//隐藏弹窗
      $(".m2-loginReg-boxClose").click(function () {
        $('.m2-loginBg').hide();
        $('.m2-loginReg-box').hide();
      });
    })
  </script>
  <script type="text/javascript">
    var send_flag = true;
    var show_flag = true;
    var card_no;

    $('#bankcard').keyup(function () {

      var tcard_no = $('#bankcard').val();
      if (tcard_no.length < 6) {
        $('#bankcard').next('.m2-regist-errMsgcard').children('span').html('');
        show_flag = false;
        return;
      } else if (card_no) {
        if (tcard_no.substr(0, 6) == card_no.substr(0, 6)) {
          return;
        } else {
          show_flag = false;
        }
      }
    });

  </script>
  <script>
    $(function(){
      //btnGrey();
      keyInput();
    })
    //键盘输入按钮变色
    function keyInput(){
      $('.m2-regist-tdInput input').keyup(function(){
        $(this).addClass('openAble');
        $('#openbank').css('background-color','#f5944f');
        $('#openbank').css('cursor','pointer');
      })
    }

    //按钮置灰
    function btnGrey(){
      $('#openbank').css('background-color','#ccc');
      $('#openbank').css('cursor','default');
      $(this).removeClass('openAble');
    }
  </script>
  </body>
</html>