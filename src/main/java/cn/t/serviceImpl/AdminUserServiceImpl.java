package cn.t.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.t.dao.AdminUserMapper;
import cn.t.entity.AdminUser;
import cn.t.serviceI.AdminUserServiceI;

@Service("AdminUserService")
public class AdminUserServiceImpl implements AdminUserServiceI {

	public AdminUserMapper ausermapper;
	
	
	public AdminUserMapper getAusermapper() {
		return ausermapper;
	}
	@Autowired
	public void setAusermapper(AdminUserMapper ausermapper) {
		this.ausermapper = ausermapper;
	}

	@Override
	public int addAdminUser(AdminUser auser) {
		return ausermapper.insertSelective(auser);
	}

	@Override
	public int delAdminUser(String auserid) {
		return ausermapper.deleteByPrimaryKey(auserid);
	}

	@Override
	public int editAdminUser(AdminUser auser) {
		return ausermapper.updateByPrimaryKeySelective(auser);
	}

	@Override
	public AdminUser getAdminUserById(String auserid) {
		return ausermapper.selectByPrimaryKey(auserid);
	}

}
