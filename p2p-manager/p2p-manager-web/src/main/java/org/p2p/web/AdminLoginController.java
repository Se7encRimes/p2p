package org.p2p.web;

import org.p2p.pojo.po.TbAdmin;
import org.p2p.service.AdminLoginService;
import org.p2p.utlis.ulogin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * Created by 张平清 on 2017/9/9/009.
 */
@Controller
@Scope("prototype")
public class AdminLoginController {


    @Autowired
    private AdminLoginService service;


    @RequestMapping("/adminaction")
    @ResponseBody
    public ulogin login(TbAdmin admin,HttpSession session){

        //返回json数据
        session.setAttribute("admin",1);
        return service.select(admin);
    }

    @RequestMapping("adminquit")
    public String quit(HttpSession session){
        session.removeAttribute("admin");
        return "index";
    }
}
