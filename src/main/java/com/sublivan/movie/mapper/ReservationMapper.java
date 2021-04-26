package com.sublivan.movie.mapper;

import com.sublivan.movie.dto.Reservation;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ReservationMapper {
    public void insertReservation(Reservation reservation);

    public int countReserved(@Param("scheduleId") int scheduleId);

    public List<Reservation> findByPhone(@Param("phoneNumber") String phoneNumber);
}
