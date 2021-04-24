package com.sublivan.movie.mapper;

import com.sublivan.movie.dto.ScreenRoom;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ScreenRoomMapper {
    @Select("SELECT name, seats FROM screenroom")
    public List<ScreenRoom> findAll();
}
