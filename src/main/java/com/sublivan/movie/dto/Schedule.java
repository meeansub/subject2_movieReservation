package com.sublivan.movie.dto;

import lombok.Data;

import java.sql.Time;
import java.sql.Timestamp;

@Data
public class Schedule {
    private int id;
    private Time time;
    private int movieId;
    private int screenRoomId;

    private Movie movie;
    private ScreenRoom screenRoom;

    public int getId() {
        return id;
    }

    public Time getTime() {
        return time;
    }

    public int getMovieId() {
        return movieId;
    }

    public int getScreenRoomId() {
        return screenRoomId;
    }

    public Movie getMovie() {
        return movie;
    }

    public ScreenRoom getScreenRoom() {
        return screenRoom;
    }

    @Override
    public String toString() {
        return "Schedule{" +
                "id=" + id +
                ", time=" + time +
                ", movieId=" + movieId +
                ", screenRoomId=" + screenRoomId +
                ", movie=" + movie +
                ", screenRoom=" + screenRoom +
                '}';
    }
}
