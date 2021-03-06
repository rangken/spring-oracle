package com.garin.controllers;

import com.garin.dao.ReserveDao;
import com.garin.models.Reserve;
import com.garin.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;
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
    public String reserves(Model model, HttpSession session) {
        User user = (User) session.getAttribute("user");
        if (user == null) {
            // 로그인이 안되있음
            return "users/login";
        }
        model.addAttribute("title", "예매 완료");
        List<Reserve> reserves = reserveDao.getReserves(user.id);
        model.addAttribute("reserves", reserves);
        return "reserves/reservelist";
    }
    //예매페이지 폼
    @RequestMapping(value="/createReserve", method = RequestMethod.POST)
    public String createReserve(@RequestParam Map<String,String> params, Model model, HttpSession session) {
        User user = (User) session.getAttribute("user");
        if (user == null) {
            // 로그인이 안되있음
            return "users/login";
        }
        int movie_id = Integer.parseInt(params.get("movie_id"));
        String date = params.get("date");
        String time = params.get("time");
        String theater = params.get("theater");
        reserveDao.createReserves(user.id, movie_id, date, time, theater);
        model.addAttribute("title", "예매 목록");
        List<Reserve> reserves = reserveDao.getReserves(user.id);
        model.addAttribute("reserves", reserves);
        return "redirect:/reserves/list";
    }
}
