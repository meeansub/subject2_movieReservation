package com.sublivan.movie.service;

import ch.qos.logback.classic.Logger;
import com.sublivan.movie.dto.Reservation;
import com.sublivan.movie.dto.Schedule;
import com.sublivan.movie.mapper.ReservationMapper;
import com.sublivan.movie.mapper.ScheduleMapper;
import com.sublivan.movie.vo.ReservedVO;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Service
public class BookService {
    private final Logger logger = (Logger) LoggerFactory.getLogger(this.getClass());

    @Autowired
    public ScheduleMapper scheduleMapper;

    @Autowired
    public ReservationMapper reservationMapper;

    public Schedule getBookMovieScheduleInfo(int scheduleId) {
        Schedule bookMovieScheduleInfo = scheduleMapper.getMovieScheduleInfo(scheduleId);
        logger.info(bookMovieScheduleInfo.toString());

        return bookMovieScheduleInfo;
    }

    public void makeReservation(HttpServletRequest req) {
        Reservation reservation = Reservation.builder()
                .seatNumber(req.getParameter("seatNumber"))
                .totalPrice(Integer.parseInt(req.getParameter("price")))
                .phoneNumber(req.getParameter("phone"))
                .scheduleId(Integer.parseInt(req.getParameter("scheduleId")))
                .movieTitle(req.getParameter("movieTitle"))
                .screenRoom(req.getParameter("screenRoom"))
                .build();


        reservationMapper.insertReservation(reservation);
    }

    public int countReservedSeat(int scheduleId) {
        return reservationMapper.countReserved(scheduleId);
    }

    public List<Reservation> findByPhoneReservedList(String phoneNumber) {
        List<Reservation> reservationList = reservationMapper.findByPhone(phoneNumber);
        logger.info(reservationList.get(0).getMovieTitle());
        return reservationMapper.findByPhone(phoneNumber);
    }



}
