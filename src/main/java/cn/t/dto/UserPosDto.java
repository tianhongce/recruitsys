package cn.t.dto;

import cn.t.entity.Position;
import cn.t.entity.User;

public class UserPosDto {
	private Integer jobappid;
	private User user;
	private Position pos;
	private ResumeDto resumedto;
	
	public Integer getJobappid() {
		return jobappid;
	}
	public void setJobappid(Integer jobappid) {
		this.jobappid = jobappid;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Position getPos() {
		return pos;
	}
	public void setPos(Position pos) {
		this.pos = pos;
	}
	public ResumeDto getResumedto() {
		return resumedto;
	}
	public void setResumedto(ResumeDto resumedto) {
		this.resumedto = resumedto;
	}
	
	
	
	

}
