package com.sublivan.movie.dto;

import lombok.Data;

@Data
public class ScreenRoom {
    private int id;
    private String name;
    private int seats;

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getSeats() {
        return seats;
    }

    @Override
    public String toString() {
        return "ScreenRoom{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", seats=" + seats +
                '}';
    }
}
