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
	private List<Resume> resume;
	private List<Education> edulist;
	private List<Experience> explist;
	private List<Language> langlist;
	private List<Evaluation> evalist;
	
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
	public List<Education> getEdulist() {
		return edulist;
	}
	public void setEdulist(List<Education> edulist) {
		this.edulist = edulist;
	}
	public List<Experience> getExplist() {
		return explist;
	}
	public void setExplist(List<Experience> explist) {
		this.explist = explist;
	}
	public List<Language> getLanglist() {
		return langlist;
	}
	public void setLanglist(List<Language> langlist) {
		this.langlist = langlist;
	}
	public List<Evaluation> getEvalist() {
		return evalist;
	}
	public void setEvalist(List<Evaluation> evalist) {
		this.evalist = evalist;
	}
	
	@Override
	public String toString() {
		return "ResumeDto [userid=" + userid + ", username=" + username
				+ ", resume=" + resume + ", edulist=" + edulist + ", explist="
				+ explist + ", langlist=" + langlist + ", evalist=" + evalist
				+ "]";
	}
	
	
	
	
	
	
}
