package org.p2p.dao;

import org.apache.ibatis.annotations.Param;
import org.p2p.pojo.po.TbBorrow;
import org.p2p.pojo.po.TbBorrowExample;

import java.util.List;

public interface TbBorrowMapper {
    int countByExample(TbBorrowExample example);

    int deleteByExample(TbBorrowExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbBorrow record);

    int insertSelective(TbBorrow record);

    List<TbBorrow> selectByExample(TbBorrowExample example);

    TbBorrow selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbBorrow record, @Param("example") TbBorrowExample example);

    int updateByExample(@Param("record") TbBorrow record, @Param("example") TbBorrowExample example);

    int updateByPrimaryKeySelective(TbBorrow record);

    int updateByPrimaryKey(TbBorrow record);
}