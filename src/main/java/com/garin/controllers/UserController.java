package com.garin.controllers;

import com.garin.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	@Autowired
	UserDao userDao;

	@RequestMapping("/users")
	public String users(Model model) {
		model.addAttribute("users", userDao.getUsers());
		return "users";
	}
}
