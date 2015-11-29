package com.garin.controllers;

import com.garin.dao.MovieDao;
import com.garin.dao.ReserveDao;
import com.garin.dao.UserDao;
import com.garin.models.Movie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/home")
public class HomeController {

	@Autowired
	MovieDao movieDao;


	@RequestMapping("")
	public String mainhome(@RequestParam Map<String,String> params, Model model) {
		List<Movie> movieList = movieDao.getMovies();
		model.addAttribute("movies", movieList);
		return "home/home";
	}
}

