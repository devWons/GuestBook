package com.si.top.unsan.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.si.top.unsan.domain.UserInfoVO;

@Repository
public class UnsanDaoImpl implements UnsanDao {

	@Autowired
	SqlSession session;

	@Override
	public List<UserInfoVO> selectUserList(UserInfoVO userInfoVo) {
		return session.selectList("selectUserList", userInfoVo);
	}

}
