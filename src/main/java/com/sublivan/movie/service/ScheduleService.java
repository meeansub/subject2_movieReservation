package com.sublivan.movie.service;

import ch.qos.logback.classic.Logger;
import com.sublivan.movie.dto.Schedule;
import com.sublivan.movie.mapper.ScheduleMapper;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ScheduleService {
    private final Logger logger = (Logger) LoggerFactory.getLogger(this.getClass());

    @Autowired
    public ScheduleMapper scheduleMapper;

    public List<Schedule> getSchedules() {
        List<Schedule> schedules = scheduleMapper.getSchedules();

        logger.info(schedules.get(0).toString());

        return schedules;
    }


}
