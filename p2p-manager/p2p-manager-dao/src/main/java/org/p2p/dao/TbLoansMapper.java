package org.p2p.dao;

import org.apache.ibatis.annotations.Param;
import org.p2p.pojo.po.TbLoans;
import org.p2p.pojo.po.TbLoansExample;

import java.util.List;

public interface TbLoansMapper {
    int countByExample(TbLoansExample example);

    int deleteByExample(TbLoansExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbLoans record);

    int insertSelective(TbLoans record);

    List<TbLoans> selectByExample(TbLoansExample example);

    TbLoans selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbLoans record, @Param("example") TbLoansExample example);

    int updateByExample(@Param("record") TbLoans record, @Param("example") TbLoansExample example);

    int updateByPrimaryKeySelective(TbLoans record);

    int updateByPrimaryKey(TbLoans record);
}