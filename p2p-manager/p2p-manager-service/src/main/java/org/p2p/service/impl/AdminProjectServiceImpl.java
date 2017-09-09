package org.p2p.service.impl;

import org.p2p.dao.AdminProjectMapper;
import org.p2p.dao.TbProjectMapper;
import org.p2p.pojo.po.TbProject;
import org.p2p.pojo.po.TbProjectExample;
import org.p2p.service.AdminProjectService;
import org.p2p.utlis.Order;
import org.p2p.utlis.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 吴春杰 on 2017/9/9.
 */
@Service
public class AdminProjectServiceImpl implements AdminProjectService{

    @Autowired
    private AdminProjectMapper mapper;

    @Autowired
    private TbProjectMapper projectMapper;

    @Override
    public int createProject(TbProject project) {
        return mapper.createProject(project);
    }

    @Override
    public List<TbProject> listProjects(Page page,Order order) {
        return mapper.listProjects(page,order);
    }

    @Override
    public int upProjects(List<Integer> ids) {
        TbProject project = new TbProject();
        project.setProjectstate(1);
        TbProjectExample example = new TbProjectExample();
        TbProjectExample.Criteria criteria = example.createCriteria();
        criteria.andIdIn(ids);
        return projectMapper.updateByExampleSelective(project,example);
    }

    @Override
    public int downProjects(List<Integer> ids) {
        TbProject project = new TbProject();
        project.setProjectstate(2);
        TbProjectExample example = new TbProjectExample();
        TbProjectExample.Criteria criteria = example.createCriteria();
        criteria.andIdIn(ids);
        return projectMapper.updateByExampleSelective(project,example);
    }

    @Override
    public int editProject(TbProject project) {
        return projectMapper.updateByPrimaryKeySelective(project);
    }

    @Override
    public TbProject adminProjectById(int id) {
        return projectMapper.selectByPrimaryKey(id);
    }
}
