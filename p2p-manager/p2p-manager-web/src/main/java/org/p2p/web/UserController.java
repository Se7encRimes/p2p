package org.p2p.web;

import org.p2p.pojo.po.TbUser;
import org.p2p.service.TbUserService;
import org.p2p.utlis.MD5;
import org.p2p.utlis.ulogin;
import org.p2p.utlis.uregister;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;


/**
 * @Author:HuangJianFang
 * @Description:
 * @Date:Created in 16:15 2017/9/7
 * @Modified By:
 */

@Controller
@Scope("prototype")
public class UserController {
    @Autowired
    private TbUserService userService;

    //获取当日收益
    @RequestMapping("getEarningToday")
    @ResponseBody
    public String getEarningTaday(String userId){
        double earning = userService.selectMoney(Integer.parseInt(userId))*0.0001;
        return earning+"";
    }
    //获取累计收益
    @RequestMapping("getEarningTotal")
    @ResponseBody
    public String getEarningTotal(String userId){
        double earnings = userService.selectEarning(Integer.parseInt(userId));
        return earnings+"";
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
                    uRegister.setStatus(5);
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
        if(map.get("user")!=null){
            session.setAttribute("user",map.get("user"));
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
