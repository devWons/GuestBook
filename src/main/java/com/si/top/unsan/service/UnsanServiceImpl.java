package com.si.top.unsan.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.si.top.unsan.dao.UnsanDao;
import com.si.top.unsan.domain.UserInfoVO;

@Service
public class UnsanServiceImpl implements UnsanService {
	private static final Logger log = LoggerFactory.getLogger(UnsanServiceImpl.class);
	
	@Autowired
	UnsanDao unsanDao;

	@Override
	public List<UserInfoVO> selectUserList(UserInfoVO userInfoVo) {
		return unsanDao.selectUserList(userInfoVo);
	}

}
