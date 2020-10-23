package com.sds.emp.services.user;

import com.sds.emp.common.SearchVO;
import com.sds.emp.view.paging.Page;

public interface UserService {
	public Page getUserList(SearchVO searchVO) throws Exception;
	public UserVO getUser(String userId) throws Exception;
	public void addUser(UserVO userVO) throws Exception;
	public void updateUser(UserVO userVO) throws Exception;
	public boolean checkDuplication(String userId) throws Exception;
}
