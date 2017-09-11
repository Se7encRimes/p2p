package org.p2p.dao;

import org.apache.ibatis.annotations.Param;
import org.p2p.utlis.Order;
import org.p2p.utlis.Page;

import java.util.List;

/**
 * Created by 吴春杰 on 2017/9/9.
 */
public interface AdminProjectMapper {

    int createProject(TbProject project);

    List<TbProject> listProjects(@Param("page") Page page,@Param("order") Order order);
}
