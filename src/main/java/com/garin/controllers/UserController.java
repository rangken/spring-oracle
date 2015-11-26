package com.garin.controllers;

import com.garin.dao.MovieDao;
import com.garin.dao.ReserveDao;
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
	MovieDao movieDao;
	ReserveDao reserveDao;

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
	public String createUser(@RequestParam Map<String,String> params, Model model) {
		userDao.createUser(params.get("name"), params.get("password"), params.get("email"));
		model.addAttribute("title", "회원가입 완료");
		model.addAttribute("users", userDao.getUsers());
		return "users/index";
	}

	@RequestMapping("/home")
	public String mainhome(@RequestParam Map<String,String> params, Model model) {
		return "users/home";
	}

	@RequestMapping("/reserve")
	public String reserve(@RequestParam Map<String,String> params, Model model){
		return "users/reserve";
	}

	@RequestMapping("/movieselect")
	public String movieselect(@RequestParam Map<String,String> params, Model model) {
		return "users/movieselect";
	}

	@RequestMapping("/login")
	public String login(@RequestParam Map<String,String> params, Model model) {
		return "users/login";
	}

	@RequestMapping("/movielist")
	public String movie(Model model) {
		model.addAttribute("movie", movieDao.getMovie());
		return "users/movielist";
	}
	@RequestMapping(value="/loginok",method = RequestMethod.GET)
	public String loginUser(@RequestParam Map<String,String> params, Model model) {

		return "";
	}
////////////////////////////////////////////
	//예매 정보 받아옴
	@RequestMapping("/reservelist")
	public String reserves(Model model) {
		model.addAttribute("reserves",reserveDao.getReserves());
		return "";
	}
	//예매페이지 폼
	@RequestMapping(value="/createReserve", method = RequestMethod.POST)
	public String createReserve(@RequestParam Map<String,String> params, Model model) {
		reserveDao.createReserves(params.get("title"), params.get("date"), params.get("time"),params.get("theater"));
		model.addAttribute("title", "예매 완료");
		model.addAttribute("reserves", reserveDao.getReserves());
		return "users/reservelist";
	}

	@RequestMapping("/movie1")
	public String movie1(@RequestParam Map<String,String> params, Model model) {
		return "users/movie1";
	}
}

