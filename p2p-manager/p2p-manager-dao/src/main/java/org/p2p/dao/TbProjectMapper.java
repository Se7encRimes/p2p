package org.p2p.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.p2p.pojo.po.TbProject;
import org.p2p.pojo.po.TbProjectExample;

public interface TbProjectMapper {
    int countByExample(TbProjectExample example);

    int deleteByExample(TbProjectExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbProject record);

    int insertSelective(TbProject record);

    List<TbProject> selectByExample(TbProjectExample example);

    TbProject selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbProject record, @Param("example") TbProjectExample example);

    int updateByExample(@Param("record") TbProject record, @Param("example") TbProjectExample example);

    int updateByPrimaryKeySelective(TbProject record);

    int updateByPrimaryKey(TbProject record);
}