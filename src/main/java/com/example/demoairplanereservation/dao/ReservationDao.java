package com.example.demoairplanereservation.dao;

import com.example.demoairplanereservation.model.Reservation;
import com.example.demoairplanereservation.model.dto.ReservationDto;

import java.util.UUID;

public interface ReservationDao {

    int createReservation(UUID id, ReservationDto reservation);

    UUID getFlightByCode(String flightCode);

    UUID getCustomerByName(String customerName);

    UUID getAirportByName(String airportName);

    default int createReservation(ReservationDto reservation){
        UUID id = UUID.randomUUID();
        return createReservation(id,reservation);
    }
}
