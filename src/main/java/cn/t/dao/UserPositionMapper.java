package cn.t.dao;

import cn.t.entity.UserPosition;

public interface UserPositionMapper {
    int deleteByPrimaryKey(Integer jobappid);

    int insert(UserPosition record);

    int insertSelective(UserPosition record);

    UserPosition selectByPrimaryKey(Integer jobappid);

    int updateByPrimaryKeySelective(UserPosition record);

    int updateByPrimaryKey(UserPosition record);
}