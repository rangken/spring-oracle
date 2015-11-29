package com.garin.controllers;

import com.garin.dao.MovieDao;
import com.garin.dao.ReserveDao;
import com.garin.models.Movie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
@RequestMapping("/reserves")
public class ReserveController {

    @Autowired
    ReserveDao reserveDao;

    ////////////////////////////////////////////
    //예매 정보 받아옴

    @RequestMapping("")
    public String reserve(@RequestParam Map<String,String> params, Model model){
        return "reserves/reserve";
    }


    @RequestMapping("/list")
    public String reserves(Model model) {
        model.addAttribute("reserves",reserveDao.getReserves());
        return "reserves/reservelist";
    }
    //예매페이지 폼
    @RequestMapping(value="/createReserve", method = RequestMethod.POST)
    public String createReserve(@RequestParam Map<String,String> params, Model model) {
        reserveDao.createReserves(params.get("title"), params.get("date"), params.get("time"),params.get("theater"));
        model.addAttribute("title", "예매 완료");
        model.addAttribute("reserves", reserveDao.getReserves());
        return "reserves/reservelist";
    }
}
