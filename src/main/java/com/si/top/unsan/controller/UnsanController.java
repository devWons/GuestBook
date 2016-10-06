package com.si.top.unsan.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.si.top.unsan.service.UnsanService;

@Controller
public class UnsanController {
	
	private static final Logger log = LoggerFactory.getLogger(UnsanController.class);
	
	@Autowired
	UnsanService unsanService;
	
	@RequestMapping(value = "unsanHome.php")
	public String surveyHome(Locale locale, Model model) {
//		model.addAttribute("userList", unsanService.selectUserList());
		
		return "unsan/unsanHome";
	}
	
}
