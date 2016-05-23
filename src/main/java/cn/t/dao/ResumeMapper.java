package cn.t.dao;

import java.util.List;

import cn.t.entity.Resume;

public interface ResumeMapper {
    int deleteByPrimaryKey(Integer resumeid);

    int insert(Resume record);

    int insertSelective(Resume record);

    Resume selectByPrimaryKey(Integer resumeid);

    int updateByPrimaryKeySelective(Resume record);

    int updateByPrimaryKey(Resume record);
    
    public List<Resume> selectByUserid(Integer userid);
}