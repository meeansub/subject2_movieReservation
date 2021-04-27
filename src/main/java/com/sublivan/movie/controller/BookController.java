package com.sublivan.movie.controller;

import ch.qos.logback.classic.Logger;
import com.sublivan.movie.dto.Reservation;
import com.sublivan.movie.dto.Schedule;
import com.sublivan.movie.service.BookService;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

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

        String[] seatMatrix = bookMovieScheduleInfo.getScreenRoom().getSeatMatrix().split("x");

        int row = Integer.parseInt(seatMatrix[0]);
        int col = Integer.parseInt(seatMatrix[1]);

        int remainSeats = bookMovieScheduleInfo.getScreenRoom().getSeats() - bookService.countReservedSeat(bookMovieScheduleInfo.getScheduleId());

        mv.addObject("bookMovieInfo", bookMovieScheduleInfo);
        mv.addObject("remainSeats", remainSeats);
        mv.addObject("seatRow", row);
        mv.addObject("seatCol", col);

        return mv;
    }

    @PostMapping("/createBook")
    public String createBook(HttpServletRequest req) {
        bookService.makeReservation(req);

        return "redirect:/";

    }

    @GetMapping("/bookResult")
    public ModelAndView bookResultView() {
        ModelAndView mv = new ModelAndView("book/bookResult");
        return mv;
    }

    @GetMapping("/bookResultList")
    public ModelAndView bookResult(HttpServletRequest req) {
        ModelAndView mv = new ModelAndView("book/bookResult");
        List<Reservation> reservationList = bookService.findByPhoneReservedList(req.getParameter("phoneNumber"));
        mv.addObject("reservationList", reservationList);
        return mv;
    }
}
