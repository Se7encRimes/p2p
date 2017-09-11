package org.p2p.service.impl;

import org.p2p.dao.TouZiProjectMapper;
import org.p2p.pojo.vo.TouZiProject;
import org.p2p.service.TouZiService;
import org.p2p.utlis.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 吴春杰 on 2017/9/11.
 */
@Service
public class TouZiServiceImpl implements TouZiService {

    @Autowired
    private TouZiProjectMapper mapper;

    @Override
    public List<TouZiProject> touziList(Page page) {
        return mapper.touziList(page);
    }
}
