package com.si.top.guestBook;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GuestBookController {
	
	private static final Logger log = LoggerFactory.getLogger(GuestBookController.class);
	
	@RequestMapping(value = "guestBook.php")
	public String guestBook(Locale locale, Model model) {
		log.info("Welcome Geust Book!");
		
		return "guestBook/guestBook";
	}
	
}
