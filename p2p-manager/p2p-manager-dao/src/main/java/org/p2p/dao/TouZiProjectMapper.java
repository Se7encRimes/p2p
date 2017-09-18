package org.p2p.dao;

import org.apache.ibatis.annotations.Param;
import org.p2p.pojo.vo.ProjectVague;
import org.p2p.pojo.vo.TouZiProject;
import org.p2p.utlis.InvestItem;
import org.p2p.utlis.Page;

import java.util.Date;
import java.util.List;

/**
 * Created by 吴春杰 on 2017/9/11.
 */
public interface TouZiProjectMapper {

    List<TouZiProject> touziList(@Param("page") Page page);

    List<TouZiProject> projectVague(@Param("project")ProjectVague project,@Param("page")Page page);

    int getPageSize(@Param("project")ProjectVague projectVague);

    List<InvestItem> touziRecord(@Param("id")int id,@Param("starttime")Date seprate_time,@Param("state")int type);
}
