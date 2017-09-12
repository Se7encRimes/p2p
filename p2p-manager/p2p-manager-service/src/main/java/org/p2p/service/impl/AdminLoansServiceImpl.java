package org.p2p.service.impl;

import org.p2p.dao.AdminCustomMapper;
import org.p2p.pojo.vo.AdminLoansCustom;
import org.p2p.service.AdminLoansService;
import org.p2p.utlis.Order;
import org.p2p.utlis.Page;
import org.p2p.utlis.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 吴春杰 on 2017/9/6.
 * 对借款申请的审批操作
 */
@Service
public class AdminLoansServiceImpl implements AdminLoansService {

    @Autowired
    private AdminCustomMapper mapper;

    /**
     * 查询借款人申请列表
     * @param page
     * @param order
     * @return Result<AdminLoansCustom>
     */
    @Override
    public Result<AdminLoansCustom> listBorrows(Page page, Order order) {
        Result<AdminLoansCustom> result = new Result<>();
        List<AdminLoansCustom> rows = mapper.listBorrows(page,order);
        long total = mapper.countItems();
        result.setRows(rows);
        result.setTotal(total);
        return result;
    }

    /**
     * 按主键查询借款人申请信息
     * @param id
     * @return AdminLoansCustom
     */
    @Override
    public AdminLoansCustom getBorrwoById(int id) {
        return mapper.getBorrwoById(id);
    }

    /**
     * 审核借款人的申请
     * @param state
     * @param id
     * @return int
     */
    @Override
    public int anIntItem(int state, int id) {
        return mapper.anIntItem(state,id);
    }

    /**
     * 获取投资项目的列表
     * @param page
     * @param order
     * @return Result<AdminLoansCustom>
     */
    @Override
    public Result<AdminLoansCustom> listProjects(Page page, Order order) {
        Result<AdminLoansCustom> rs = new Result<>();
        List<AdminLoansCustom> rows = mapper.listProjects(page,order);
        long total = mapper.countProjects();
        rs.setRows(rows);
        rs.setTotal(total);
        return rs;
    }
}
