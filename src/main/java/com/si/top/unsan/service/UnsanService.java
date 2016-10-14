package com.si.top.unsan.service;

import java.util.List;

import com.si.top.unsan.domain.UserInfoVO;

public interface UnsanService {

	/**
	 * 가입된 모든 사용자정보를 가져온다.
	 * @param userInfoVo 
	 * @return
	 */
	List<UserInfoVO> selectUserList(UserInfoVO userInfoVo);


}
