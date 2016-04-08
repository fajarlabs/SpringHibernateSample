package com.skckonline.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.skckonline.hibernate.dao.UserDAOImpl;
import com.skckonline.hibernate.model.User;

@Controller
@RequestMapping("/registrasi")
public class RegisterController {
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap model, HttpSession sessionObj) {
		String redirect;
		
		if(sessionObj.getAttribute("LoginStatus") != null)
			redirect = "login_success";
		else 
			redirect = "login";
		
		return redirect;
	}

	@RequestMapping(value = "/masuk/", method = RequestMethod.POST)
	public String auth(@RequestParam("username") String username,
			@RequestParam("password") String password,
			HttpSession sessionObj) {
		UserDAOImpl u = new UserDAOImpl();
		List<User> ListLogin = u.searchUserPass(username, password);
		User LoginStatus = null;
		String redirect;
		if (ListLogin.size() > 0) {
			for(User o : ListLogin)
				LoginStatus = o;
			sessionObj.setAttribute("LoginStatus",LoginStatus);
			redirect = "login_success";
		} else {
			redirect = "login";
		}
		return redirect;
	}

}
