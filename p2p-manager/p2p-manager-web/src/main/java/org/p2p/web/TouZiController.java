package org.p2p.web;

import org.p2p.pojo.vo.TouZiProject;
import org.p2p.service.TouZiService;
import org.p2p.utlis.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by 吴春杰 on 2017/9/11.
 */
@Controller
public class TouZiController {

    @Autowired
    private TouZiService service;

    @RequestMapping("touzi")
    public  String touziList(int pageNo,Model model){
        Page page = new Page();
        page.setPage(pageNo);
        List<TouZiProject> projects = service.touziList(page);
        model.addAttribute("projects",projects);
        return "touzi";
    }
}
