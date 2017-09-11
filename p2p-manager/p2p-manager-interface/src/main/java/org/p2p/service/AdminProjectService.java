package org.p2p.service;

import org.p2p.utlis.Order;
import org.p2p.utlis.Page;

import java.util.List;

/**
 * Created by 吴春杰 on 2017/9/9.
 */
public interface AdminProjectService {

    int createProject(TbProject project);

    List<TbProject> listProjects(Page page,Order order);

    int upProjects(List<Integer> ids);

    int downProjects(List<Integer> ids);

    int editProject(TbProject project);

    TbProject adminProjectById(int id);
}
