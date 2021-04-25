package com.sublivan.movie.service;

import ch.qos.logback.classic.Logger;
import com.sublivan.movie.dto.Schedule;
import com.sublivan.movie.mapper.ScheduleMapper;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookService {
    private final Logger logger = (Logger) LoggerFactory.getLogger(this.getClass());

    @Autowired
    public ScheduleMapper scheduleMapper;

    public Schedule getBookMovieScheduleInfo(int scheduleId) {
        Schedule bookMovieScheduleInfo = scheduleMapper.getMovieScheduleInfo(scheduleId);
        logger.info(bookMovieScheduleInfo.toString());

        return bookMovieScheduleInfo;
    }


}
