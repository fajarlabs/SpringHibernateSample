package com.skckonline.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/keluar")
public class LogoutController {
	@RequestMapping(method = RequestMethod.GET)
	public String index(HttpServletRequest request) {
		request.getSession().invalidate();
		return "logout_success";
	}
}