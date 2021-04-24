package com.sublivan.movie.controller;

import com.sublivan.movie.dto.Schedule;
import com.sublivan.movie.service.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class ScheduleController {

//    @Autowired
//    public ScheduleService scheduleService;
//
//    @GetMapping("/movieSchedule")
//    public ModelAndView movieList() {
//        ModelAndView mv = new ModelAndView("movieSchedule");
//
//        List<Schedule> movieOnScreens = scheduleService.getSchedules();
//        mv.addObject("movieOnScreens", movieOnScreens);
//
//        return mv;
//    }
}
