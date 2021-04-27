package com.sublivan.movie.dto;

import lombok.Builder;
import lombok.Data;

import java.sql.Time;

@Data
public class Reservation {
    private int id;
    private String seatNumber;
    private int totalPrice;
    private String phoneNumber;
    private int scheduleId;
    private String movieTitle;
    private String screenroom;

    private Schedule schedule;
    private String time;

    @Builder
    public Reservation(int id, String seatNumber, int totalPrice, String phoneNumber, int scheduleId,
                       String movieTitle, String screenroom, String time) {
        this.id = id;
        this.seatNumber = seatNumber;
        this.totalPrice = totalPrice;
        this.phoneNumber = phoneNumber;
        this.scheduleId = scheduleId;
        this.movieTitle = movieTitle;
        this.screenroom = screenroom;
        this.time = time;
    }
}
