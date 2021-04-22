package com.sublivan.movie.service;

import com.sublivan.movie.dto.Movie;
import com.sublivan.movie.mapper.MovieMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MovieService {

    @Autowired
    public MovieMapper movieMapper;

    public List<Movie> findAll() {
        return movieMapper.findAll();
    }
}
