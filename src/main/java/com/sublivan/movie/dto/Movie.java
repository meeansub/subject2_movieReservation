package com.sublivan.movie.dto;

import lombok.Data;

import java.util.List;

@Data
public class Movie {

    private int id;
    private String title;
    private int price;
    private String poster;
    private List<Schedule> schedules;
    private ScreenRoom screenRoom;

    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public int getPrice() {
        return price;
    }

    public String getPoster() {
        return poster;
    }

    public List<Schedule> getSchedules() {
        return schedules;
    }

    public ScreenRoom getScreenRoom() {
        return screenRoom;
    }

    @Override
    public String toString() {
        return "Movie{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", price=" + price +
                ", poster='" + poster + '\'' +
                '}';
    }
}
