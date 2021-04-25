package com.sublivan.movie.controller;

import ch.qos.logback.classic.Logger;
import com.sublivan.movie.dto.Schedule;
import com.sublivan.movie.service.BookService;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/book")
public class BookController {
    private final Logger logger = (Logger) LoggerFactory.getLogger(this.getClass());

    @Autowired
    private BookService bookService;

    @GetMapping("/bookDetail")
    public ModelAndView bookDetail(HttpServletRequest req) {
        ModelAndView mv = new ModelAndView("book/bookDetail");

        int scheduleId = Integer.parseInt(req.getParameter("scheduleId"));
        Schedule bookMovieScheduleInfo = bookService.getBookMovieScheduleInfo(scheduleId);
        mv.addObject("bookMovieInfo", bookMovieScheduleInfo);

        return mv;
    }
}
