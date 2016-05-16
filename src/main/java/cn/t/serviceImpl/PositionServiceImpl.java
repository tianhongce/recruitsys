package cn.t.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.t.dao.PositionMapper;
import cn.t.entity.Position;
import cn.t.serviceI.PositionServiceI;

@Service("PositionService")
public class PositionServiceImpl implements PositionServiceI {
	
	public PositionMapper positionmapper;
	
	
	public PositionMapper getPositionmapper() {
		return positionmapper;
	}
	@Autowired
	public void setPositionmapper(PositionMapper positionmapper) {
		this.positionmapper = positionmapper;
	}

	@Override
	public Position getPosByPosname() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void editPosStu() {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Position> getAllPos() {
		// TODO Auto-generated method stub
		
		return positionmapper.selectAllPos();
	}

	@Override
	public List<Position> getPosByCom() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Position> getPosByDept() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Position> getPosByPlace() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Position> getByPosnameOrCompanyOrDeptOrPlace(Map param) {
		return positionmapper.selectByPosnameOrCompanyOrDeptOrPlace(param);
	}

}
