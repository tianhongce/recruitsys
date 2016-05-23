package cn.t.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.t.dao.EducationMapper;
import cn.t.entity.Education;
import cn.t.serviceI.EducationServiceI;

@Service("EducationService")
public class EducationServiceImpl implements EducationServiceI {

	public EducationMapper edumapper;
	
	public EducationMapper getEdumapper() {
		return edumapper;
	}
	@Autowired
	public void setEdumapper(EducationMapper edumapper) {
		this.edumapper = edumapper;
	}

	@Override
	public int addEducation(Education edu) {
		return edumapper.insert(edu);
	}

	@Override
	public int delEducation(Integer eduid) {
		return edumapper.deleteByPrimaryKey(eduid);
	}

	@Override
	public int editEducation(Education edu) {
		return edumapper.updateByPrimaryKeySelective(edu);
	}

	@Override
	public List<Education> getEducationByUserid(Integer userid) {
		return edumapper.selectByUserid(userid);
	}

}
