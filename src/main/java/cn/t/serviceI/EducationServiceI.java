package cn.t.serviceI;

import java.util.List;

import cn.t.entity.Education;

public interface EducationServiceI {

	public int addEducation(Education edu);
	public int delEducation(Integer eduid);
	public int editEducation(Education edu);
	public List<Education> getEducationByUserid(Integer userid);
}
