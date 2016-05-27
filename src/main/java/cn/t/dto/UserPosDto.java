package cn.t.dto;

import cn.t.entity.Position;

public class UserPosDto {
	private Integer jobappid;
	private Integer userid;
	private String useremail;
	private String username;
	private Position pos;
	private ResumeDto resumedto;
	
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
	private String userpwd;
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	
	public Integer getJobappid() {
		return jobappid;
	}
	public void setJobappid(Integer jobappid) {
		this.jobappid = jobappid;
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
