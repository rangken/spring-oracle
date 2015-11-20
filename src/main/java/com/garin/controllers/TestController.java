package com.garin.controllers;

import com.garin.dao.UserDao;
import com.garin.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class TestController {
	@Autowired
	UserDao userDao;

	@RequestMapping("/test")
	public String welcome(Model model) {
//		List<User> users = userDao.getUsers();
//		model.addAttribute("name", "garin");
//		userDao.createUserTable();
		return "test";
	}
}
