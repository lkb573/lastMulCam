package com.sds.emp.services.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.emp.common.SearchVO;
import com.sds.emp.services.user.UserService;
import com.sds.emp.services.user.UserVO;
import com.sds.emp.view.paging.Page;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDAO;
	
	public Page getUserList(SearchVO searchVO) throws Exception {
		try {
			return userDAO.getUserList(searchVO);
		} catch (Exception e) {
			throw new Exception("ȸ�� ��� ��ȸ ����.", e);
		}
	}

	public UserVO getUser(String userId) throws Exception {
		try {
			UserVO userVO = userDAO.getUser(userId);

			if (userVO == null) {
				throw new Exception(userId + "' ȸ�� ���� ����.");
			}
			return userVO;
		} catch (Exception e) {
			throw new Exception(userId + "' ȸ�� �� ���� ��ȸ ����.", e);
		}
	}

	public void addUser(UserVO userVO) throws Exception {
		String userId = "";
		try {
			userDAO.addUser(userVO);
		} catch (Exception e) {
			throw new Exception(userId + "' �� ��ϵ� ȸ���Դϴ�.", e);
		}
	}

	public void updateUser(UserVO userVO) throws Exception {
		String userId = "";
		try {
			userDAO.updateUser(userVO);
		} catch (Exception e) {
			throw new Exception(userId + "' ȸ�� ���� ���� ����.", e);
		}
	}

	public boolean checkDuplication(String userId) throws Exception {
		try {
			int count = userDAO.checkDuplication(userId);
			return (count == 0) ? false : true;
		} catch (Exception e) {
			throw new Exception(userId + "'�� �ߺ� ��� ���� üũ ����.", e);
		}
	}	
}
