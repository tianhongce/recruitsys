package cn.t.dao;

import cn.t.entity.Resume;

public interface ResumeMapper {
    int deleteByPrimaryKey(Integer resumeid);

    int insert(Resume record);

    int insertSelective(Resume record);

    Resume selectByPrimaryKey(Integer resumeid);

    int updateByPrimaryKeySelective(Resume record);

    int updateByPrimaryKey(Resume record);
}