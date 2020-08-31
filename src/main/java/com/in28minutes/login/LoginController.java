package com.in28minutes.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	private UserValidationService loginService = new UserValidationService();
	
	@RequestMapping(value ="/login", method=RequestMethod.GET)
	public String sayHello() {
		return "login";
	}
	
	@RequestMapping(value ="/login", method=RequestMethod.POST)
	public String signIn(@RequestParam String name, @RequestParam String password, ModelMap model) {
		if (!loginService.isUserValid(name, password)) {
			model.put("errorMessage", "Invalid Credentials!");
			return "login";
		}
		
		model.put("name", name);
		return "welcome";
	}
}
