package com.garin.controllers;

import com.garin.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
@RequestMapping("/users")
public class UserController {
	@Autowired
	UserDao userDao;

	@RequestMapping("/list")
	public String users(Model model) {
		model.addAttribute("users", userDao.getUsers());
		return "users/index";
	}

	@RequestMapping("/new")
	public String newUser(@RequestParam Map<String,String> params, Model model) {
		return "users/new";
	}

	@RequestMapping(value="/create", method = RequestMethod.POST)
	public String createUser(@RequestParam Map<String,String> params, Model model){
		userDao.createUser(params.get("name"), params.get("password"), params.get("email"));
		model.addAttribute("title", "회원가입 완료");
		model.addAttribute("users", userDao.getUsers());
		return "users/index";
	}
}
