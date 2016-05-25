package cn.t.dao;

import java.util.List;
import java.util.Map;

import cn.t.entity.AdminUser;

public interface AdminUserMapper {
    int deleteByPrimaryKey(String auserid);

    int insert(AdminUser record);

    int insertSelective(AdminUser record);

    AdminUser selectByPrimaryKey(String auserid);

    int updateByPrimaryKeySelective(AdminUser record);

    int updateByPrimaryKey(AdminUser record);
    List<AdminUser> selectAllAdminUser();
    List<AdminUser> selectByIdorNameorDeptorComorPow(Map param);
}