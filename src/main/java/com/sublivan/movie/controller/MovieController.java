package com.sublivan.movie.controller;

import ch.qos.logback.classic.Logger;
import com.sublivan.movie.dto.Movie;
import com.sublivan.movie.service.MovieService;
import com.sublivan.movie.service.ScheduleService;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class MovieController {
    private final Logger logger = (Logger) LoggerFactory.getLogger(this.getClass());

    @Autowired
    public MovieService movieService;

    @GetMapping("/movieSchedule")
    public ModelAndView movieSchedule() {
        ModelAndView mv = new ModelAndView("movieSchedule");

        List<Movie> movieSchedules = movieService.getMovieSchedules();
        mv.addObject("movieSchedules", movieSchedules);

        return mv;
    }

}
