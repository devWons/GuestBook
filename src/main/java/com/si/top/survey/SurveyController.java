package com.si.top.survey;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SurveyController {
	
	private static final Logger log = LoggerFactory.getLogger(SurveyController.class);
	
	@RequestMapping(value = "surveyHome.php")
	public String surveyHome(Locale locale, Model model) {
		return "survey/surveyHome";
	}
	
}
