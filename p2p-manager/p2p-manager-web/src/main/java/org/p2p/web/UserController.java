package org.p2p.web;

import org.p2p.pojo.po.TbUser;
import org.p2p.service.TbUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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

    @RequestMapping("/uregister")
    public  String TbUserRegister(TbUser user,Model model){
       int i = userService.save(user);
        if (i>0){
            model.addAttribute("消息","注册成功");
            return "login";
        }else if (i==-1){
            model.addAttribute("消息","手机号已存在");
            return "register";
        }else {
            return "register";
        }
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
