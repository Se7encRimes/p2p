package org.p2p.service;

import org.p2p.pojo.vo.ProjectVague;
import org.p2p.pojo.vo.TouZiProject;
import org.p2p.utlis.Page;

import java.util.List;

/**
 * Created by 吴春杰 on 2017/9/11.
 */
public interface TouZiService {

    List<TouZiProject> touziList(Page page);

    List<TouZiProject> projectVague(ProjectVague projectVague,Page page);

    int getPageSize(ProjectVague projectVague);

    ProjectVague getProjectVague(String borrow_interest_rate,String borrow_money,String borrow_status);
}
