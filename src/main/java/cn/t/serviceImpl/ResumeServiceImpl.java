package cn.t.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.t.dao.ResumeMapper;
import cn.t.entity.Resume;
import cn.t.serviceI.ResumeServiceI;

@Service("ResumeService")
public class ResumeServiceImpl implements ResumeServiceI{

	public ResumeMapper resumemapper;
	
	public ResumeMapper getResumemapper() {
		return resumemapper;
	}
	@Autowired
	public void setResumemapper(ResumeMapper resumemapper) {
		this.resumemapper = resumemapper;
	}

	@Override
	public int addResume(Resume resume) {
		return resumemapper.insertSelective(resume);
	}

	@Override
	public int delResume(Integer resid) {
		return resumemapper.deleteByPrimaryKey(resid);
	}

	@Override
	public int editResume(Resume resume) {
		return resumemapper.updateByPrimaryKeySelective(resume);
	}

	@Override
	public List<Resume> getByUserid(Integer userid) {
		return resumemapper.selectByUserid(userid);
	}

}
