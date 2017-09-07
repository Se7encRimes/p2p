package org.p2p.web;

import org.p2p.pojo.po.TbUser;
import org.p2p.service.TbUserService;
import org.p2p.utlis.URegister;
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

    @RequestMapping("openbankactive")
    @ResponseBody
    public URegister openBankActive(TbUser tbUser,HttpSession session){
        URegister uRegister = new URegister();
        TbUser tbUser1=userService.update(tbUser);
        if(tbUser1!=null){
            uRegister.setStatus(1);
            session.setAttribute("user",tbUser1);
        }else {
            uRegister.setMessage("开通失败");
        }
        return uRegister;
    }

    @RequestMapping("/URegister")
    @ResponseBody
    public  URegister TbUserRegister(TbUser user,Model model){
        URegister uRegister = new URegister();
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
        return uRegister;
    }

    @RequestMapping("/ulogin")
    public  String TbUserLogin(TbUser user,Model model,HttpSession session){
        Map<String,Object> map=userService.userlogin(user);
        for (String s : map.keySet()) {
            if ("user".equals(s)){
                TbUser user1 = (TbUser) map.get(s);
                session.setAttribute("user",user1);
                return "index";
            }
            if("passerro".equals(s)){
                model.addAttribute("msg","密码错误");
            }
            if("nouser".equals(s)){
                model.addAttribute("msg","用户不存在");
            }
        }
        return "login";
    }
}
