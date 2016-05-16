package cn.t.dao;

import java.util.List;
import java.util.Map;

import cn.t.entity.Position;

public interface PositionMapper {
    int deleteByPrimaryKey(String posnum);

    int insert(Position record);

    int insertSelective(Position record);

    Position selectByPrimaryKey(String posnum);

    int updateByPrimaryKeySelective(Position record);

    int updateByPrimaryKey(Position record);
     public List<Position> selectAllPos();
     
     public List<Position> selectByPosnameOrCompanyOrDeptOrPlace(Map param);
}