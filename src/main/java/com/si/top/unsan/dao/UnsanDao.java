package com.si.top.unsan.dao;

import java.util.List;

import com.si.top.unsan.domain.UserInfoVO;

public interface UnsanDao {

	List<UserInfoVO> selectUserList(UserInfoVO userInfoVo);


}
