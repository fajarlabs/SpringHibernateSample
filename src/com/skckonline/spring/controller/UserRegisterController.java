package com.skckonline.spring.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skckonline.hibernate.dao.UserDAOImpl;
import com.skckonline.hibernate.model.User;
import com.skckonline.model.AppMessageError;
import com.skckonline.util.Sanitize;

@Controller
@RequestMapping("/daftar-user")
public class UserRegisterController {
	@RequestMapping(method = RequestMethod.POST)
	public String index(HttpServletRequest request,Model model) {
		// Get data post
		String fullName = (String) request.getParameter("nama_lengkap");
		String email = (String) request.getParameter("email");
		String ektp = (String) request.getParameter("identitas_pengenal");
		String username = (String) request.getParameter("username");
		String password = (String) request.getParameter("password");

		// Filter error
		List<AppMessageError> countErrors = new ArrayList<AppMessageError>();

		// Rules email
		if (!Sanitize.isEmail(email))
			countErrors.add(new AppMessageError("email","Email not valid !"));
		
		// Rules full name more than 1
		if (Sanitize.minChar(fullName, 2))
			countErrors.add(new AppMessageError("fullname","Fullname character count of less than 2."));
		if (Sanitize.isRealName(fullName))
			countErrors.add(new AppMessageError("fullname","Only valid character A-Z,a-z,0-9 and space."));
		
		// Rules ektp
		if (Sanitize.minChar(ektp, 5))
			countErrors.add(new AppMessageError("ektp","NIK or EKTP character count of less than 5."));
		
		// Rules username
		if (Sanitize.minChar(username, 5))
			countErrors.add(new AppMessageError("username","Username character count of less than 5."));
		if (Sanitize.isUsername(username))
			countErrors.add(new AppMessageError("username","Only valid character A-Z,a-z,0-9, and underscore."));
				
		// Rules password
		if (Sanitize.minChar(password, 5))
			countErrors.add(new AppMessageError("password","Password character count of less than 5."));

		String redirect ;
		// If error more than 0 ?
		if (countErrors.size() > 0) {
			model.addAttribute("errorMessage", countErrors);
			redirect = "login";
		} else {
			// Save to DB
			User u = new User();
			u.setEmail(email);
			u.setFullname(fullName);
			u.setIdentitas(ektp);
			u.setPassword(password);
			u.setUsername(username);
			UserDAOImpl o = new UserDAOImpl();
			o.add(u);
			redirect = "register_success";
		}
		
		return redirect;
	}
}