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
 */
@Service
public class AdminLoansServiceImpl implements AdminLoansService {

    @Autowired
    private AdminCustomMapper mapper;

    @Override
    public Result<AdminLoansCustom> listBorrows(Page page, Order order) {
        Result<AdminLoansCustom> result = new Result<>();
        List<AdminLoansCustom> rows = mapper.listBorrows(page,order);
        long total = mapper.countItems();
        result.setRows(rows);
        result.setTotal(total);
        return result;
    }
}
