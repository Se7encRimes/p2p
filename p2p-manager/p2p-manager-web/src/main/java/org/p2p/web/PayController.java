package org.p2p.web;

import org.p2p.pojo.po.TbInvest;
import org.p2p.pojo.po.TbItem;
import org.p2p.pojo.po.TbUser;
import org.p2p.pojo.vo.TbUserRecoding;
import org.p2p.service.TbBorrowService;
import org.p2p.service.TbInvestService;
import org.p2p.service.TbItemService;
import org.p2p.utlis.PaymentUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.ResourceBundle;
import java.util.UUID;

/**
 * Created by 张平清 on 2017/9/11/011.
 */

@Controller
@Scope("prototype")
public class PayController {

    //借钱的接口
    @Autowired
    private TbBorrowService service;
    //总投资接口
    @Autowired
    private TbInvestService investService;

    //投资记录接口
    @Autowired
    private TbItemService  itemService;
    //判断是否开通存管
    @RequestMapping("/chanpinaction")
    public String chanpinaction(HttpServletRequest request,HttpSession session){

        TbUser user=(TbUser)session.getAttribute("user");
        int uid = user.getId();
        //查询余额
        if (service.selectByUid(uid) != null) {
            if(investService.selectBalance(uid)==null){
                session.setAttribute("balance",0);
            }
            else {
                session.setAttribute("balance",investService.selectBalance(uid));
            }
            //查询记录
            List<TbUserRecoding> tbUserRecodings=investService.selectRecode(uid);
           // new SimpleDateFormat("yyyy-MM-hh:mm:ss").format(tbUserRecodings.get())
            if(tbUserRecodings==null){
                session.setAttribute("recode",null);
            }else {

                session.setAttribute("recode",tbUserRecodings);
            }
            return "chanpin";
        }
        //不存在就进入开通存管页面
        return "home-register-openbankid";

    }

    //确认点击投资
    @RequestMapping("creatOrder")
    @ResponseBody
    public String  creat(String invest_money,int xid,HttpSession session,Model model){

        TbUser user=(TbUser)session.getAttribute("user");
        int uid = user.getId();
        double money=Double.parseDouble(invest_money);
        TbInvest tbInvest=new TbInvest();
        TbItem tbItem=new TbItem();
        tbInvest.setUserid(uid);
        //添加数据
        if(investService.selectByUid(uid)==null){

            tbInvest.setMoney(money);
            tbInvest.setEarnings(money*0.01);
            investService.insert(tbInvest);
        }else {
            TbInvest invest=investService.selectByUid(uid);
            tbInvest.setMoney(money+invest.getMoney());
            tbInvest.setEarnings(invest.getEarnings()+money*0.01);
            investService.updateByUid(tbInvest);
        }
        int id=investService.selectId(uid);
        tbItem.setEarnings(money*0.01);
        tbItem.setMoney(money);
        tbItem.setCreatedate(new Date());
        tbItem.setIncestid(id);
        tbItem.setProjectid(xid);
        if(itemService.insert(tbItem)>0){
            //随机生成订单号
            String orderNo="";
            UUID uuid = UUID.randomUUID();
            String trandNo = String.valueOf((Math.random() * 9 + 1) * 1000000);
            String sdf = new SimpleDateFormat("yyyyMMddHHMMSS").format(new Date());
            orderNo = uuid.toString().substring(0, 8);
            orderNo = orderNo + sdf ;
            session.setAttribute("money", money);
            session.setAttribute("cardNo", orderNo);
            return "pay";
        }
        return "error";
    }
    //支付action
    @RequestMapping("payAction")
    public String pay( HttpServletRequest request,String  money,String orderid){
    // 获得 支付必须基本数据

        // 银行
        String pd_FrpId = request.getParameter("pd_FrpId");

        // 发给支付公司需要哪些数据
        String p0_Cmd = "Buy";
        String p1_MerId = ResourceBundle.getBundle("merchantInfo").getString(
                "p1_MerId");
        String p2_Order = orderid;
        String p3_Amt = money;
        String p4_Cur = "CNY";
        String p5_Pid = "";
        String p6_Pcat = "";
        String p7_Pdesc = "";
        // 支付成功回调地址 ---- 第三方支付公司会访问、用户访问
        // 第三方支付可以访问网址
        String p8_Url = "http://10.31.152.19:8080/p2p/index";
        String p9_SAF = "";
        String pa_MP = "";
        String pr_NeedResponse = "1";
        // 加密hmac 需要密钥
        String keyValue = ResourceBundle.getBundle("merchantInfo").getString(
                "keyValue");
        String hmac = PaymentUtil.buildHmac(p0_Cmd, p1_MerId, p2_Order, p3_Amt,
                p4_Cur, p5_Pid, p6_Pcat, p7_Pdesc, p8_Url, p9_SAF, pa_MP,
                pd_FrpId, pr_NeedResponse, keyValue);
        // 生成url --- url?
        request.setAttribute("pd_FrpId", pd_FrpId);
        request.setAttribute("p0_Cmd", p0_Cmd);
        request.setAttribute("p1_MerId", p1_MerId);
        request.setAttribute("p2_Order", p2_Order);
        request.setAttribute("p3_Amt", p3_Amt);
        request.setAttribute("p4_Cur", p4_Cur);
        request.setAttribute("p5_Pid", p5_Pid);
        request.setAttribute("p6_Pcat", p6_Pcat);
        request.setAttribute("p7_Pdesc", p7_Pdesc);
        request.setAttribute("p8_Url", p8_Url);
        request.setAttribute("p9_SAF", p9_SAF);
        request.setAttribute("pa_MP", pa_MP);
        request.setAttribute("pr_NeedResponse", pr_NeedResponse);
        request.setAttribute("hmac", hmac);

        return "confirm";
    }

}

