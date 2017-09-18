package org.p2p.web;

import org.p2p.service.ProjectItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 * Created by 吴春杰 on 2017/9/14.
 */
@Controller
public class ProjectItemController {

    @Autowired
    private ProjectItemService service;

/*
    @RequestMapping("chanpin")
    public String getProjectItemById(int id,Model model){
        ProjectItem projectItem = service.getProjectItemById(id);
        model.addAttribute("projectItem",projectItem);
        return "chanpin";
    }
*/

}
