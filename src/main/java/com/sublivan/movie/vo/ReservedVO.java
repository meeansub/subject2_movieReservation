package com.sublivan.movie.vo;

import lombok.Builder;
import lombok.Data;

import java.sql.Time;

@Data
public class ReservedVO {
    private int id;
    private String seatNumber;
    private int totalPrice;
    private String phoneNumber;
    private int scheduleId;
    private Time time;
    private String movieTitle;
    private int price;
    private String screenRoom;

    @Builder

    public ReservedVO(int id, String seatNumber, int totalPrice, String phoneNumber, int scheduleId, Time time, String movieTitle, int price, String screenRoom) {
        this.id = id;
        this.seatNumber = seatNumber;
        this.totalPrice = totalPrice;
        this.phoneNumber = phoneNumber;
        this.scheduleId = scheduleId;
        this.time = time;
        this.movieTitle = movieTitle;
        this.price = price;
        this.screenRoom = screenRoom;
    }
}
