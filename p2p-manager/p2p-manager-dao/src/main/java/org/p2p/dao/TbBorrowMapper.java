package org.p2p.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
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

    @Update("update tb_user set loans=#{arg0} where id=#{arg1}")
    int updateUserStatus(@Param("arg0")int loans,@Param("arg1")int id);

    @Select("select card from tb_user where id=#{id}")
    String  selectByUid(int id);

}