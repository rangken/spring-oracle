package com.garin.controllers;

import com.garin.dao.MovieDao;
import com.garin.dao.ReserveDao;
import com.garin.dao.UserDao;
import com.garin.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
@RequestMapping("/users")
public class UserController {
	@Autowired
	UserDao userDao;
	MovieDao movieDao;

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
	public String createUser(@RequestParam Map<String,String> params, Model model, HttpSession session) {
		String email = params.get("email");
		String password = params.get("password");
		String name = params.get("name");
		User user = userDao.getUser(email);
		if (user != null) {
			return "redirect:/users/user_already";
		}
		userDao.createUser(name, password, email);
		user = userDao.getUser(email);
		session.setAttribute("user", user);
		model.addAttribute("title", "회원가입 완료");
		model.addAttribute("users", userDao.getUsers());
		return "users/index";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam Map<String, String> params, Model model, HttpSession session) {
		String email = params.get("email");
		String password = params.get("password");
		User user = userDao.getUser(email);
		if (user == null || !user.password.equals(password)) {
			return "redirect:/users/login_error";
		}
		session.setAttribute("user", user);
		return "redirect:/home";
	}

	@RequestMapping("/login")
	public String loginPage(@RequestParam Map<String, String> params, Model model, HttpSession session) {

		return "users/login";
	}
	@RequestMapping("/logout")
	public String loginOut(@RequestParam Map<String, String> params, Model model, HttpSession session) {
		session.setAttribute("user", null);
		return "redirect:/home";
	}

	@RequestMapping(value = "/user_already")
	public String userAlready() {
		return "users/user_already";
	}

	@RequestMapping(value = "/login_error")
	public String userLoginError() {
		return "users/login_error";
	}
}

