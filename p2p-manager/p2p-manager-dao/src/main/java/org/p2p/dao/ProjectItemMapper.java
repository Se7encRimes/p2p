package org.p2p.dao;

import org.apache.ibatis.annotations.Param;
import org.p2p.pojo.vo.ProjectItem;

/**
 * Created by 吴春杰 on 2017/9/14.
 */
public interface ProjectItemMapper {

    ProjectItem getProjectItemById(@Param("id") int id);
}
