package cn.t.serviceI;

import cn.t.entity.AdminUser;

public interface AdminUserServiceI {
	
	public int addAdminUser(AdminUser auser);
	public int delAdminUser(String auserid);
	public int editAdminUser(AdminUser auser);
	public AdminUser getAdminUserById(String auserid);

}
