package com.sublivan.movie.mapper;

import com.sublivan.movie.dto.Schedule;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ScheduleMapper {

    List<Schedule> getSchedules();
}
