package com.example.demoairplanereservation.model.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.Date;

public class ReservationDto {

    private final String seat;
    private final Date reservationDate;
    private final String reservationClass;
    private final String type;
    private final String extra;
    private final String reservationState;
    private final String customerMobile;
    private final String airportName;
    private final String flightCode;

    public ReservationDto(@JsonProperty("seat") String seat, @JsonProperty("date") Date reservationDate,
                          @JsonProperty("class") String reservationClass,@JsonProperty("type") String type,
                          @JsonProperty("extra") String extra, @JsonProperty("state") String reservationState,
                          @JsonProperty("customer-mobile") String customerMobile, @JsonProperty("airport") String airportName,
                          @JsonProperty("flight-code") String flightCode) {
        this.seat = seat;
        this.reservationDate = reservationDate;
        this.reservationClass = reservationClass;
        this.type = type;
        this.extra = extra;
        this.reservationState = reservationState;
        this.customerMobile = customerMobile;
        this.airportName = airportName;
        this.flightCode = flightCode;
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

    public String getCustomerMobile() {
        return customerMobile;
    }

    public String getAirportName() {
        return airportName;
    }

    public String getFlightCode() {
        return flightCode;
    }
}
