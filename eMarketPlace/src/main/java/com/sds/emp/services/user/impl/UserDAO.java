package com.sds.emp.services.user.impl;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sds.emp.common.SearchVO;
import com.sds.emp.services.user.UserVO;
import com.sds.emp.view.paging.Page;

@Repository
public class UserDAO {
	@Autowired
	private SqlSessionTemplate myBatis;
	
	public void addUser(UserVO userVO) throws Exception {
		myBatis.insert("User.addUser", userVO);
	}

	public void updateUser(UserVO userVO) throws Exception {
		myBatis.update("User.updateUser", userVO);
	}

	public int checkDuplication(String userId) throws Exception {
		Integer cnt = (Integer)myBatis.selectOne("User.checkDuplication", userId);
		return cnt.intValue();
	}
	
	public UserVO getUser(String userId) throws Exception {
		return (UserVO) myBatis.selectOne("User.getUser", userId);
	}
	
	public Page getUserList(SearchVO searchVO) throws Exception {
		int pageIndex = searchVO.getPageIndex();
		UserVO userVO = new UserVO();
		
		String searchCondition = searchVO.getSearchCondition();
		if(searchCondition == null)
			searchCondition = "";
		
		String searchKeyword = searchVO.getSearchKeyword();
		if(searchKeyword == null)
			searchKeyword = "";
		
		if("".equals(searchCondition) || "0".equals(searchCondition))
			userVO.setUserId("%" + searchKeyword + "%");
		else
			userVO.setUserName("%" + searchKeyword + "%");

		RowBounds rowBounds = new RowBounds((pageIndex * 3) - 3, 3);		
		List<UserVO> userList = (List)myBatis.selectList("User.getUserList", userVO, rowBounds);
		Integer userListCnt = (Integer)myBatis.selectOne("User.getUserListCnt", userVO);
		Page resultPage = new Page(userList, pageIndex, userListCnt, 5, 3);

		return resultPage;
	}
}
