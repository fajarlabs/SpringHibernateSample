package com.skckonline.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skckonline.hibernate.dao.RegisterDAOImpl;
import com.skckonline.hibernate.model.User;


@Controller
@RequestMapping("/riwayat-permohonan")
public class RequestListController {
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap model,HttpServletRequest request) {
		String redirect;
		HttpSession sessionObj = request.getSession();
		User LoginStatus = (User) sessionObj.getAttribute("LoginStatus");
		if(LoginStatus != null){
			RegisterDAOImpl rsdo = new RegisterDAOImpl();
			model.addAttribute("list", rsdo.read(null, 0, 10));
			redirect = "riwayat-permohonan";
		}else{
			redirect = "login";
		}
		return redirect;
	}
}
