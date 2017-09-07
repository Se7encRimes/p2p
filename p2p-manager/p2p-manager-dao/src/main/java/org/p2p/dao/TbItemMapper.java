package org.p2p.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.p2p.pojo.po.TbItem;
import org.p2p.pojo.po.TbItemExample;

import java.util.List;

public interface TbItemMapper {
    int countByExample(TbItemExample example);

    int deleteByExample(TbItemExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbItem record);

    int insertSelective(TbItem record);

    List<TbItem> selectByExample(TbItemExample example);

    TbItem selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbItem record, @Param("example") TbItemExample example);

    int updateByExample(@Param("record") TbItem record, @Param("example") TbItemExample example);

    int updateByPrimaryKeySelective(TbItem record);

    int updateByPrimaryKey(TbItem record);

    @Insert("insert into tb_borrow(money,carimg,carnumber,gettime,residue,loansid,state,purpose,returnway,pledgeimg," +
            "applydate,house,bank,social,relation) values(#{money},#{carimg},#{carnumber},#{gettime},#{residue},#{loansid},#{state}," +
            "#{purpose},#{returnway},#{pledgeimg},#{applydate},#{house},#{bank},#{social},#{relation})")
    @Options(keyProperty="id",useGeneratedKeys=true)
    int insertMy(TbItem record);
}