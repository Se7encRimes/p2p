package org.p2p.web;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * User: zyyy
 * Date: 2017/9/12
 * Time: 22:35
 */
@Controller
@Scope("prototype")
public class TestController {
    @RequestMapping("jinxingtouzi")
    @ResponseBody
    public String t1(double invest_money){
        System.out.println(invest_money+"<======");
        return "index";
    }
}
