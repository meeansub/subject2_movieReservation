package com.sublivan.movie.mapper;

import com.sublivan.movie.dto.Schedule;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface ScheduleMapper {

    Schedule getMovieScheduleInfo(@Param("scheduleId") int scheduleId);
}
