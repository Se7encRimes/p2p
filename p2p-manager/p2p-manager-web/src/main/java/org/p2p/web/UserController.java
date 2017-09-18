package org.p2p.web;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.p2p.pojo.po.TbUser;
import org.p2p.pojo.vo.MyAccount;
import org.p2p.service.TbUserService;
import org.p2p.utlis.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;



@Controller
@Scope("prototype")
public class UserController {
    @Autowired
    private TbUserService userService;

    //签到
    @RequestMapping("sign_in")
    @ResponseBody
    public String sign_in(String userId){
        String str = userService.signIn(Integer.parseInt(userId));
        return str;
    }
    //签到查询
    @RequestMapping("sign_query")
    @ResponseBody
    public String sign_query(String userId){
        String str = userService.signQuery(Integer.parseInt(userId));
        return str;
    }
    //投资记录
    @RequestMapping("getInvestItem")
    @ResponseBody
    public String usercenter(String userId) throws JsonProcessingException {
        List<InvestItem> investItems= userService.getInvestItem(Integer.parseInt(userId));
        ObjectMapper mapper = new ObjectMapper();
        String json = mapper.writeValueAsString(investItems);
        System.out.println(json);
        return json;
    }
    //月收益走势
    @RequestMapping(value = "getIncomeList",produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String getIncomeList(String userId) throws JsonProcessingException {
        List<UserEnerning> list = userService.selectUserMonthEnerning(Integer.parseInt(userId));
        if(list.size()==0){
            return "";
        }
        List<String> list1 = new ArrayList<>();
        List<String> list2 = new ArrayList<>();
        System.out.println("=====>"+list.get(0).getMonth());
        System.out.println("=====>"+list.get(0).getSum());
        for(int i=0;i<list.size();i++){
            list1.add(list.get(i).getMonth());
            list2.add(list.get(i).getSum());
        }
        MonthEarning monthEarning = new MonthEarning();
        monthEarning.setMonlist(list1);
        monthEarning.setMonincomelist(list2);
        ObjectMapper mapper = new ObjectMapper();
        String json = mapper.writeValueAsString(monthEarning);
        System.out.println(json);
        return json;
    }

    //获取账户余额
    @RequestMapping("getAccountBalance")
    @ResponseBody
    public double getAccountBalance(String userId){
        Double accountBalance = userService.getAccountBalance(Integer.parseInt(userId));
        return accountBalance;
    }

    //获取成长值
    @RequestMapping(value="getGrowth",produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String getSign_Growth(String userId,int active_id) throws JsonProcessingException {
        System.err.println(active_id+"<=====");
        System.err.println("=====>"+userId);
        Sign_Growth sign_growth = userService.getSign_Growth(Integer.parseInt(userId));
        ObjectMapper mapper = new ObjectMapper();
        String json = mapper.writeValueAsString(sign_growth);
        System.err.println(json);
        return json;
    }
    //获取本金
    @RequestMapping("getMoney")
    @ResponseBody
    public double getMoney(String userId){
        Double money = userService.selectMoney(Integer.parseInt(userId));
        if (money==null){
            money=0.0;
        }
        return money;
    }

    //获取当日收益
    @RequestMapping("getEarningToday")
    @ResponseBody
    public double getEarningTaday(String userId){
        Double earning = userService.selectMoney(Integer.parseInt(userId))*0.0001;
        if (earning==null){
            earning=0.0;
        }
        BigDecimal result1 = new BigDecimal(earning);
        BigDecimal result2 = result1.setScale(2, RoundingMode.DOWN);
        double earning1 = Double.parseDouble(String.valueOf(result2));
        return earning1;
    }
    //获取累计收益
    @RequestMapping("getEarningTotal")
    @ResponseBody
    public double getEarningTotal(String userId){
        Double earnings = userService.selectEarningTotal(Integer.parseInt(userId));
        if (earnings==null){
            earnings=0.0;
        }
        return earnings;
    }

    //普通会员注册后跳转到开通存管账户
    @RequestMapping("tiaozhuan")
    public String goToOpenBank(String phone,Model model,HttpServletRequest request){
        System.out.println("========>"+phone);
        String phone1 = request.getParameter("phone");
        System.out.println("========>"+phone1);
       TbUser tbUser = userService.query(phone);
        System.out.println("========>"+tbUser);
        model.addAttribute("user1",tbUser);
        return "home-register-openbankid";
    }

    //开通存管账户
    @RequestMapping("openbankactive")
    @ResponseBody
    public uregister openBankActive(TbUser tbUser,HttpSession session){
        System.err.println(tbUser.getPassword()+"=====");
        uregister uRegister = new uregister();
        TbUser tbUser1=userService.update(tbUser);
        if(tbUser1!=null){
            uRegister.setStatus(1);
            session.setAttribute("user",tbUser1);
        }else {
            uRegister.setStatus(2);
            uRegister.setMessage("开通失败");
        }
        return uRegister;
    }

    private  MD5 md5 = new MD5();
    //注册普通会员
    @RequestMapping("/URegister")
    @ResponseBody
    public  uregister TbUserRegister(TbUser user,Model model,HttpServletRequest request){
        user.setPassword(md5.getMD5ofStr(user.getPassword()));
        uregister uRegister = new uregister();
        String strCode=(String)request.getSession().getAttribute("strCode");
        if(strCode!=null){
            if(strCode.equals(request.getParameter("vcode"))){
                int i = userService.save(user);
                if (i>0){
                    uRegister.setStatus(1);
                    uRegister.setPhone(user.getPhone());
                    model.addAttribute("user1",user);
                }else if (i==-1){
                    uRegister.setStatus(2);
                    uRegister.setMessage("手机号已存在");
                }else {
                    uRegister.setStatus(-1);
                    uRegister.setMessage("注册失败");
                }
            }
        }
        return uRegister;
    }

    //登录
    @RequestMapping("/ULogin")
    @ResponseBody
    public ulogin TbUserLogin(TbUser user,HttpSession session){
        user.setPassword(md5.getMD5ofStr(user.getPassword()));
        Map<String,Object> map=userService.userlogin(user);
        ulogin loginx = (ulogin) map.get("ulogin");
        MyAccount myAccount = new MyAccount();
        if(map.get("user")!=null){
            myAccount = userService.queryAccount(((TbUser)map.get("user")).getId());
            session.setAttribute("user",map.get("user"));
            session.setAttribute("myAccount",myAccount);
        }
      return loginx;
    }
    //退出
    @RequestMapping("UQuit")
    public String TbUserQuit(HttpSession session){
        session.removeAttribute("user");
        return "login";
    }
}
