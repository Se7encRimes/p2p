package org.p2p.web;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by 吴春杰 on 2017/9/5.
 */
@Controller
@Scope("prototype")
public class IndexController {

    @RequestMapping("/{page}")
    public String page(@PathVariable String page){
        return page;
    }
}
