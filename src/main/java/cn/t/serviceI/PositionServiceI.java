package cn.t.serviceI;

import java.util.List;
import java.util.Map;

import cn.t.entity.Position;

public interface PositionServiceI {
	public Position getPosByPosname();
	public List<Position> getAllPos();
	public List<Position> getPosByCom();
	public List<Position> getPosByDept();
	public List<Position> getPosByPlace();
	
	public List<Position> getByPosnameOrCompanyOrDeptOrPlace(Map param);
	public int insertPos(Position pos);
	public int delPos(String posnum);
	public int editPos(Position pos);

}
