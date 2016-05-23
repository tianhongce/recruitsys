package cn.t.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.t.dao.UserPositionMapper;
import cn.t.entity.UserPosition;
import cn.t.serviceI.UserPositionServiceI;

@Service("UserPositionService")
public class UserPositionServiceImpl implements UserPositionServiceI {

	public UserPositionMapper userposmapper;
	
	
	public UserPositionMapper getUserposmapper() {
		return userposmapper;
	}
	@Autowired
	public void setUserposmapper(UserPositionMapper userposmapper) {
		this.userposmapper = userposmapper;
	}

	@Override
	public int addUserPos(UserPosition userpos) {
		return userposmapper.insertSelective(userpos);
	}

	@Override
	public int delUserPos(Integer userposid) {
		return userposmapper.deleteByPrimaryKey(userposid);
	}

	@Override
	public int changeUserPosState(UserPosition userpos) {
		return userposmapper.updateByPrimaryKeySelective(userpos);
	}

	@Override
	public List<UserPosition> getUserPosByUserid(Integer userid) {
		return userposmapper.selectByUserid(userid);
	}

	@Override
	public List<UserPosition> getUserPosByPosnum(String posnum) {
		return userposmapper.selectByposid(posnum);
	}

}
