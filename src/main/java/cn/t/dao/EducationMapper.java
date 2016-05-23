package cn.t.dao;

import java.util.List;

import cn.t.entity.Education;

public interface EducationMapper {
    int deleteByPrimaryKey(Integer eduinfoid);

    int insert(Education record);

    int insertSelective(Education record);

    Education selectByPrimaryKey(Integer eduinfoid);

    int updateByPrimaryKeySelective(Education record);

    int updateByPrimaryKey(Education record);
    
    public List<Education> selectByUserid(Integer userid);
}