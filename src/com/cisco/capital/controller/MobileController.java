package com.cisco.capital.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class MobileController {
	@RequestMapping("/mobiles")
	public ModelAndView getIndexPage(){
		return new ModelAndView("mobiles");
	}
}
