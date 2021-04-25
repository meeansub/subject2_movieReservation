package com.sublivan.movie.controller;

import ch.qos.logback.classic.Logger;
import com.sublivan.movie.dto.Movie;
import com.sublivan.movie.dto.Schedule;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class BookController {
    private final Logger logger = (Logger) LoggerFactory.getLogger(this.getClass());

    @GetMapping("/bookDetail")
    public ModelAndView bookDetail(HttpServletRequest req) {
        ModelAndView mv = new ModelAndView("bookDetail");

        String scheduleId = req.getParameter("scheduleId");

        logger.info(scheduleId);

        return mv;
    }
}
