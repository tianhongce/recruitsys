package cn.t.serviceI;

import java.util.List;

import cn.t.entity.Experience;

public interface ExperienceServiceI {
	public int addExperience(Experience exp);
	public int delExperience(Integer expid);
	public int editExperience(Experience exp);
	public List<Experience> getExperience(Integer userid);

}
