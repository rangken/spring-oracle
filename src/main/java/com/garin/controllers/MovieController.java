package com.garin.controllers;

import com.garin.dao.MovieDao;
import com.garin.models.Movie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
@RequestMapping("/movies")
public class MovieController {

    @Autowired
    MovieDao movieDao;

    @RequestMapping("/{id}")
    public String movie1(@PathVariable("id") Integer id, @RequestParam Map<String,String> params, Model model) {
        Movie movie = movieDao.getMovie(id);
        model.addAttribute("movie", movie);
        return "movies/movie";
    }
}
