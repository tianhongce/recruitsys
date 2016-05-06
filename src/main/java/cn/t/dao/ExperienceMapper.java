package cn.t.dao;

import cn.t.entity.Experience;

public interface ExperienceMapper {
    int deleteByPrimaryKey(Integer expinfoid);

    int insert(Experience record);

    int insertSelective(Experience record);

    Experience selectByPrimaryKey(Integer expinfoid);

    int updateByPrimaryKeySelective(Experience record);

    int updateByPrimaryKey(Experience record);
}