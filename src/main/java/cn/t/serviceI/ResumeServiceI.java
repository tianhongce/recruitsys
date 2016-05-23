package cn.t.serviceI;

import java.util.List;

import cn.t.entity.Resume;

public interface ResumeServiceI {
	public int addResume(Resume resume);
	public int delResume(Integer resid);
	public int editResume(Resume resume);
	public List<Resume> getByUserid(Integer Userid);

}
