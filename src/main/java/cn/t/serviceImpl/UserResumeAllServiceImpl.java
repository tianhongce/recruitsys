package cn.t.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.t.dao.UserResumeAllMapper;
import cn.t.dto.ResumeDto;
import cn.t.serviceI.UserResumeAllServiceI;

@Service("UserResumeAllService")
public class UserResumeAllServiceImpl implements UserResumeAllServiceI{

	private UserResumeAllMapper uram;
	
	
	public UserResumeAllMapper getUram() {
		return uram;
	}

	@Autowired
	public void setUram(UserResumeAllMapper uram) {
		this.uram = uram;
	}


	@Override
	public List<ResumeDto> getUserAllMsg() {
		return uram.selectUserAllMsg();
	}

}
