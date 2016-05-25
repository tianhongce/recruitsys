package cn.t.serviceI;

import java.util.List;
import java.util.Map;

import cn.t.entity.AdminUser;

public interface AdminUserServiceI {
	
	public int addAdminUser(AdminUser auser);
	public int delAdminUser(String auserid);
	public int editAdminUser(AdminUser auser);
	public AdminUser getAdminUserById(String auserid);
	public List<AdminUser> getAllAdminUser();
	public List<AdminUser> getByIdorNameorDeptorComorPow(Map param);

}
