package org.p2p.web;

import org.p2p.pojo.vo.ProjectVague;
import org.p2p.pojo.vo.TouZiProject;
import org.p2p.service.TouZiService;
import org.p2p.utlis.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Arrays;
import java.util.List;

/**
 * Created by 吴春杰 on 2017/9/11.
 * 投资项目的控制器
 */
@Controller
public class TouZiController {

    @Autowired
    private TouZiService service;

    //得到投资项目资料
    @RequestMapping("touzi")
    public String touziList(int pageNo,Model model){
        Page page = new Page();
        page.setPage(pageNo);
        List<TouZiProject> projects = service.touziList(page);
        model.addAttribute("projects",projects);
        return "touzi";
    }
    //项目模糊查询
    @RequestMapping("project-select")
    public String projectVague(String borrow_interest_rate,String borrow_money,String borrow_status,Model model){
        System.err.println("borrow_interest_rate:"+borrow_interest_rate);
        System.err.println("borrow_money:"+borrow_money);
        System.err.println("borrow_status:"+borrow_status);
        String[] money = new String[2];
        String[] rate = new String[2];
        ProjectVague projectVague = new ProjectVague();
        if("0".equals(borrow_interest_rate)){
            projectVague.setMaxRate(-1);
        }else if(borrow_interest_rate!=null&&borrow_interest_rate.length()>0){
            rate = borrow_interest_rate.split("\\|");
            double minRate = Double.parseDouble(rate[0]);
            double maxRate = Double.parseDouble(rate[1]);
            projectVague.setMinRate(minRate);
            projectVague.setMaxRate(maxRate);
            System.err.println("rate:"+ Arrays.toString(rate));
        }
        if("0".equals(borrow_money)){
            projectVague.setMaxMoney(-1);
        }else if(borrow_money!=null&&borrow_money.length()>0){
            money = borrow_money.split("\\|");
            System.err.println("money:"+Arrays.toString(money));
            double minMoney = Double.parseDouble(money[0]);
            double maxMoney = Double.parseDouble(money[1]);
            projectVague.setMinMoney(minMoney);
            projectVague.setMaxMoney(maxMoney);
        }
        int state = -1;
        if(borrow_interest_rate!=null&&borrow_interest_rate.length()>0){
            state = Integer.parseInt(borrow_interest_rate);
        }
        projectVague.setState(state);
        Page page = new Page();
        page.setPage(1);
        page.setRows(20);
        service.projectVague(projectVague,page);
        return "touzi";
    }
}
