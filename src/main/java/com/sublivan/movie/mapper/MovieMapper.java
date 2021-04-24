package com.sublivan.movie.mapper;

import com.sublivan.movie.dto.Movie;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
public interface MovieMapper {

    public List<Movie> findAll();

    public List<Movie> getMovieSchedules();
}
