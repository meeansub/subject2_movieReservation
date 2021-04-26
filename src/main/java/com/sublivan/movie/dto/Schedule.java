package com.sublivan.movie.dto;

import lombok.Data;

import java.sql.Time;
import java.sql.Timestamp;

@Data
public class Schedule {
    private int scheduleId;
    private Time time;
    private int movieId;
    private int screenRoomId;

    private Movie movie;
    private ScreenRoom screenRoom;
}
