package cn.t.dto;

import java.util.List;

import cn.t.entity.Education;
import cn.t.entity.Evaluation;
import cn.t.entity.Experience;
import cn.t.entity.Language;
import cn.t.entity.Resume;

public class ResumeDto {
	private Integer userid;
	private String username;
	private String useremail;
	private String userpwd;
	private List<Resume> resume;
	private List<Education> eduinfo;
	private List<Experience> expinfo;
	private List<Language> langinfo;
	private List<Evaluation> evainfo;
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}


	
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public List<Resume> getResume() {
		return resume;
	}
	public void setResume(List<Resume> resume) {
		this.resume = resume;
	}
	public List<Education> getEduinfo() {
		return eduinfo;
	}
	public void setEduinfo(List<Education> eduinfo) {
		this.eduinfo = eduinfo;
	}
	public List<Experience> getExpinfo() {
		return expinfo;
	}
	public void setExpinfo(List<Experience> expinfo) {
		this.expinfo = expinfo;
	}
	public List<Language> getLanginfo() {
		return langinfo;
	}
	public void setLanginfo(List<Language> langinfo) {
		this.langinfo = langinfo;
	}
	public List<Evaluation> getEvainfo() {
		return evainfo;
	}
	public void setEvainfo(List<Evaluation> evainfo) {
		this.evainfo = evainfo;
	}
	@Override
	public String toString() {
		return "ResumeDto [userid=" + userid + ", username=" + username
				+ ", useremail=" + useremail + ", userpwd=" + userpwd
				+ ", resume=" + resume + ", eduinfo=" + eduinfo + ", expinfo="
				+ expinfo + ", langinfo=" + langinfo + ", evainfo=" + evainfo
				+ "]";
	}
	
	
	
	
	
}
