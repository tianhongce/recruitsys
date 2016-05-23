package cn.t.serviceI;

import java.util.List;

import cn.t.entity.UserPosition;

public interface UserPositionServiceI {
	public int addUserPos(UserPosition userpos);
	public int delUserPos(Integer userposid);
	public int changeUserPosState(UserPosition userpos);
	public List<UserPosition> getUserPosByUserid(Integer userid);
	public List<UserPosition> getUserPosByPosnum(String posnum);

}
