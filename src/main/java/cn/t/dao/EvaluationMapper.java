package cn.t.dao;

import java.util.List;

import cn.t.entity.Evaluation;

public interface EvaluationMapper {
    int deleteByPrimaryKey(Integer evainfoid);

    int insert(Evaluation record);

    int insertSelective(Evaluation record);

    Evaluation selectByPrimaryKey(Integer evainfoid);

    int updateByPrimaryKeySelective(Evaluation record);

    int updateByPrimaryKey(Evaluation record);
    
    List<Evaluation> selectByUserid(Integer userid);
}