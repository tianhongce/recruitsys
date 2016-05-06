package cn.t.dao;

import cn.t.entity.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer userid);
    int deleteByEmail(String useremail);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userid);
    User selectByEmail(String useremail);

    int updateByPrimaryKeySelective(User record);
    int updateByEmailSelective(User record);

    int updateByPrimaryKey(User record);
}