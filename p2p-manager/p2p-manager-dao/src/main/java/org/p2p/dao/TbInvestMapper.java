package org.p2p.dao;

import org.apache.ibatis.annotations.Param;
import org.p2p.pojo.po.TbInvest;
import org.p2p.pojo.po.TbInvestExample;

import java.util.List;

public interface TbInvestMapper {
    int countByExample(TbInvestExample example);

    int deleteByExample(TbInvestExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbInvest record);

    int insertSelective(TbInvest record);

    List<TbInvest> selectByExample(TbInvestExample example);

    TbInvest selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbInvest record, @Param("example") TbInvestExample example);

    int updateByExample(@Param("record") TbInvest record, @Param("example") TbInvestExample example);

    int updateByPrimaryKeySelective(TbInvest record);

    int updateByPrimaryKey(TbInvest record);
}