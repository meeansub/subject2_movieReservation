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
}
