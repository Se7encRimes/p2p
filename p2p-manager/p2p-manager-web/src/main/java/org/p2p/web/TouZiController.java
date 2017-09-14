package org.p2p.web;

import org.p2p.pojo.vo.ProjectVague;
import org.p2p.pojo.vo.TouZiProject;
import org.p2p.service.TouZiService;
import org.p2p.utlis.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
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
//    @RequestMapping("touzi")
//    public String touziList(int pageNo,Model model){
//        Page page = new Page();
//        page.setPage(pageNo);
//        page.setRows(5);
//        List<TouZiProject> projects = service.touziList(page);
//        model.addAttribute("projects",projects);
//        return "touzi";
//    }
    //项目条件查询 List<TouZiProject>
    @RequestMapping("project-select")
    @ResponseBody
    public List<TouZiProject> projectVague(int pageNo,String borrow_interest_rate,String borrow_money,String borrow_status) throws IOException {
        ProjectVague projectVague = service.getProjectVague(borrow_interest_rate,borrow_money,borrow_status);
        Page page = new Page();
        page.setPage(pageNo);
        page.setRows(5);
        List<TouZiProject> projects = service.projectVague(projectVague, page);
        return projects;
    }
    //获取页数
    @RequestMapping("getPageSize")
    @ResponseBody
    public int getPageSize(String borrow_interest_rate,String borrow_money,String borrow_status){
        ProjectVague projectVague = service.getProjectVague(borrow_interest_rate,borrow_money,borrow_status);
        int pageSize = service.getPageSize(projectVague);
        return pageSize%5==0?pageSize/5:pageSize/5+1;
    }
}
