package org.p2p.dao;

import org.apache.ibatis.annotations.Param;
import org.p2p.pojo.vo.TouZiProject;
import org.p2p.utlis.Page;

import java.util.List;

/**
 * Created by 吴春杰 on 2017/9/11.
 */
public interface TouZiProjectMapper {

    List<TouZiProject> touziList(@Param("page") Page page);
}
