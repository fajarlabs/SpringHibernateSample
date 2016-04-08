package com.skckonline.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/home")
public class HomeController{
 
   @RequestMapping(method = RequestMethod.GET)
   public String Index(ModelMap model) {
		//model.addAttribute("message", "hello");
      return "home"; // Name file .jsp in WEB-INF/JSP/	
   }

}