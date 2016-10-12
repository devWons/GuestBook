package com.si.top.unsan.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.si.top.unsan.domain.UserInfoVO;
import com.si.top.unsan.enums.EnumUserInfo;
import com.si.top.unsan.service.UnsanService;

@Controller
public class UnsanController {
	
	private final Logger log = LoggerFactory.getLogger(UnsanController.class);
	
	@Autowired
	UnsanService unsanService;
	
	@RequestMapping(value = "unsanHome.php")
	public String surveyHome(UserInfoVO userInfoVo, Model model) {
		userInfoVo.setUserGroup(EnumUserInfo.USER_GROUP_IN.getValue());
		model.addAttribute("userList", unsanService.selectUserList(userInfoVo));
		
		return "unsan/unsanHome";
	}
	
}
