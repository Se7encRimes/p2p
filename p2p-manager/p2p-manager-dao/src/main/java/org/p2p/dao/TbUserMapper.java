package org.p2p.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.p2p.pojo.po.TbUser;
import org.p2p.pojo.po.TbUserExample;

import java.util.List;

public interface TbUserMapper {
    int countByExample(TbUserExample example);

    int deleteByExample(TbUserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbUser record);

    int insertSelective(TbUser record);

    List<TbUser> selectByExample(TbUserExample example);

    TbUser selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbUser record, @Param("example") TbUserExample example);

    int updateByExample(@Param("record") TbUser record, @Param("example") TbUserExample example);

    int updateByPrimaryKeySelective(TbUser record);

    int updateByPrimaryKey(TbUser record);

    //验证用户名和手机号是正确
    @Select("select password from tb_user where  phone=#{cellPhone}")
    String  selectMsg(String cellPhone);

    @Update("update tb_user set password=#{arg0} where phone=#{arg1}")
    int updateById(String password,String phone);

    @Select("select phone from tb_user where username=#{name}")
    String  selectEmil(String name);



}