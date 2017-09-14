package org.p2p.service.impl;

import org.p2p.dao.TbItemMapper;
import org.p2p.pojo.po.TbItem;
import org.p2p.service.TbItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2017/9/13/013.
 */
@Service
public class TbItemServiceIpml implements TbItemService {
    @Autowired
    private TbItemMapper dao;
    @Override
    public int insert(TbItem record) {
        return dao.insert(record);
    }
}
