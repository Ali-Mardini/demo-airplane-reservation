package com.example.demoairplanereservation.model;

import java.util.Date;
import java.util.UUID;

public class Reservation {
    private final UUID reservationId;
    private final String seat;
    private final Date reservationDate;
    private final String reservationClass;
    private final String type;
    private final String extra;
    private final String reservationState;
    private final UUID customerId;
    private final UUID airportId;
    private final UUID flightId;

    public Reservation(UUID reservationId, String seat, Date reservationDate, String reservationClass, String type,
                       String extra, String reservationState, UUID customerId, UUID airportId, UUID flightId) {
        this.reservationId = reservationId;
        this.seat = seat;
        this.reservationDate = reservationDate;
        this.reservationClass = reservationClass;
        this.type = type;
        this.extra = extra;
        this.reservationState = reservationState;
        this.customerId = customerId;
        this.airportId = airportId;
        this.flightId = flightId;
    }

    public UUID getReservationId() {
        return reservationId;
    }

    public String getSeat() {
        return seat;
    }

    public Date getReservationDate() {
        return reservationDate;
    }

    public String getReservationClass() {
        return reservationClass;
    }

    public String getType() {
        return type;
    }

    public String getExtra() {
        return extra;
    }

    public String getReservationState() {
        return reservationState;
    }

    public UUID getCustomerId() {
        return customerId;
    }

    public UUID getAirportId() {
        return airportId;
    }

    public UUID getFlightId() {
        return flightId;
    }
}
