package com.skckonline.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/syarat-ketentuan")
public class SkController {
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap model) {
		return "sk";
	}
}
