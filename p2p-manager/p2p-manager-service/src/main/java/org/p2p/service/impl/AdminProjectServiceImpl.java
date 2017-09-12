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
 * 投资项目的操作
 */
@Service
public class AdminProjectServiceImpl implements AdminProjectService{

    @Autowired
    private AdminProjectMapper mapper;

    @Autowired
    private TbProjectMapper projectMapper;

    /**
     * 创建一条投资项目记录
     * @param project
     * @return int
     */
    @Override
    public int createProject(TbProject project) {
        return mapper.createProject(project);
    }

    /**
     * 查询投资项目的列表
     * @param page
     * @param order
     * @return List<TbProject>
     */
    @Override
    public List<TbProject> listProjects(Page page,Order order) {
        return mapper.listProjects(page,order);
    }

    /**
     * 项目上线
     * @param ids
     * @return int
     */
    @Override
    public int upProjects(List<Integer> ids) {
        TbProject project = new TbProject();
        project.setProjectstate(1);
        TbProjectExample example = new TbProjectExample();
        TbProjectExample.Criteria criteria = example.createCriteria();
        criteria.andIdIn(ids);
        return projectMapper.updateByExampleSelective(project,example);
    }

    /**
     * 项目下线
     * @param ids
     * @return int
     */
    @Override
    public int downProjects(List<Integer> ids) {
        TbProject project = new TbProject();
        project.setProjectstate(0);
        TbProjectExample example = new TbProjectExample();
        TbProjectExample.Criteria criteria = example.createCriteria();
        criteria.andIdIn(ids);
        return projectMapper.updateByExampleSelective(project,example);
    }

    /**
     * 修改投资项目
     * @param project
     * @return int
     */
    @Override
    public int editProject(TbProject project) {
        return projectMapper.updateByPrimaryKeySelective(project);
    }

    /**
     * 按主键查询投资项目
     * @param id
     * @return TbProject
     */
    @Override
    public TbProject adminProjectById(int id) {
        return projectMapper.selectByPrimaryKey(id);
    }
}
