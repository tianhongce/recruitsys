package cn.t.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.t.dao.ExperienceMapper;
import cn.t.serviceI.ExperienceServiceI;

@Service("ExperienceService")
public class Experience implements ExperienceServiceI {

	public ExperienceMapper expmapper;
	
	public ExperienceMapper getExpmapper() {
		return expmapper;
	}
	@Autowired
	public void setExpmapper(ExperienceMapper expmapper) {
		this.expmapper = expmapper;
	}

	@Override
	public int addExperience(cn.t.entity.Experience exp) {
		return expmapper.insertSelective(exp);
	}

	@Override
	public int delExperience(Integer expid) {
		return expmapper.deleteByPrimaryKey(expid);
	}

	@Override
	public int editExperience(cn.t.entity.Experience exp) {
		return expmapper.updateByPrimaryKeySelective(exp);
	}

	@Override
	public List<cn.t.entity.Experience> getExperience(Integer userid) {
		return expmapper.selectByUserid(userid);
	}

}
