package cn.t.dao;

import cn.t.entity.Language;

public interface LanguageMapper {
    int deleteByPrimaryKey(Integer langinfoid);

    int insert(Language record);

    int insertSelective(Language record);

    Language selectByPrimaryKey(Integer langinfoid);

    int updateByPrimaryKeySelective(Language record);

    int updateByPrimaryKey(Language record);
}