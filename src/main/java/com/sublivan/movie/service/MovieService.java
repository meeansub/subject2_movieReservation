package com.sublivan.movie.service;

import ch.qos.logback.classic.Logger;
import com.sublivan.movie.dto.Movie;
import com.sublivan.movie.mapper.MovieMapper;
import com.sublivan.movie.utils.FileUtil;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MovieService {
    private final Logger logger = (Logger) LoggerFactory.getLogger(this.getClass());

    @Autowired
    public MovieMapper movieMapper;

    public List<Movie> findAll() {
        List<Movie> movieList = movieMapper.findAll();

        return movieList;
    }
}
