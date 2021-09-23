package com.example.demoairplanereservation.service;

import com.example.demoairplanereservation.dao.ReservationDao;
import com.example.demoairplanereservation.model.Reservation;
import com.example.demoairplanereservation.model.dto.ReservationDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class ReservationService {

    // reservation repository
    private final ReservationDao reservationDao;

    @Autowired
    public ReservationService(@Qualifier("reservationRepo") ReservationDao reservationDao) {
        this.reservationDao = reservationDao;
    }


    /**
     * Method to create reservation using reservation repository
     * @param reservation
     * @return (1,0)
     */
    public int createReservation(ReservationDto reservation){
        return reservationDao.createReservation(reservation);
    }
}
